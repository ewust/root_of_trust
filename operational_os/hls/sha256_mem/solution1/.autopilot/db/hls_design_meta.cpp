#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("m_axi_mem_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mem_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mem_AWADDR", 32, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_mem_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mem_AWLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_mem_AWSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_mem_AWBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_mem_AWLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_mem_AWCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_mem_AWPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_mem_AWQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_mem_AWREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_mem_AWUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_mem_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mem_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mem_WDATA", 32, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_mem_WSTRB", 4, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_mem_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_mem_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mem_WUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_mem_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mem_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mem_ARADDR", 32, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_mem_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mem_ARLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_mem_ARSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_mem_ARBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_mem_ARLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_mem_ARCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_mem_ARPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_mem_ARQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_mem_ARREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_mem_ARUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_mem_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mem_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mem_RDATA", 32, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_mem_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_mem_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mem_RUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_mem_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_mem_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mem_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mem_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_mem_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mem_BUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("digest_out_address0", 5, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("digest_out_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("digest_out_we0", 1, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("digest_out_d0", 8, hls_out, 3, "ap_memory", "mem_din", 1),
	Port_Property("digest_out_address1", 5, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("digest_out_ce1", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("digest_out_we1", 1, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("digest_out_d1", 8, hls_out, 3, "ap_memory", "mem_din", 1),
	Port_Property("digest_valid", 1, hls_out, 4, "ap_none", "out_data", 1),
	Port_Property("s_axi_AXILiteS_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_AWADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_ARADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_AXILiteS_BRESP", 2, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "sha256_mem";
