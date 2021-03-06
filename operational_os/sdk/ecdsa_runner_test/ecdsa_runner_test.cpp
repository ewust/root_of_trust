#include "CommunicationToProgram.h"
#include "ed25519.h"
#include "sha512.h"
#include "unistd.h"
#include <sys/syscall.h>
#include <transport/TSocket.h>
#include <transport/TBufferTransports.h>
#include <protocol/TBinaryProtocol.h>
#include "user_mmap_driver.h"
#include <string>
#include <iostream>
#include <fstream>

using namespace apache::thrift;
using namespace apache::thrift::protocol;
using namespace apache::thrift::transport;

#define SECURE_STORAGE_DEV 0xA0050000
#define SECURE_STORAGE_LENGTH 0x1000
#define PRIVATE_OFFSET 0x0
#define PUBLIC_OFFSET 0x40

int main(int argc, char **argv){
  unsigned char seed[32], public_key[32], private_key[64], local_signature[64];
  unsigned char hash_buffer[0x80], hash_out[0x40];
  unsigned char remote_public[32], remote_private[64];
  unsigned char *signature_out, *data, *signed_data;
  int i;
  boost::shared_ptr<TSocket> socket(new TSocket("localhost", 9090));
  boost::shared_ptr<TTransport> transport(new TBufferedTransport(socket));
  boost::shared_ptr<TProtocol> protocol(new TBinaryProtocol(transport));
  shared_memory secure_storage = getSharedMemoryArea(SECURE_STORAGE_DEV, SECURE_STORAGE_LENGTH);
  volatile unsigned int *public_key_storage = (unsigned int*)(((unsigned char*)secure_storage->ptr) + PUBLIC_OFFSET);
  volatile unsigned int *private_key_storage = (unsigned int*)(((unsigned char*)secure_storage->ptr) + PRIVATE_OFFSET);
//   if(syscall(SYS_getrandom, seed, 32, 0) < 0){
//     fprintf(stderr, "Error getting random data. urandom may not be initialized.\n");
//     return -1;
//   }
// /*  srand(0);
//   memset(seed, rand(), 32);*/
//   ed25519_create_keypair(public_key, private_key, seed);
//   for(i=0; i<64/4; i++){
//     private_key_storage[i] = ((unsigned int*)private_key)[i];
//   }
//   for(i=0; i<32/4; i++){
//     public_key_storage[i] = ((unsigned int*)public_key)[i];
//   }
//   if(syscall(SYS_getrandom, seed, 32, 0) < 0){
//     fprintf(stderr, "Error getting random data. urandom may not be initialized.\n");
//     return -1;
//   }
  std::ifstream key_file("../server_key_dev.bin", std::ifstream::binary);
  memset(public_key, 0, 0x20);
  memset(private_key, 0, 0x40);
  if(key_file){
    key_file.seekg(0, std::ios::beg);
    key_file.read((char*)public_key, 0x20);
    key_file.read((char*)private_key, 0x40);
    key_file.close();
  } else{
    printf("File open failed\n");
    return -1;
  }
  printf("Public key from file:\n0x");
  for(i=0; i<0x20; i++){
    printf("%02x", public_key[i]);
  }
  printf("\nPrivate key from file:\n0x");
  for(i=0; i<0x40; i++){
    printf("%02x", private_key[i]);
  }
  printf("\n");
  ed25519_create_keypair(remote_public, remote_private, seed);
  std::string remote_message((char*)remote_public, 32);
  std::string response;
  communication_to_program::CommunicationToProgramClient client(protocol);
  transport->open();
  client.begin_attestation(response, remote_message);
  transport->close();
//  std::cout << "Response: " << response << std::endl;
  printf("Response:\n0x");
  for(i=0; i<response.length(); i++){
    printf("%02x", ((unsigned char*)response.data())[i]);
  }
  printf("\n");
  data = (unsigned char*)response.data();
  signature_out = (unsigned char*)data;
  signed_data = ((unsigned char*)data+0x40);
  printf("Data:\n0x");
  for(i=0; i<0x100; i++){
    printf("%02x", signed_data[i]);
  }
  printf("\n");
  ed25519_sign(local_signature, signed_data, 0x100, public_key, private_key);
  printf("Microblaze signature:\n0x");
  for(i=0; i<64; i++){
    printf("%02x", signature_out[i]);
  }
  printf("\nOur signature:\n0x");
  for(i=0; i<64; i++){
    printf("%02x", local_signature[i]);
  }
  printf("\n");
  if(argc > 1){
    int buffer_index = 0, iteration=0;
    char* filename = argv[1];
    char current_char;
    std::ifstream is((char const*)filename);
    sha512_context context;
    sha512_init(&context);
    while(is.get(current_char)){
      if(buffer_index == 0){
        memset(hash_buffer, 0, 0x80);
      }
      hash_buffer[buffer_index] = (unsigned char)current_char;
      buffer_index++;
      if(buffer_index >= 0x80){
        sha512_update(&context, hash_buffer, 0x80);
        buffer_index=0;
//        printf("Iteration %i\n", iteration);
        iteration++;
      }
    }
    if(buffer_index>0){
      sha512_update(&context, hash_buffer, buffer_index);
    }
    sha512_final(&context, hash_out);
    printf("Microblaze hash:\n0x");
    for(i=0; i<0x40; i++){
      printf("%02x", signed_data[i]);
    }
    printf("\nOur hash:\n0x");
    for(i=0; i<0x40; i++){
      printf("%02x", hash_out[i]);
    }
    printf("\n");
  }
  unsigned char microblaze_ephemeral_public_key[0x20];
  for(i=0; i<0x20; i++){
    microblaze_ephemeral_public_key[i] = signed_data[0x40 + i];
  }
  int valid_signature = ed25519_verify(signature_out, signed_data, 0x100, public_key);
  printf("Valid signature: %i\n", valid_signature);
  unsigned char shared_secret[0x20];
  ed25519_key_exchange(shared_secret, microblaze_ephemeral_public_key, remote_private);
  printf("Our shared secret:\n0x");
  for(i=0; i<0x20; i++){
    printf("%02x", shared_secret[i]);
  }
  printf("\n");
  return 0;
}
