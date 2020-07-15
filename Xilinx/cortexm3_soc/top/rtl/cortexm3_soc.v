`timescale 1ns/1ps
module cortexm3_soc (HCLK, HRESETn);
  parameter RAM_AW = 12;
input HCLK;
input HRESETn;


//signals for component CORTEXM3INTEGRATION
  reg          ISOLATEn;           
  reg          RETAINn;            
  reg          nTRST;              
  reg          SWDITMS;            
  reg          SWCLKTCK;           
  reg          TDI;                
  reg          CDBGPWRUPACK;       
//  reg          PORESETn;           
//  reg          SYSRESETn;          
  reg          RSTBYPASS;          
  reg          CGBYPASS;           
//  reg          FCLK;               
  reg          TRACECLKIN;         
  reg          STCLK;              
  reg   [25:0] STCALIB;            
  reg   [31:0] AUXFAULT;           
  reg          BIGEND;             
  reg  [239:0] INTISR;             
  reg          INTNMI;             
  wire          HREADYI;            
  wire   [31:0] HRDATAI;            
  wire    [1:0] HRESPI;             
  reg          IFLUSH;             
  wire          HREADYD;            
  wire   [31:0] HRDATAD;            
  wire    [1:0] HRESPD;             
  reg          EXRESPD;            
  wire          HREADYS;            
  wire   [31:0] HRDATAS;            
  wire    [1:0] HRESPS;             
  reg          EXRESPS;            
  reg          RXEV;               
  reg          SLEEPHOLDREQn;      
  reg          EDBGRQ;             
  reg          DBGRESTART;         
  reg          FIXMASTERTYPE;      
  reg          WICENREQ;           
  reg [47:0]   TSVALUEB;           
  reg          SE;                 
  reg          MPUDISABLE;         
  reg          DBGEN;              
  reg          NIDEN;              
  reg          DNOTITRANS;         
  wire         TDO;                
  wire         nTDOEN;             
  wire         CDBGPWRUPREQ;       
  wire         SWDO;               
  wire         SWDOEN;             
  wire         JTAGNSW;            
  wire         SWV;                
  wire         TRACECLK;           
  wire   [3:0] TRACEDATA;          
  wire  [31:0] HTMDHADDR;          
  wire   [1:0] HTMDHTRANS;         
  wire   [2:0] HTMDHSIZE;          
  wire   [2:0] HTMDHBURST;         
  wire   [3:0] HTMDHPROT;          
  wire  [31:0] HTMDHWDATA;         
  wire         HTMDHWRITE;         
  wire  [31:0] HTMDHRDATA;         
  wire         HTMDHREADY;         
  wire   [1:0] HTMDHRESP;          
  wire   [1:0] HTRANSI;            
  wire   [2:0] HSIZEI;             
  wire  [31:0] HADDRI;             
  wire   [2:0] HBURSTI;            
  wire   [3:0] HPROTI;             
  wire   [1:0] MEMATTRI;           
  wire   [1:0] HMASTERD;           
  wire   [1:0] HTRANSD;            
  wire   [2:0] HSIZED;             
  wire  [31:0] HADDRD;             
  wire   [2:0] HBURSTD;            
  wire   [3:0] HPROTD;             
  wire   [1:0] MEMATTRD;           
  wire         EXREQD;             
  wire         HWRITED;            
  wire  [31:0] HWDATAD;            
  wire   [1:0] HMASTERS;           
  wire   [1:0] HTRANSS;            
  wire         HWRITES;            
  wire   [2:0] HSIZES;             
  wire         HMASTLOCKS;         
  wire  [31:0] HADDRS;             
  wire  [31:0] HWDATAS;            
  wire   [2:0] HBURSTS;            
  wire   [3:0] HPROTS;             
  wire   [1:0] MEMATTRS;           
  wire         EXREQS;             
  wire   [3:0] BRCHSTAT;           
  wire         HALTED;             
  wire         DBGRESTARTED;       
  wire         LOCKUP;             
  wire         SLEEPING;           
  wire         SLEEPDEEP;          
  wire         SLEEPHOLDACKn;      
  wire   [8:0] ETMINTNUM;          
  wire   [2:0] ETMINTSTAT;         
  wire         TRCENA;             
  wire   [7:0] CURRPRI;            
  wire         SYSRESETREQ;        
  wire         TXEV;               
  wire         GATEHCLK;           
  wire         WICENACK;           
  wire         WAKEUP;             


//signals for component cm3_matrix_lite 
  reg [3:0] REMAP;
  wire [31:0] HADDRS0;
  wire [1:0] HTRANSS0;
  wire HWRITES0;
  wire [2:0] HSIZES0;
  wire [2:0] HBURSTS0;
  wire [3:0] HPROTS0;
  wire [31:0] HWDATAS0;
  wire HMASTLOCKS0;
  wire [31:0] HAUSERS0;
  wire [31:0] HWUSERS0;
  wire [31:0] HADDRS1;
  wire [1:0] HTRANSS1;
  wire HWRITES1;
  wire [2:0] HSIZES1;
  wire [2:0] HBURSTS1;
  wire [3:0] HPROTS1;
  wire [31:0] HWDATAS1;
  wire HMASTLOCKS1;
  wire [31:0] HAUSERS1;
  wire [31:0] HWUSERS1;
  wire [31:0] HADDRS3;
  wire [1:0] HTRANSS3;
  wire HWRITES3;
  wire [2:0] HSIZES3;
  wire [2:0] HBURSTS3;
  wire [3:0] HPROTS3;
  wire [31:0] HWDATAS3;
  wire HMASTLOCKS3;
  wire [31:0] HAUSERS3;
  wire [31:0] HWUSERS3;
  reg [31:0] HADDRS4;
  reg [1:0] HTRANSS4;
  reg HWRITES4;
  reg [2:0] HSIZES4;
  reg [2:0] HBURSTS4;
  reg [3:0] HPROTS4;
  reg [31:0] HWDATAS4;
  reg HMASTLOCKS4;
  reg [31:0] HAUSERS4;
  reg [31:0] HWUSERS4;
  reg [31:0] HADDRS5;
  reg [1:0] HTRANSS5;
  reg HWRITES5;
  reg [2:0] HSIZES5;
  reg [2:0] HBURSTS5;
  reg [3:0] HPROTS5;
  reg [31:0] HWDATAS5;
  reg HMASTLOCKS5;
  reg [31:0] HAUSERS5;
  reg [31:0] HWUSERS5;
  wire [31:0] HRDATAM0;
  wire HREADYOUTM0;
  wire HRESPM0;
  reg [31:0] HRUSERM0;
  reg [31:0] HRDATAM1;
  reg HREADYOUTM1;
  reg HRESPM1;
  reg [31:0] HRUSERM1;
  reg [31:0] HRDATAM2;
  reg HREADYOUTM2;
  reg HRESPM2;
  reg [31:0] HRUSERM2;
  wire [31:0] HRDATAM3;
  wire HREADYOUTM3;
  wire HRESPM3;
  reg [31:0] HRUSERM3;
  reg SCANENABLE;
  reg SCANINHCLK;
  wire HSELM0;
  wire [31:0] HADDRM0;
  wire [1:0] HTRANSM0;
  wire HWRITEM0;
  wire [2:0] HSIZEM0;
  wire [2:0] HBURSTM0;
  wire [3:0] HPROTM0;
  wire [31:0] HWDATAM0;
  wire HMASTLOCKM0;
  wire HREADYMUXM0;
  wire [31:0] HAUSERM0;
  wire [31:0] HWUSERM0;
  wire HSELM1;
  wire [31:0] HADDRM1;
  wire [1:0] HTRANSM1;
  wire HWRITEM1;
  wire [2:0] HSIZEM1;
  wire [2:0] HBURSTM1;
  wire [3:0] HPROTM1;
  wire [31:0] HWDATAM1;
  wire HMASTLOCKM1;
  wire HREADYMUXM1;
  wire [31:0] HAUSERM1;
  wire [31:0] HWUSERM1;
  wire HSELM2;
  wire [31:0] HADDRM2;
  wire [1:0] HTRANSM2;
  wire HWRITEM2;
  wire [2:0] HSIZEM2;
  wire [2:0] HBURSTM2;
  wire [3:0] HPROTM2;
  wire [31:0] HWDATAM2;
  wire HMASTLOCKM2;
  wire HREADYMUXM2;
  wire [31:0] HAUSERM2;
  wire [31:0] HWUSERM2;
  wire HSELM3;
  wire [31:0] HADDRM3;
  wire [1:0] HTRANSM3;
  wire HWRITEM3;
  wire [2:0] HSIZEM3;
  wire [2:0] HBURSTM3;
  wire [3:0] HPROTM3;
  wire [31:0] HWDATAM3;
  wire HMASTLOCKM3;
  wire HREADYMUXM3;
  wire [31:0] HAUSERM3;
  wire [31:0] HWUSERM3;
  wire [31:0] HRDATAS0;
  wire HREADYS0;
  wire HRESPS0;
  wire [31:0] HRUSERS0;
  wire [31:0] HRDATAS1;
  wire HREADYS1;
  wire HRESPS1;
  wire [31:0] HRUSERS1;
  wire [31:0] HRDATAS3;
  wire HREADYS3;
  wire HRESPS3;
  wire [31:0] HRUSERS3;
  wire [31:0] HRDATAS4;
  wire HREADYS4;
  wire HRESPS4;
  wire [31:0] HRUSERS4;
  wire [31:0] HRDATAS5;
  wire HREADYS5;
  wire HRESPS5;
  wire [31:0] HRUSERS5;
  wire SCANOUTHCLK;

//signals for component cmsdk_ahb_to_sram A
  wire            HCLK_SRAMA;
  wire            HRESETn_SRAMA;
  wire            HSEL_SRAMA;
  wire            HREADY_SRAMA;
  wire      [1:0] HTRANS_SRAMA;
  wire      [2:0] HSIZE_SRAMA;
  wire            HWRITE_SRAMA;
  wire   [RAM_AW-1:0] HADDR_SRAMA;
  wire     [31:0] HWDATA_SRAMA;
  wire     [31:0] SRAMRDATA_SRAMA; //was reg
  wire           HREADYOUT_SRAMA;
  wire           HRESP_SRAMA;
  wire    [31:0] HRDATA_SRAMA;
  wire  [RAM_AW-3:0] SRAMADDR_SRAMA;
  wire     [3:0] SRAMWEN_SRAMA;
  wire    [31:0] SRAMWDATA_SRAMA;
  wire           SRAMCS_SRAMA;

//signals for SRAM A
  wire  CLK_SRAMA;
  wire  [RAM_AW-1:0] ADDR_SRAMA;
  wire  [31:0]   WDATA_SRAMA;
  wire  [3:0]    WREN_SRAMA;
  wire  CS_SRAMA;
  wire [31:0]   RDATA_SRAMA;

//signals for component cmsdk_ahb_to_sram S
  wire            HCLK_SRAMS;
  wire            HRESETn_SRAMS;
  wire            HSEL_SRAMS;
  wire            HREADY_SRAMS;
  wire      [1:0] HTRANS_SRAMS;
  wire      [2:0] HSIZE_SRAMS;
  wire            HWRITE_SRAMS;
  wire   [RAM_AW-1:0] HADDR_SRAMS;
  wire     [31:0] HWDATA_SRAMS;
  wire     [31:0] SRAMRDATA_SRAMS; //was reg
  wire           HREADYOUT_SRAMS;
  wire           HRESP_SRAMS;
  wire    [31:0] HRDATA_SRAMS;
  wire  [RAM_AW-3:0] SRAMADDR_SRAMS;
  wire     [3:0] SRAMWEN_SRAMS;
  wire    [31:0] SRAMWDATA_SRAMS;
  wire           SRAMCS_SRAMS;

//signals for SRAM S
  wire  CLK_SRAMS;
  wire  [RAM_AW-1:0] ADDR_SRAMS;
  wire  [31:0]   WDATA_SRAMS;
  wire  [3:0]    WREN_SRAMS;
  wire  CS_SRAMS;
  wire [31:0]   RDATA_SRAMS;


initial begin
//cmsdk_ahb_to_sram SRAM A
//HCLK_SRAMA = 0;
//HRESETn_SRAMA = 0;
//HSEL_SRAMA = 0;
//HREADY_SRAMA = 0;
//HTRANS_SRAMA = 0;
//HSIZE_SRAMA = 0;
//HWRITE_SRAMA = 0;
//HADDR_SRAMA = 0;
//HWDATA_SRAMA = 0;
//SRAMRDATA_SRAMA = 0;

//cmsdk_fpga_sram SRAM A
//CLK_SRAMA = 0;
//ADDR_SRAMA = 0;
//WDATA_SRAMA = 0;
//WREN_SRAMA = 0;
//CS_SRAMA = 0;


ISOLATEn = 1;
RETAINn = 1;
nTRST = 1'b1;
SWDITMS = 0;
SWCLKTCK = 0;
TDI = 0;
CDBGPWRUPACK = 0;
//PORESETn = 0;
//SYSRESETn = 0;
RSTBYPASS = 0;
CGBYPASS = 0;
//FCLK = 0;
TRACECLKIN = 0;
STCLK = 0;
STCALIB = 0;
AUXFAULT = 0;
BIGEND = 0;
INTISR = 0;
INTNMI = 0;
//HREADYI = 0;
//HRDATAI = 0;
//HRESPI = 0;
IFLUSH = 0;
//HREADYD = 0;
//HRDATAD = 0;
//HRESPD = 0;
EXRESPD = 0;
//HREADYS = 0;
//HRDATAS = 0;
//HRESPS = 0;
EXRESPS = 0;
RXEV = 0;
SLEEPHOLDREQn = 1;
EDBGRQ = 0;
DBGRESTART = 0;
FIXMASTERTYPE = 0;
WICENREQ = 0;
TSVALUEB = 0;
SE = 0;
MPUDISABLE = 0;
DBGEN = 0;
NIDEN = 0;
DNOTITRANS = 0;

//Bus Matrix input signal initialization.
REMAP = 0;
//HADDRS0 = 0;
//HTRANSS0 = 0;
//HWRITES0 = 0;
//HSIZES0 = 0;
//HBURSTS0 = 0;
//HPROTS0 = 0;
//HWDATAS0 = 0;
//HMASTLOCKS0 = 0;
//HAUSERS0 = 0;
//HWUSERS0 = 0;
//HADDRS1 = 0;
//HTRANSS1 = 0;
//HWRITES1 = 0;
//HSIZES1 = 0;
//HBURSTS1 = 0;
//HPROTS1 = 0;
//HWDATAS1 = 0;
//HMASTLOCKS1 = 0;
//HAUSERS1 = 0;
//HWUSERS1 = 0;
//HADDRS3 = 0;
//HTRANSS3 = 0;
//HWRITES3 = 0;
//HSIZES3 = 0;
//HBURSTS3 = 0;
//HPROTS3 = 0;
//HWDATAS3 = 0;
//HMASTLOCKS3 = 0;
//HAUSERS3 = 0;
//HWUSERS3 = 0;
HADDRS4 = 0;
HTRANSS4 = 0;
HWRITES4 = 0;
HSIZES4 = 0;
HBURSTS4 = 0;
HPROTS4 = 0;
HWDATAS4 = 0;
HMASTLOCKS4 = 0;
HAUSERS4 = 0;
HWUSERS4 = 0;
HADDRS5 = 0;
HTRANSS5 = 0;
HWRITES5 = 0;
HSIZES5 = 0;
HBURSTS5 = 0;
HPROTS5 = 0;
HWDATAS5 = 0;
HMASTLOCKS5 = 0;
HAUSERS5 = 0;
HWUSERS5 = 0;
//HRDATAM0 = 0;
//HREADYOUTM0 = 0;
//HRESPM0 = 0;
HRUSERM0 = 0;
HRDATAM1 = 0;
HREADYOUTM1 = 1;
HRESPM1 = 0;
HRUSERM1 = 0;
HRDATAM2 = 0;
HREADYOUTM2 = 1;
HRESPM2 = 0;
HRUSERM2 = 0;
//HRDATAM3 = 0;
//HREADYOUTM3 = 1;
//HRESPM3 = 0;
HRUSERM3 = 0;
SCANENABLE = 0;
SCANINHCLK = 0;
end



//assign map for FPGA SRAMA
assign CLK_SRAMA     = HCLK;
assign ADDR_SRAMA    = SRAMADDR_SRAMA;
assign WDATA_SRAMA   = SRAMWDATA_SRAMA;
assign WREN_SRAMA    = SRAMWEN_SRAMA;
assign CS_SRAMA      = SRAMCS_SRAMA;

//port map
cmsdk_fpga_sram #(.AW(RAM_AW)) cmsdk_fpga_sram_A (
.CLK(CLK_SRAMA),
.ADDR(ADDR_SRAMA),
.WDATA(WDATA_SRAMA),
.WREN(WREN_SRAMA),
.CS(CS_SRAMA),
.RDATA(RDATA_SRAMA)
);
//assign map for SRAMA
assign HCLK_SRAMA       = HCLK;
assign HRESETn_SRAMA    = HRESETn;
assign SRAMRDATA_SRAMA  = RDATA_SRAMA;
assign HSEL_SRAMA       = HSELM0;
assign HREADY_SRAMA     = HREADYMUXM0;
assign HTRANS_SRAMA     = HTRANSM0;
assign HSIZE_SRAMA      = HSIZEM0;
assign HWRITE_SRAMA     = HWRITEM0;
assign HADDR_SRAMA      = HADDRM0;
assign HWDATA_SRAMA     = HWDATAM0;
//port map
cmsdk_ahb_to_sram #(.AW(RAM_AW)) cmsdk_ahb_to_sram_A (
.HCLK(HCLK_SRAMA),
.HRESETn(HRESETn_SRAMA),
.HSEL(HSEL_SRAMA),
.HREADY(HREADY_SRAMA),
.HTRANS(HTRANS_SRAMA),
.HSIZE(HSIZE_SRAMA),
.HWRITE(HWRITE_SRAMA),
.HADDR(HADDR_SRAMA),
.HWDATA(HWDATA_SRAMA),
.HREADYOUT(HREADYOUT_SRAMA),
.HRESP(HRESP_SRAMA),
.HRDATA(HRDATA_SRAMA),
.SRAMRDATA(SRAMRDATA_SRAMA),
.SRAMADDR(SRAMADDR_SRAMA),
.SRAMWEN(SRAMWEN_SRAMA),
.SRAMWDATA(SRAMWDATA_SRAMA),
.SRAMCS(SRAMCS_SRAMA)
);



//assign map for FPGA SRAMS //system SRAM, where the processor stack will be
assign CLK_SRAMS     = HCLK;
assign ADDR_SRAMS    = SRAMADDR_SRAMS;
assign WDATA_SRAMS   = SRAMWDATA_SRAMS;
assign WREN_SRAMS    = SRAMWEN_SRAMS;
assign CS_SRAMS      = SRAMCS_SRAMS;

//port map
cmsdk_fpga_sram #(.AW(RAM_AW)) cmsdk_fpga_sram_S (
.CLK(CLK_SRAMS),
.ADDR(ADDR_SRAMS),
.WDATA(WDATA_SRAMS),
.WREN(WREN_SRAMS),
.CS(CS_SRAMS),
.RDATA(RDATA_SRAMS)
);
//assign map for SRAMS
assign HCLK_SRAMS       = HCLK;
assign HRESETn_SRAMS    = HRESETn;
assign SRAMRDATA_SRAMS  = RDATA_SRAMS;
assign HSEL_SRAMS       = HSELM3;
assign HREADY_SRAMS     = HREADYMUXM3;
assign HTRANS_SRAMS     = HTRANSM3;
assign HSIZE_SRAMS      = HSIZEM3;
assign HWRITE_SRAMS     = HWRITEM3;
assign HADDR_SRAMS      = HADDRM3;
assign HWDATA_SRAMS     = HWDATAM3;
//port map
cmsdk_ahb_to_sram #(.AW(RAM_AW)) cmsdk_ahb_to_sram_S (
.HCLK(HCLK_SRAMS),
.HRESETn(HRESETn_SRAMS),
.HSEL(HSEL_SRAMS),
.HREADY(HREADY_SRAMS),
.HTRANS(HTRANS_SRAMS),
.HSIZE(HSIZE_SRAMS),
.HWRITE(HWRITE_SRAMS),
.HADDR(HADDR_SRAMS),
.HWDATA(HWDATA_SRAMS),
.HREADYOUT(HREADYOUT_SRAMS),
.HRESP(HRESP_SRAMS),
.HRDATA(HRDATA_SRAMS),
.SRAMRDATA(SRAMRDATA_SRAMS),
.SRAMADDR(SRAMADDR_SRAMS),
.SRAMWEN(SRAMWEN_SRAMS),
.SRAMWDATA(SRAMWDATA_SRAMS),
.SRAMCS(SRAMCS_SRAMS)
);


//assign map for CM3
assign HREADYOUTM0 = HREADYOUT_SRAMA;
assign HRDATAM0    = SRAMRDATA_SRAMA;
assign HRESPM0     = HRESP_SRAMA;
assign HREADYI     = HREADYS0;
assign HRDATAI     = HRDATAS0;
assign HRESPI      = HRESPS0;

assign HREADYD     = HREADYS1;
assign HRDATAD     = HRDATAS1;
assign HRESPD      = HRESPS1;

assign HREADYOUTM3 = HREADYOUT_SRAMS;
assign HRDATAM3    = SRAMRDATA_SRAMS;
assign HRESPM3     = HRESP_SRAMS;
assign HREADYS     = HREADYS3; //fixit, fixme S3 should bd S2
assign HRDATAS     = HRDATAS3;
assign HRESPS      = HRESPS3;
//port map
CORTEXM3INTEGRATIONDS CORTEXM3INTEGRATIONDS_i0 (
.ISOLATEn(ISOLATEn),
.RETAINn(RETAINn),
.nTRST(nTRST),
.SWDITMS(SWDITMS),
.SWCLKTCK(SWCLKTCK),
.TDI(TDI),
.CDBGPWRUPACK(CDBGPWRUPACK),
.PORESETn(PORESETn),
.SYSRESETn(SYSRESETn),
.RSTBYPASS(RSTBYPASS),
.CGBYPASS(CGBYPASS),
.FCLK(FCLK),
.HCLK(HCLK),
.TRACECLKIN(TRACECLKIN),
.STCLK(STCLK),
.STCALIB(STCALIB),
.AUXFAULT(AUXFAULT),
.BIGEND(BIGEND),
.INTISR(INTISR),
.INTNMI(INTNMI),
.HREADYI(HREADYI),
.HRDATAI(HRDATAI),
.HRESPI(HRESPI),
.IFLUSH(IFLUSH),
.HREADYD(HREADYD),
.HRDATAD(HRDATAD),
.HRESPD(HRESPD),
.EXRESPD(EXRESPD),
.HREADYS(HREADYS),
.HRDATAS(HRDATAS),
.HRESPS(HRESPS),
.EXRESPS(EXRESPS),
.RXEV(RXEV),
.SLEEPHOLDREQn(SLEEPHOLDREQn),
.EDBGRQ(EDBGRQ),
.DBGRESTART(DBGRESTART),
.FIXMASTERTYPE(FIXMASTERTYPE),
.WICENREQ(WICENREQ),
.TSVALUEB(TSVALUEB),
.SE(SE),
.MPUDISABLE(MPUDISABLE),
.DBGEN(DBGEN),
.NIDEN(NIDEN),
.DNOTITRANS(DNOTITRANS),
.TDO(TDO),
.nTDOEN(nTDOEN),
.CDBGPWRUPREQ(CDBGPWRUPREQ),
.SWDO(SWDO),
.SWDOEN(SWDOEN),
.JTAGNSW(JTAGNSW),
.SWV(SWV),
.TRACECLK(TRACECLK),
.TRACEDATA(TRACEDATA),
.HTMDHADDR(HTMDHADDR),
.HTMDHTRANS(HTMDHTRANS),
.HTMDHSIZE(HTMDHSIZE),
.HTMDHBURST(HTMDHBURST),
.HTMDHPROT(HTMDHPROT),
.HTMDHWDATA(HTMDHWDATA),
.HTMDHWRITE(HTMDHWRITE),
.HTMDHRDATA(HTMDHRDATA),
.HTMDHREADY(HTMDHREADY),
.HTMDHRESP(HTMDHRESP),
.HTRANSI(HTRANSI),
.HSIZEI(HSIZEI),
.HADDRI(HADDRI),
.HBURSTI(HBURSTI),
.HPROTI(HPROTI),
.MEMATTRI(MEMATTRI),
.HMASTERD(HMASTERD),
.HTRANSD(HTRANSD),
.HSIZED(HSIZED),
.HADDRD(HADDRD),
.HBURSTD(HBURSTD),
.HPROTD(HPROTD),
.MEMATTRD(MEMATTRD),
.EXREQD(EXREQD),
.HWRITED(HWRITED),
.HWDATAD(HWDATAD),
.HMASTERS(HMASTERS),
.HTRANSS(HTRANSS),
.HWRITES(HWRITES),
.HSIZES(HSIZES),
.HMASTLOCKS(HMASTLOCKS),
.HADDRS(HADDRS),
.HWDATAS(HWDATAS),
.HBURSTS(HBURSTS),
.HPROTS(HPROTS),
.MEMATTRS(MEMATTRS),
.EXREQS(EXREQS),
.BRCHSTAT(BRCHSTAT),
.HALTED(HALTED),
.DBGRESTARTED(DBGRESTARTED),
.LOCKUP(LOCKUP),
.SLEEPING(SLEEPING),
.SLEEPDEEP(SLEEPDEEP),
.SLEEPHOLDACKn(SLEEPHOLDACKn),
.ETMINTNUM(ETMINTNUM),
.ETMINTSTAT(ETMINTSTAT),
.TRCENA(TRCENA),
.CURRPRI(CURRPRI),
.SYSRESETREQ(SYSRESETREQ),
.TXEV(TXEV),
.GATEHCLK(GATEHCLK),
.WICENACK(WICENACK),
.WAKEUP(WAKEUP)
);

//port map
cm3_matrix_lite cm3_matrix_lite (
.HCLK(HCLK),
.HRESETn(HRESETn),
.REMAP(REMAP),
.HADDRS0(HADDRS0),
.HTRANSS0(HTRANSS0),
.HWRITES0(HWRITES0),
.HSIZES0(HSIZES0),
.HBURSTS0(HBURSTS0),
.HPROTS0(HPROTS0),
.HWDATAS0(HWDATAS0),
.HMASTLOCKS0(HMASTLOCKS0),
.HAUSERS0(HAUSERS0),
.HWUSERS0(HWUSERS0),
.HADDRS1(HADDRS1),
.HTRANSS1(HTRANSS1),
.HWRITES1(HWRITES1),
.HSIZES1(HSIZES1),
.HBURSTS1(HBURSTS1),
.HPROTS1(HPROTS1),
.HWDATAS1(HWDATAS1),
.HMASTLOCKS1(HMASTLOCKS1),
.HAUSERS1(HAUSERS1),
.HWUSERS1(HWUSERS1),
.HADDRS3(HADDRS3),
.HTRANSS3(HTRANSS3),
.HWRITES3(HWRITES3),
.HSIZES3(HSIZES3),
.HBURSTS3(HBURSTS3),
.HPROTS3(HPROTS3),
.HWDATAS3(HWDATAS3),
.HMASTLOCKS3(HMASTLOCKS3),
.HAUSERS3(HAUSERS3),
.HWUSERS3(HWUSERS3),
.HADDRS4(HADDRS4),
.HTRANSS4(HTRANSS4),
.HWRITES4(HWRITES4),
.HSIZES4(HSIZES4),
.HBURSTS4(HBURSTS4),
.HPROTS4(HPROTS4),
.HWDATAS4(HWDATAS4),
.HMASTLOCKS4(HMASTLOCKS4),
.HAUSERS4(HAUSERS4),
.HWUSERS4(HWUSERS4),
.HADDRS5(HADDRS5),
.HTRANSS5(HTRANSS5),
.HWRITES5(HWRITES5),
.HSIZES5(HSIZES5),
.HBURSTS5(HBURSTS5),
.HPROTS5(HPROTS5),
.HWDATAS5(HWDATAS5),
.HMASTLOCKS5(HMASTLOCKS5),
.HAUSERS5(HAUSERS5),
.HWUSERS5(HWUSERS5),
.HRDATAM0(HRDATAM0),
.HREADYOUTM0(HREADYOUTM0),
.HRESPM0(HRESPM0),
.HRUSERM0(HRUSERM0),
.HRDATAM1(HRDATAM1),
.HREADYOUTM1(HREADYOUTM1),
.HRESPM1(HRESPM1),
.HRUSERM1(HRUSERM1),
.HRDATAM2(HRDATAM2),
.HREADYOUTM2(HREADYOUTM2),
.HRESPM2(HRESPM2),
.HRUSERM2(HRUSERM2),
.HRDATAM3(HRDATAM3),
.HREADYOUTM3(HREADYOUTM3),
.HRESPM3(HRESPM3),
.HRUSERM3(HRUSERM3),
.SCANENABLE(SCANENABLE),
.SCANINHCLK(SCANINHCLK),
.HSELM0(HSELM0),
.HADDRM0(HADDRM0),
.HTRANSM0(HTRANSM0),
.HWRITEM0(HWRITEM0),
.HSIZEM0(HSIZEM0),
.HBURSTM0(HBURSTM0),
.HPROTM0(HPROTM0),
.HWDATAM0(HWDATAM0),
.HMASTLOCKM0(HMASTLOCKM0),
.HREADYMUXM0(HREADYMUXM0),
.HAUSERM0(HAUSERM0),
.HWUSERM0(HWUSERM0),
.HSELM1(HSELM1),
.HADDRM1(HADDRM1),
.HTRANSM1(HTRANSM1),
.HWRITEM1(HWRITEM1),
.HSIZEM1(HSIZEM1),
.HBURSTM1(HBURSTM1),
.HPROTM1(HPROTM1),
.HWDATAM1(HWDATAM1),
.HMASTLOCKM1(HMASTLOCKM1),
.HREADYMUXM1(HREADYMUXM1),
.HAUSERM1(HAUSERM1),
.HWUSERM1(HWUSERM1),
.HSELM2(HSELM2),
.HADDRM2(HADDRM2),
.HTRANSM2(HTRANSM2),
.HWRITEM2(HWRITEM2),
.HSIZEM2(HSIZEM2),
.HBURSTM2(HBURSTM2),
.HPROTM2(HPROTM2),
.HWDATAM2(HWDATAM2),
.HMASTLOCKM2(HMASTLOCKM2),
.HREADYMUXM2(HREADYMUXM2),
.HAUSERM2(HAUSERM2),
.HWUSERM2(HWUSERM2),
.HSELM3(HSELM3),
.HADDRM3(HADDRM3),
.HTRANSM3(HTRANSM3),
.HWRITEM3(HWRITEM3),
.HSIZEM3(HSIZEM3),
.HBURSTM3(HBURSTM3),
.HPROTM3(HPROTM3),
.HWDATAM3(HWDATAM3),
.HMASTLOCKM3(HMASTLOCKM3),
.HREADYMUXM3(HREADYMUXM3),
.HAUSERM3(HAUSERM3),
.HWUSERM3(HWUSERM3),
.HRDATAS0(HRDATAS0),
.HREADYS0(HREADYS0),
.HRESPS0(HRESPS0),
.HRUSERS0(HRUSERS0),
.HRDATAS1(HRDATAS1),
.HREADYS1(HREADYS1),
.HRESPS1(HRESPS1),
.HRUSERS1(HRUSERS1),
.HRDATAS3(HRDATAS3),
.HREADYS3(HREADYS3),
.HRESPS3(HRESPS3),
.HRUSERS3(HRUSERS3),
.HRDATAS4(HRDATAS4),
.HREADYS4(HREADYS4),
.HRESPS4(HRESPS4),
.HRUSERS4(HRUSERS4),
.HRDATAS5(HRDATAS5),
.HREADYS5(HREADYS5),
.HRESPS5(HRESPS5),
.HRUSERS5(HRUSERS5),
.SCANOUTHCLK(SCANOUTHCLK)
);

//Clks & Resets
assign SYSRESETn = HRESETn; //Temp TBD, for now map to HRESETn          
assign PORESETn  = HRESETn; //Temp TBD, for now map to HRESETn
assign FCLK      = HCLK; //Temp TBD, for now map to HCLK

//Bus-Matrix S0 input Mapping to ICODE
assign HADDRS0     = HADDRI; //ICODE to S0
assign HTRANSS0    = HTRANSI; //ICODE to S0
assign HWRITES0    = 1'b0; //ICODE bus is readonly
assign HSIZES0     = HSIZEI;
assign HBURSTS0    = HBURSTI;
assign HPROTS0     = HPROTI;
assign HWDATAS0    = 32'h00000000;//ICODE Is WRite only bus
assign HMASTLOCKS0 = 0; //no bit band region between 0x0000_0000 and 0x1FFF_FFFF
assign HAUSERS0    = 0;
assign HWUSERS0    = 0;

//Bus-Matrix S1 input Mapping to DCODE
assign HADDRS1     = HADDRD; //DCODE to S1
assign HTRANSS1    = HTRANSD; //DCODE to S1
assign HWRITES1    = HWRITED;
assign HSIZES1     = HSIZED;
assign HBURSTS1    = HBURSTD;
assign HPROTS1     = HPROTD;
assign HWDATAS1    = HWDATAD;
assign HMASTLOCKS1 = 0; //no bit band region between 0x0000_0000 and 0x1FFF_FFFF
assign HAUSERS1    = 0;
assign HWUSERS1    = 0;

//Bus-Matrix S3 input Mapping to SYSTEM BUS TBD, fixit, should be S2
assign HADDRS3     = HADDRS;
assign HTRANSS3    = HTRANSS;
assign HWRITES3    = HWRITES;
assign HSIZES3     = HSIZES;
assign HBURSTS3    = HBURSTS;
assign HPROTS3     = HPROTS;
assign HWDATAS3    = HWDATAS;
assign HMASTLOCKS3 = 0; //no bit band region between 0x2000_0000 and 0x2FFF_FFFF
assign HAUSERS3    = 0;
assign HWUSERS3    = 0;

endmodule
