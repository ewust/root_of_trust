// This autogenerated skeleton file illustrates how to build a server.
// You should copy it to another filename to avoid overwriting it.

#include "RemoteAttestationDemo.h"
#include <thrift/protocol/TBinaryProtocol.h>
#include <thrift/server/TSimpleServer.h>
#include <thrift/transport/TServerSocket.h>
#include <thrift/transport/TBufferTransports.h>

#include "remote_attestation_demo_arm.h"

using namespace ::apache::thrift;
using namespace ::apache::thrift::protocol;
using namespace ::apache::thrift::transport;
using namespace ::apache::thrift::server;

using boost::shared_ptr;

using namespace  ::remote_attestation_demo;

class RemoteAttestationDemoHandler : virtual public RemoteAttestationDemoIf {
 public:
  RemoteAttestationDemoHandler() {
    // Your initialization goes here
  }

  void begin_attestation(std::string& _return, const std::string& remote_message) {
    int i;
    // Your implementation goes here
    printf("begin_attestation\n");
    //TODO: get message buffer size from arm header
    unsigned char message_out[256];
    start_attestation((unsigned char*)(remote_message.data()), message_out);
    _return.assign((char*)(message_out), 256);
  }

  bool check_message() {
    // Your implementation goes here
    printf("check_message\n");
    return true;
  }

  void get_message(std::string& _return) {
    // Your implementation goes here
    //TODO: get message buffer size from arm header
    unsigned char message_buffer[256];
    unsigned int message_length;
    generate_encrypted_message(message_buffer, &message_length);
    _return.assign((char*)message_buffer, message_length);
    printf("get_message\n");
  }

};

int main(int argc, char **argv) {
  int port = 9090;
  shared_ptr<RemoteAttestationDemoHandler> handler(new RemoteAttestationDemoHandler());
  shared_ptr<TProcessor> processor(new RemoteAttestationDemoProcessor(handler));
  shared_ptr<TServerTransport> serverTransport(new TServerSocket(port));
  shared_ptr<TTransportFactory> transportFactory(new TBufferedTransportFactory());
  shared_ptr<TProtocolFactory> protocolFactory(new TBinaryProtocolFactory());

  TSimpleServer server(processor, serverTransport, transportFactory, protocolFactory);
  server.serve();
  return 0;
}
