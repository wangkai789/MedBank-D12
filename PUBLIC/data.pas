unit data;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,IniFiles,StdCtrls,Menus,Buttons,ComCtrls, DBAccess, Uni,
  UniProvider, SQLServerUniProvider, MemDS,cxGridDBTableView,cxEdit,cxDropDownEdit,cxCheckBox,ExtCtrls;
  
type
  TSysInfo = record
    face:string;
    explain:string;
    StoreCondition:string;
    CheckConclusion:string;
    certify:string;
    storeA:String;
    storeB:String;
    storeC:String;
    storeD:String;
    safekeep:string;
    purchase:string;
    accountant:string;
    AdditionRateMed:string;
    AdditionRateCMed:string;
    AdditionRate:string;
    yfbm:string;
    yfmc:string;
    hospitalName:string;
    HospitalYBCode:string; //医保代码
    OpidYBCode:string; //医保代码
    medlb:string;   //药品默认类别
    SalesPriceFlag:boolean;  //入库零售价修改标记 0不能修改 1修改
    DefRateMed:string;//默认药品加成率
    OutPatRipPrint:integer;//门诊处方单 0不打印 1直接打印 2预览打印
    OutPatSendPrint:integer;   //门诊发药单 0不打印 1直接打印 2预览打印
    InPatRipPrint:integer; //住院处方单 0不打印 1直接打印 2预览打印
    InPatSendPrint:integer;   //住院发药单  0不打印 1直接打印 2预览打印
    InPatSendkind:integer; //1全部发药 2除大输液
    mzfyprint:integer ;
    zyfyprint:integer ;
    wardfyprint:integer;

 end;

 type
  Txyzb=record
    ypbh:string;
    ym:string;
    pym:string;
    lsm:string;
    zlbm:smallint;
    zlm:string;
    gf:smallint;
    jxbm:smallint;
    jx:string;
    gg:string;
    zxdw:string;
    hsb:integer;
    jldw:string;
    pfj:currency;
    ypj:currency;
    ylsj:currency;
    bm:string;
    ywm:string;
    lb:smallint;
    lbm:string;
    ddd:integer;
    jjyp:boolean;
    cfhsb:integer;
    cfzxdw:string;
    ifzy:boolean;
    selfyp:string;
    oper_date:tdatetime;
    operbh:integer;
    up_date:tdatetime;
    upbh:smallint;
    skintry:smallint;
    atype:smallint;
    Inp_Place:string;
    Outp_Place:string;
    bank_place:string;
    xnhbm:string;
    xnhkind:string;
    xnhbl:real;
    ybbm:string;
    ybkind:string;
    lbA:string;
    lbB:string;
    produce:string;
    cjbm:integer;
    basic:boolean;
    basicProvince:boolean;
    StoreType:STRING;
    mzylsj:currency;
    dosage:Currency;
    checklb:integer;
    checklbm:string;
    barcode:string;
    ypkind:byte;
    pwh:string;
    ybbm_country:string;
    ybmc_country:string;
    ybremark:string;
    groupbuy:boolean;
end;

type
  Tdm = class(TDataModule)
    DS_comm: TDataSource;
    DS_MedStore: TDataSource;
    DS_public: TDataSource;
    DS_public1: TDataSource;
    Ds_tyygs: TDataSource;
    DS_public2: TDataSource;
    DS_xyzb: TDataSource;
    DS_song: TDataSource;
    DS_sumrk: TDataSource;
    DS_sumck1: TDataSource;
    DS_sumck2: TDataSource;
    DS_sumck3: TDataSource;
    DS_kcun: TDataSource;
    DS_use: TDataSource;
    DS_cx: TDataSource;
    DS_tj: TDataSource;
    DS_ks: TDataSource;
    DS_master: TDataSource;
    DS_detail: TDataSource;
    DS_MXYZB: TDataSource;
    Ds_comm1: TDataSource;
    ds_zb2: TDataSource;
    ds_zd: TDataSource;
    DS_yp: TDataSource;
    DS_qldb: TDataSource;
    DS_rktemp: TDataSource;
    Ds_sell: TDataSource;
    ds_kcl: TDataSource;
    sqlsrvrnprvdr1: TSQLServerUniProvider;
    con1: TUniConnection;
    Q_comm: TUniQuery;
    Q_public1: TUniQuery;
    Q_public2: TUniQuery;
    Q_comm1: TUniQuery;
    Q_use: TUniQuery;
    Q_xyzb: TUniQuery;
    Q_song: TUniQuery;
    Q_sumrk: TUniQuery;
    Q_kcun: TUniQuery;
    Q_master: TUniQuery;
    Q_sumck1: TUniQuery;
    Q_sumck2: TUniQuery;
    Q_sumck3: TUniQuery;
    Q_MXYZB: TUniQuery;
    Q_MedStore: TUniQuery;
    Q_ks: TUniQuery;
    q_zb2: TUniQuery;
    Q_detail: TUniQuery;
    Q_cx: TUniQuery;
    Q_sell: TUniQuery;
    q_zd: TUniQuery;
    Q_rktemp: TUniQuery;
    Q_qldb: TUniQuery;
    qry_yp: TUniQuery;
    q_kcl: TUniQuery;
    Q_inbank: TUniQuery;
    Q_public: TUniQuery;
    Q_tj: TUniQuery;
    Q_tyygs: TUniQuery;
    DS_inbank: TDataSource;
    UpdateSQL_Outbank: TUniUpdateSQL;
    UpdateSQL1: TUniUpdateSQL;
    UpdateSQL: TUniUpdateSQL;
    ds_qrcfview1: TDataSource;
    ds_qrcfview2: TDataSource;
    ds_qrcfview3: TDataSource;
    qrcfview3: TUniQuery;
    qrcfview2: TUniQuery;
    qrcfview1: TUniQuery;
    DS_RipTitle: TDataSource;
    Q_RipTitle: TUniQuery;
    ds_temp: TDataSource;
    q_temp: TUniQuery;
    Q_OUT: TUniQuery;
    DS_yzzl: TDataSource;
    Q_yzzl: TUniQuery;
    DS_yztemp: TDataSource;
    Q_yztemp: TUniQuery;
    DS_ksby: TDataSource;
    Q_ksby: TUniQuery;
    DS_cfcx: TDataSource;
    Q_cfcx: TUniQuery;
    DS_fybq: TDataSource;
    Q_fybq: TUniQuery;
    DS_SendMedDetail: TDataSource;
    Q_SendMedDetail: TUniQuery;
    DS_FY: TDataSource;
    Qry_fy: TUniQuery;
    DS_mm: TDataSource;
    Q_mm: TUniQuery;
    qrcfview4: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
  private

    { Private declarations }

  public
    { Public declarations }
    FMainPath:STRING;
    FIniPath:string;
    FIniFile:string;
    Fopid:string;
    Fksbm:integer;
    FopidName:string;
    Flevel:integer;
    FSq:integer;
    Fver:string;
    sysinfo:TSysInfo;
    function SaveToIniFile_String(FileName, Section, Indent, Vaule: string):Boolean;
    function LoadFromIniFile_String(FileName, Section, Indent, Default: string):string;
    function SaveToIniFile_Integer(FileName, Section, Indent: string; Vaule:Integer): Boolean;
    function LoadFromIniFile_Integer(FileName, Section, Indent: string; Default:integer): integer;
    function SaveToIniFile_Boolean(FileName, Section, Indent: string; Vaule:Boolean): Boolean;
    function LoadFromIniFile_Boolean(FileName, Section, Indent: string; Default:Boolean): Boolean;
    function listProduce(pym:string):TDataSource;
    function SearchMedLog(datefrom,dateto:tdatetime):TDataSource;
    function searchkc(query:Tuniquery;ypbh:string;var ykkc:currency;var mzkc:currency ;var zykc:currency):boolean;
    procedure UpdateMed(Medinfo:Txyzb;opid:string);
    function  AddMed(Medinfo:Txyzb;opid:string):boolean;
    procedure AddMedLog(opid,opidname,Msg:string);
    procedure PrintInBankInfo(lsh,year,month:integer);
    procedure PrintCancelInBankInfo(lsh,year,month:integer);
    function  AddMedBackInfo(ypbh: string): boolean;
    function  SearchQlTemp(deptid, opid: integer):boolean;
    function  SearchdepQlTemp(opid:integer):boolean;
    procedure SetStoreValue(MyComboBox: TComboBox);

    procedure SetAdditionRateValue(MyComboBox: TComboBox);
    procedure UpdateInBankInfo(lsh:integer;InbankDate:tdatetime);
    function  SearchInBankInfo(lsh:integer;InbankDate:tdatetime):TDataSource;
    function  CheckOutBankStatus(lsh:integer;InbankDate:tdatetime):boolean;
    procedure CancelInBankInfo(lsh: integer; InbankDate: tdatetime;opid:integer);
    function  UpdateSupply(lsh,id:integer):boolean;
    function  UpdateProduce(lsh,id:integer):boolean;
    function  listSupply(pym:string):TDataSource;
    function  SetCmbxValue(aComboBox:TComboBox;Sqlstr:string;aCount:integer):boolean;
    function  SetStringsValue(aStrings:Tstrings;Sqlstr:string):boolean;
    function Inital_SystemData:Boolean;
    function Save_SystemData():Boolean;
    function  System_sq(myform:TForm;sq,level:integer):boolean;
    procedure getData(col:TcxGridDBColumn;val:string);
    function InitGrid(kind:byte;fn:string;cxgrdbtblvw:TcxGridDBTableView):integer;
    function  GetComboxIndex(Source:tcombobox;Compstr:string):integer;
    function  GetComboxValue(Source:tcombobox;substr:string;front:boolean):string;      //true取值:之前索引 false取:之后的值
    function  GetRadioGroupValue(MyRadioGroup:TRadioGroup;substr:string;front:boolean):string;      //true取值:之前索引 false取:之后的值
  end;

var
  dm: Tdm;
implementation

uses reportform,UGirdPara,factory;

{$R *.DFM}
function Tdm.AddMed(Medinfo: Txyzb; opid: string):boolean;
begin
  result:=false;
 with dm.Q_PUBLIC do
  begin
    close;
    sql.Clear;
    //sql.Add('exec  MedBank_AddMed  :ypbh,:ym,:pym,:lsm,:zlbm,:zlm,:gf,:jxbm ,:jx,:gg,:zxdw,:hsb,:jldw,:pfj,:ypj,:ylsj,:mzylsj,:bm,:ywm');
    //sql.Add(',:lb ,:lbm,:ddd,:jjyp ,:cfhsb ,:cfzxdw ,:ifzy,:selfyp ,:oper_date,:operbh,:up_date,:upbh');
    //sql.Add(',:skintry,:type,:Inp_Place ,:Outp_Place ,:bank_place ,:xnhbm,:xnhkind,:xnhbl ,:ybbm,:ybkind');
    //sql.Add(',:lbA,:lbB ,:produce,:basic,:cjbm,:storetype,:dosage,:checklb,:checklbm,:barcode,:ypkind,:pwh,:basicProvince,:groupbuy');
    sql.Add('insert xyzb  ');
    sql.Add('(ypbh,ym,pym,lsm,zlbm,zlm,jxbm,jx,gg,zxdw,hsb,jldw,pfj,ypj,ylsj');
    sql.Add(',mzylsj,bm,ywm,lb,lbm,ddd,jjyp,cfhsb,cfzxdw,ifzy,selfyp');
    sql.Add(',oper_date,operbh,skintry,type,Inp_Place,Outp_Place,bank_place');
    sql.Add(',produce,basic,cjbm,dosage,checklb,checklbm,barcode,ypkind,pwh,basicProvince,groupbuy,gf)');
    sql.Add('select                                                              ');
    sql.Add(' :ypbh,:ym,:pym,:lsm,:zlbm,:zlm,:jxbm,:jx,:gg,:zxdw,:hsb,:jldw,:pfj,:ypj,:ylsj');
    sql.Add(',:mzylsj,:bm,:ywm,:lb,:lbm,:ddd,:jjyp,:cfhsb,:cfzxdw,:ifzy,:selfyp');
    sql.Add(',:oper_date,:operbh,:skintry,:type,:Inp_Place,:Outp_Place,:bank_place ');
    sql.Add(',:produce,:basic,:cjbm,:dosage,:checklb,:checklbm,:barcode,:ypkind,:pwh,:basicProvince,:groupbuy,0');
    try
      parambyname('ypbh').AsString:=trim(Medinfo.ypbh);
      parambyname('ym').AsString:=trim(Medinfo.ym);
      parambyname('pym').AsString:=trim(Medinfo.pym);
      parambyname('lsm').AsString:=trim(Medinfo.lsm);
      parambyname('zlbm').asinteger:=Medinfo.zlbm;
      parambyname('zlm').AsString:=trim(Medinfo.zlm);
      //parambyname('gf').assmallint:=Medinfo.gf;
      parambyname('jxbm').assmallint:=Medinfo.jxbm;
      parambyname('jx').AsString:=trim(Medinfo.jx);
      parambyname('gg').AsString:=trim(Medinfo.gg);
      parambyname('zxdw').AsString:=trim(Medinfo.zxdw);
      parambyname('hsb').asinteger:=Medinfo.hsb;
      parambyname('jldw').AsString:=trim(Medinfo.jldw);
      parambyname('pfj').ascurrency:=Medinfo.pfj;
      parambyname('ypj').ascurrency:=Medinfo.ypj;
      parambyname('ylsj').ascurrency:=Medinfo.ylsj;
      parambyname('mzylsj').ascurrency:=Medinfo.mzylsj;
      parambyname('bm').AsString:=trim(Medinfo.bm);
      parambyname('ywm').AsString:=trim(Medinfo.ywm);
      parambyname('lb').asinteger:=Medinfo.lb;
      parambyname('lbm').AsString:=trim(Medinfo.lbm);
      parambyname('ddd').asinteger:=Medinfo.ddd;
      parambyname('jjyp').asboolean:=Medinfo.jjyp;
      parambyname('cfhsb').asinteger:=Medinfo.cfhsb;
      parambyname('cfzxdw').AsString:=trim(Medinfo.cfzxdw);
      parambyname('ifzy').asboolean:=Medinfo.ifzy;
      parambyname('selfyp').AsString:=trim(Medinfo.selfyp);
      parambyname('oper_date').asdatetime:=Medinfo.oper_date;
      parambyname('operbh').asinteger:=Medinfo.operbh;
      //parambyname('up_date').asdatetime:=Medinfo.up_date;
      //parambyname('upbh').asinteger:=Medinfo.upbh;
      parambyname('skintry').asinteger:=Medinfo.skintry;
      parambyname('type').asinteger:=Medinfo.atype;
      parambyname('Inp_Place').AsString:=trim(Medinfo.Inp_Place);
      parambyname('Outp_Place').AsString:=trim(Medinfo.Outp_Place);
      parambyname('bank_place').AsString:=trim(Medinfo.bank_place);
      //parambyname('xnhbm').AsString:=Medinfo.xnhbm;
      //parambyname('xnhkind').AsString:=trim(Medinfo.xnhkind);
      //parambyname('xnhbl').ascurrency:=Medinfo.xnhbl;
      //parambyname('ybbm').AsString:=trim(Medinfo.ybbm);
      //parambyname('ybkind').AsString:=trim(Medinfo.ybkind);
      //parambyname('lbA').AsString:=trim(Medinfo.lbA);
      //parambyname('lbB').AsString:=trim(Medinfo.lbB);
      parambyname('produce').AsString:=trim(Medinfo.produce);
      parambyname('basic').asboolean:=Medinfo.basic;
      parambyname('cjbm').AsInteger:=Medinfo.cjbm;
      //parambyname('storetype').asstring:=Medinfo.StoreType;
      parambyname('dosage').AsCurrency:=Medinfo.dosage;
      parambyname('checklb').asinteger:=Medinfo.checklb;
      parambyname('checklbm').asstring:=Medinfo.checklbm;
      parambyname('barcode').asstring:=Medinfo.barcode;
      parambyname('ypkind').AsSmallint:=Medinfo.ypkind;
      parambyname('pwh').asstring:=Medinfo.pwh;
      parambyname('basicProvince').AsBoolean :=Medinfo.basicProvince;
      parambyname('groupbuy').AsBoolean :=Medinfo.groupbuy;
      ExecSQL;
      Application.MessageBox('新增药品成功。','提示',0);
      result:=true;
    except
       on E: Exception do MEssageDlg(e.Message, mterror, [mbok], 0);
    end;
  end;
end;

function Tdm.AddMedBackInfo(ypbh: string): boolean;
begin
  result:=false;
  with dm.Q_comm do
   begin
     close;
     sql.clear;
     sql.add('exec proc_yktk_ypadd :ypbh');
     parambyname('ypbh').asstring:=trim(ypbh);
     try
       ExecSQL;
       result:=true;
     except
       exit;
     end;
   end;

end;

procedure Tdm.AddMedLog(opid, opidname, Msg: string);
begin
  with dm.Q_public do
 begin
   close;
   sql.Clear;
   sql.add('insert into MedUpdateLog(opid,name,up_date,content) select :opid,:name,getdate(),:content');
   parambyname('opid').asstring:=opid;
   parambyname('name').asstring:=opidname;
   parambyname('content').asstring:=Msg;
   ExecSQL;
 end;
end;

procedure Tdm.CancelInBankInfo(lsh: integer; InbankDate: tdatetime;
  opid: integer);
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('exec MedBank_InbankCancel :lsh,:inbankdate,:opid');
    parambyname('lsh').asinteger:=lsh;
    parambyname('inbankdate').asdatetime:=InbankDate;
    ParamByName('opid').asinteger:=opid;
    try
      ExecSQL;
      application.messagebox('作废成功！','提示',48);
    except
      application.messagebox('作废出错,请重试！','提示',48);
    end;
  end;
end;

function Tdm.CheckOutBankStatus(lsh: integer;
  InbankDate: tdatetime): boolean;
begin
   with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('if (select top 1 rkxh from xykchu  where rkxh in (select rkxh  from xykr  where lsh=:lsh and datediff(month,rkrq,:InbankDate)=0)) is not  null ');
    sql.add('select outbank=1 else select outbank=0 ');
    parambyname('lsh').asinteger:=lsh;
    parambyname('inbankdate').asdatetime:=InbankDate;
    try
      open;
      result:=q_comm.fieldbyname('outbank').AsVariant;
    except
      application.messagebox('检查入库单状态出错！','提示',48);
    end;
  end;
end;


function Tdm.Inital_SystemData: Boolean;
var ainifile:string;
begin

   dm.sysinfo.face:=dm.LoadFromIniFile_String(FIniFile, 'RK', 'face', '');
   dm.sysinfo.explain :=dm.LoadFromIniFile_String(FIniFile, 'RK', 'explain', '');
   dm.sysinfo.StoreCondition:=dm.LoadFromIniFile_String(FIniFile, 'RK', 'StoreCondition', '');
   dm.sysinfo.CheckConclusion:=dm.LoadFromIniFile_String(FIniFile, 'RK', 'CheckConclusion', '');
   dm.sysinfo.certify:=dm.LoadFromIniFile_String(FIniFile, 'RK', 'certify', '');
   dm.sysinfo.storeA:=dm.LoadFromIniFile_String(FIniFile, 'storetype', 'storeA',dm.sysinfo.storeA);
   dm.sysinfo.storeB:=dm.LoadFromIniFile_String(FIniFile, 'storetype', 'storeB',dm.sysinfo.storeB);
   dm.sysinfo.storeC:=dm.LoadFromIniFile_String(FIniFile, 'storetype', 'storeC',dm.sysinfo.storeC);
   dm.sysinfo.storeD:=dm.LoadFromIniFile_String(FIniFile, 'storetype', 'storeD',dm.sysinfo.storeD);
   dm.sysinfo.safekeep :=dm.LoadFromIniFile_String(FIniFile, 'USER', 'safekeep',dm.sysinfo.safekeep);
   dm.sysinfo.purchase :=dm.LoadFromIniFile_String(FIniFile, 'USER', 'purchase',dm.sysinfo.purchase);
   dm.sysinfo.accountant:=dm.LoadFromIniFile_String(FIniFile, 'USER', 'accountant',dm.sysinfo.accountant);
   dm.sysinfo.AdditionRateMed :=dm.LoadFromIniFile_String(FIniFile, 'AdditionRate', 'AdditionRateMed',dm.sysinfo.AdditionRateMed);
   dm.sysinfo.AdditionRatecMed:=dm.LoadFromIniFile_String(FIniFile, 'AdditionRate', 'AdditionRatecMed',dm.sysinfo.AdditionRatecMed);
   dm.sysinfo.AdditionRate:=dm.LoadFromIniFile_String(FIniFile, 'AdditionRate', 'AdditionRate',dm.sysinfo.AdditionRate);
   dm.sysinfo.yfbm:=dm.LoadFromIniFile_String(FIniFile, 'storetype', 'yfbm',sysinfo.yfbm);
   dm.sysinfo.yfmc:=dm.LoadFromIniFile_String(FIniFile, 'storetype', 'yfmc',sysinfo.yfmc);
   dm.sysinfo.medlb:=dm.LoadFromIniFile_String(FIniFile, 'storetype', 'medlb',sysinfo.medlb);

   //--入库零售价修改标记
   dm.sysinfo.SalesPriceFlag:=dm.LoadFromIniFile_boolean(FIniFile, 'AdditionRate', 'SalesPriceFlag',dm.sysinfo.SalesPriceFlag);
   //-默认加成率
   dm.sysinfo.DefRateMed:=dm.LoadFromIniFile_String(FIniFile, 'AdditionRate', 'DefRateMed',dm.sysinfo.DefRateMed);

   dm.Sysinfo.OutPatRipPrint:= LoadFromIniFile_Integer(FIniFile , 'PrintSet', 'OutPatRipPrint',1);
   dm.Sysinfo.OutPatSendPrint:= LoadFromIniFile_Integer(FIniFile, 'PrintSet', 'OutPatSendPrint',1);
   dm.Sysinfo.InPatRipPrint:= LoadFromIniFile_Integer(FIniFile , 'PrintSet', 'InPatRipPrint',1);
   dm.Sysinfo.InPatSendPrint:= LoadFromIniFile_Integer(FIniFile, 'PrintSet', 'InPatSendPrint',1);
   dm.Sysinfo.InPatSendKind:= LoadFromIniFile_Integer(FIniFile, 'PrintSet', 'InPatSendKind',1);
end;

function Tdm.listProduce(pym: string): TDataSource;
begin
  with dm.Q_use do
   begin
     close;
     sql.Clear;
     sql.Add('select 代码=cjbm,名称=cm from sccj where pym like :pym and ifzy=1 order by cjbm');
     parambyname('pym').AsString:='%'+pym+'%';
     open;
     if not isempty then result:=dm.DS_use else result:=nil;
   end;
end;

function Tdm.listSupply(pym: string): TDataSource;
begin
   with dm.Q_use do
   begin
     close;
     sql.Clear;
     sql.Add('select 代码=inc_code,名称=inc_name from  ghdw where inc_call like :pym and ifzy=1 order by inc_code');
     parambyname('pym').AsString:='%'+pym+'%';
     open;
     if not isempty then result:=dm.DS_use else result:=nil;
   end;
end;


function Tdm.LoadFromIniFile_Boolean(FileName, Section, Indent: string;Default: Boolean): Boolean;
var
  TmpIniFile: TIniFile;
begin

  Result := Default;
  TmpiniFile := TIniFile.Create(FileName);
  try
    Result := TmpiniFile.ReadBool(Section, Indent, Default);
  finally
    TmpiniFile.free;
  end;

end;

function Tdm.LoadFromIniFile_Integer(FileName, Section, Indent: string;Default: integer): integer;
var
  TmpIniFile: TIniFile;
begin
  Result := Default;
  if FileExists(FileName) then
  begin
    TmpiniFile := TIniFile.Create(FileName);
    try
      Result := TmpiniFile.ReadInteger(Section, Indent, Default);
    finally
      TmpiniFile.free;
    end;
  end;
end;


function Tdm.LoadFromIniFile_String(FileName, Section, Indent,  Default: string): string;
var    TmpIniFile: TIniFile;
begin
  Result := Default;
  if FileExists(FileName) then
  begin
    TmpiniFile := TIniFile.Create(FileName);
    try
      Result := TmpiniFile.ReadString(Section, Indent, Default);
    finally
      TmpiniFile.free;
    end;
  end; 
  if Result = '' then    Result := Default;
end;


procedure Tdm.PrintCancelInBankInfo(lsh, year, month: integer);
begin
  with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select a.*,b.inc_name,b.bank,b.account,lsze=xy_j_je+cy_je+zcy_j_je,zs=a.zcy_j_fp_zs+a.xy_j_fp_zs+a.cy_fp_zs,plce=isnull(a.plce,0),ze=isnull(a.ze,0) ');
  sql.add('from xykr_zf_tzd a,ghdw b where a.ghdw=b.inc_code and a.lsh=:lsh and month(a.rkdate)=:mmonth and year(a.rkdate)=:myear');    
  parambyname('lsh').asinteger:=lsh;
  parambyname('myear').asinteger:=year;
  parambyname('mmonth').asinteger:=month;
  open;
end;
with dm.q_public do
begin
  close;
  sql.clear;
  sql.add('select 药品编号=a.ypbh,药名=b.ym,规格=b.gg,计量单位=a.jldw,入库数量=a.rksl,零售价=a.lsj,金额=a.rksl*a.lsj,gre=a.jhj*a.rksl,');
  sql.add('a.cgy,a.fhr,a.rkrq,c.inc_name from xykr_zf a,xyzb b,ghdw c where c.inc_code=a.ghdw and a.ypbh=b.ypbh and a.lsh=:lsh and month(a.rkrq)=:mmonth and year(a.rkrq)=:myear ');   //datediff(month,rkdate,getdate())=0
  parambyname('lsh').asinteger:=lsh;
  parambyname('myear').asinteger:=year;
  parambyname('mmonth').asinteger:=month;
  open;
  if  isempty then
  begin
    application.MessageBox('此入库号没有作废,请重新输入入库号!','提示',0);
    exit;
  end else
  begin
    //Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '\ykreport\入库单.frf');
    //Fm_report.frReport1.ShowReport;
  end;
end;
end;

procedure Tdm.PrintInBankInfo(lsh, year, month: integer);
begin
    with dm.q_comm do
    begin
      close;
      sql.clear;
      sql.add('select a.*,b.inc_name,b.bank,b.account,lsze=xy_j_je+cy_je+zcy_j_je,zs=a.zcy_j_fp_zs+a.xy_j_fp_zs+a.cy_fp_zs,plce=isnull(a.plce,0),ze=isnull(a.ze,0) ');
      sql.add('from xykr_tzd a,ghdw b where a.ghdw=b.inc_code and a.lsh=:lsh and month(a.rkdate)=:mmonth and year(a.rkdate)=:myear');    
      parambyname('lsh').asinteger:=Lsh;
      parambyname('myear').asinteger:=year;
      parambyname('mmonth').asinteger:=month;
      open;
    end;
    with dm.q_public do
    begin
      close;
      sql.clear;
      sql.add('select a.ypbh,b.ym,b.gg,a.jldw,a.rksl,a.jhj,a.lsj,');
      sql.add('RpAmt=a.rksl*a.jhj,SpAmt=a.rksl*a.lsj,gre=a.jhj*a.rksl,');
      sql.add('a.cgy,a.fhr,a.rkrq,c.inc_name,a.produce,a.ypph,a.sxrq,');
      sql.add('opidName=(select xm from zgzb b where a.opid=b.bh)');
      sql.add('from xykr a,xyzb b,ghdw c');
      sql.add('where c.inc_code=a.ghdw and a.ypbh=b.ypbh ');
      sql.add('and a.lsh=:lsh and month(a.rkrq)=:mmonth and year(a.rkrq)=:myear ');
      parambyname('lsh').asinteger:=Lsh;
      parambyname('myear').asinteger:=year;
      parambyname('mmonth').asinteger:=month;
      open;
      if recordcount=0 then
      begin
        application.MessageBox('此入库号作废或不是本月入库号,请重新输入入库号!','提示',0);
        exit;
      end    else
      begin
       //Fm_report.frReport1.clear;
       //Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\入库单.frf');
       //Fm_report.frReport1.ShowReport;
      end;
    end;
end;

function Tdm.SaveToIniFile_Boolean(FileName, Section, Indent: string;Vaule: Boolean): Boolean;
var
  TmpIniFile: TIniFile;
begin
  Result := False;
  try
    TmpiniFile := TIniFile.Create(FileName);
    try
      TmpiniFile.WriteBool(Section, Indent, Vaule);
    finally
      TmpiniFile.Free;
    end;
    result := True;
  except
  end;
end;

function Tdm.SaveToIniFile_Integer(FileName, Section, Indent: string;Vaule: Integer): Boolean;
var
  TmpIniFile: TIniFile;
begin
  Result := False;
  try
    TmpiniFile := TIniFile.Create(FileName);
    try
      TmpiniFile.WriteInteger(Section, Indent, Vaule);
    finally
      TmpiniFile.Free;
    end;
    Result := True;
  except
  end;
end;

function Tdm.SaveToIniFile_String(FileName, Section, Indent,  Vaule: string): Boolean;
var   TmpIniFile: TIniFile;
begin
  Result := False;
  try
    result := True;
    TmpiniFile := TIniFile.Create(FileName);
    try
      TmpiniFile.WriteString(Section, Indent, Vaule);
    finally
      TmpiniFile.Free;
    end;
    Result := True;
  except
  end;
end;

function Tdm.Save_SystemData: Boolean;
begin
  //---字体配置信息
  //SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'Font', 'Font_Name', Sysinfo.Font_Name);
  //SaveToIniFile_Integer(FMainPath + 'HisYk_Console.ini', 'Font', 'Font_Size', Sysinfo.Font_Size);
  //SaveToIniFile_Integer(FMainPath + 'HisYk_Console.ini', 'Font', 'Font_Color', Sysinfo.Font_Color);
   //--基本参数配置----
  SaveToIniFile_String(FIniFile, 'storetype', 'storeA', Sysinfo.storeA);
  SaveToIniFile_String(FIniFile, 'storetype', 'yfbm', Sysinfo.yfbm);
  SaveToIniFile_String(FIniFile, 'storetype', 'yfmc', Sysinfo.yfmc);

  SaveToIniFile_String(FIniFile, 'USER', 'safekeep', Sysinfo.safekeep);
  SaveToIniFile_String(FIniFile, 'USER', 'purchase', Sysinfo.purchase);
  SaveToIniFile_String(FIniFile, 'USER', 'accountant', Sysinfo.accountant);
  //--西药中成药
  SaveToIniFile_String(FIniFile, 'AdditionRate', 'AdditionRateMed', Sysinfo.AdditionRateMed);
  //--中草药
  SaveToIniFile_String(FIniFile, 'AdditionRate', 'AdditionRatecMed', Sysinfo.AdditionRatecMed);
  //入库零售价修改0 不能修改 1修改
  SaveToIniFile_Boolean(FIniFile, 'AdditionRate', 'SalesPriceFlag', Sysinfo.SalesPriceFlag);
  //入库零售价修改0 不能修改 1修改
  SaveToIniFile_String(FIniFile, 'AdditionRate', 'DefRateMed', Sysinfo.DefRateMed);

  SaveToIniFile_Integer(FIniFile, 'PrintSet', 'OutPatRipPrint', Sysinfo.OutPatRipPrint);
  SaveToIniFile_Integer(FIniFile, 'PrintSet', 'OutPatSendPrint', Sysinfo.OutPatSendPrint);
  SaveToIniFile_Integer(FIniFile, 'PrintSet', 'InPatRipPrint', Sysinfo.InPatRipPrint);
  SaveToIniFile_Integer(FIniFile, 'PrintSet', 'InPatSendPrint', Sysinfo.InPatSendPrint);
  SaveToIniFile_Integer(FIniFile, 'PrintSet', 'InPatSendKind', Sysinfo.InPatSendKind);



end;

function Tdm.SearchInBankInfo(lsh: integer;InbankDate: tdatetime): TDataSource;
begin
   with q_mxyzb do
  begin
    close;
    sql.Clear;
    sql.Add('select a.lsh,a.rkxh,a.ypbh,b.ym,b.gg,a.jhj,a.lsj,a.rksl,zje=rksl*a.lsj,rkje=rksl*a.pfj,cje=(a.lsj-a.pfj)*rksl,c.inc_name,cm,rkrq,a.jldw');
    sql.Add(' from xykr a,xyzb b ,ghdw c,sccj d');
    sql.Add(' where a.ypbh=b.ypbh');
    sql.Add('  and a.ghdw=c.inc_code');
    sql.Add('  and a.cjbm=d.cjbm');
    sql.Add('  and a.lsh=:lsh');
    sql.Add('  and datediff(month,rkrq,:InbankDate)=0');

    parambyname('lsh').asinteger:=lsh;
    parambyname('InbankDate').asdatetime:=InbankDate;
    open;
    if not IsEmpty then  result:=dm.DS_mxyzb ELSE  result:=NIL;
  end;
end;

function Tdm.searchkc(query: Tuniquery; ypbh: string; var ykkc, mzkc,
  zykc: currency): boolean;
begin
  with query do
  begin
    close;
    sql.clear;
    sql.add('select');
    sql.add('ykkc=(select sum(b.kcl) From xykr a,xykcun b where a.rkxh=b.rkxh and b.ypbh=:ypbh ),');
    sql.add('mzkc=(select SUM(kcl) From nkyc where ypbh=:ypbh and ksbm=503),');
    sql.add('zykc=(select SUM(kcl) From nkyc where ypbh=:ypbh and ksbm=502)');

    ParamByName('ypbh').AsString:=ypbh;
    open;
    ykkc:=fieldbyname('ykkc').ascurrency;
    mzkc:=fieldbyname('mzkc').ascurrency;
    zykc:=fieldbyname('zykc').ascurrency;
    result:=True;
  end;
end;

function Tdm.SearchMedLog(datefrom, dateto: tdatetime): TDataSource;
begin
   with dm.Q_public do
 begin
   close;
   sql.Clear;
   sql.add('select * from MedUpdateLog where datediff(day,up_date,:datefrom)<=0 and datediff(day,up_date,:dateto)>=0');
   parambyname('datefrom').asdatetime:=datefrom;
   parambyname('dateto').asdatetime:=dateto;
   open;
   if not isempty then result:=dm.DS_public else result:=nil;
 end;
end;

function Tdm.SearchQlTemp(deptid, opid: integer): boolean;
begin
  {Result := False;
   with dm.Q_song do
   begin
     close;
     sql.Clear;
     sql.Add('select a.ypbh,b.ym,b.gg,a.qll,b.jldw,b.zxdw,je=round(a.qll*b.ylsj,2),a.qll,produce');
     sql.Add('from  qldb_temp a,xyzb b where a.opid=:opid and a.ypbh=b.ypbh');
     parambyname('opid').asinteger:=opid;
     open;
     if  isempty then exit;
   end;
   Result:= true;}
   Result := False;

   with dm.Q_song do
   begin
     close;
     sql.Clear;
     sql.Add('select a.ypbh,b.ym,b.gg,a.qll,b.jldw,b.zxdw,je=round(a.qll*b.ylsj,2),a.qll,produce');
     if (deptid=502) or (deptid=501) or (deptid=503) then
     begin
          sql.Add('from  qldb_temp a,xyzb b');
     end   else
     begin
          sql.Add('from  depqldb_temp a,xyzb b');
     end;
     sql.Add('where a.opid=:opid and a.ypbh=b.ypbh');
     parambyname('opid').asinteger:=opid;
     open;
     if not  isempty then      Result := true;
   end
end;

procedure Tdm.SetAdditionRateValue(MyComboBox: TComboBox);
begin
  MyComboBox.Clear;
  MyComboBox.Items.Add('1');
  IF dm.sysinfo.AdditionRateMed <>'' then    MyComboBox.Items.Add(dm.sysinfo.AdditionRateMed);
  IF dm.sysinfo.AdditionRateCMed<>'' then    MyComboBox.Items.Add(dm.sysinfo.AdditionRateCMed);
 // IF dm.sysinfo.AdditionRate<>''     then    MyComboBox.Items.Add(dm.sysinfo.AdditionRate);
  //MyComboBox.ItemIndex:=0;
end;

function Tdm.SetCmbxValue(aComboBox: TComboBox;Sqlstr:string;aCount:integer): boolean;
var  astr:string;
begin
  aComboBox.Items.Clear;
  with dm.q_use do
  begin
    close;
    Sql.clear;
    SQL.add(Sqlstr);
    open;
    first;
    while not Eof do
    begin
      if aCount=1 then
      begin
        astr:=Fields[0].AsString;

      end;
      if aCount=2 then
      begin
        astr:=Fields[0].AsString+':'+Fields[1].AsString;
      end;
      aComboBox.Items.Add(astr);
      Next;
    end;
  end;
end;

procedure Tdm.SetStoreValue(MyComboBox: TComboBox);
begin
  MyComboBox.Clear;
  IF dm.sysinfo.storeA<>'' then    MyComboBox.Items.Add(dm.sysinfo.storeA);
  IF dm.sysinfo.storeB<>'' then    MyComboBox.Items.Add(dm.sysinfo.storeB);
  IF dm.sysinfo.storeC<>'' then    MyComboBox.Items.Add(dm.sysinfo.storeC);
  IF dm.sysinfo.storeD<>'' then    MyComboBox.Items.Add(dm.sysinfo.storeD);

  MyComboBox.ItemIndex:=0;
end;
 
procedure Tdm.UpdateInBankInfo(lsh: integer; InbankDate: tdatetime);
begin
 with   dm.Q_public do
 begin
   close;
   sql.Clear;
   sql.add('exec MedBank_UpdateInBank :lsh,:inbankdate');
   parambyname('lsh').AsInteger:=lsh;
   parambyname('InbankDate').asdatetime:=InbankDate;
   try
   ExecSQL;
   except
   on E: Exception do
        begin
          application.MessageBox(pchar('出库时出错！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
   end;
 end;
end;

procedure Tdm.UpdateMed(Medinfo: Txyzb; opid: string);
begin
  with dm.Q_PUBLIC do
  begin
    close;
    sql.Clear;
    //sql.Add('exec MedBank_UpdateMed  :ypbh,:ym,:pym,:lsm,:zlbm,:zlm,:gf,:jxbm ,:jx,:gg,:zxdw,:hsb,:jldw,:pfj,:ypj,:ylsj,:mzylsj,:bm,:ywm');
    //sql.Add(',:lb ,:lbm,:ddd,:jjyp ,:cfhsb ,:cfzxdw ,:ifzy,:selfyp ,:oper_date,:operbh,:up_date,:upbh');
    //sql.Add(',:skintry,:type,:Inp_Place ,:Outp_Place ,:bank_place ,:xnhbm,:xnhkind,:xnhbl ,:ybbm,:ybkind,:lbA,:lbB ,:produce');
    //sql.Add(',:basic,:cjbm,:storetype,:dosage,:checklb,:checklbm,:barcode,:pwh,:ypkind,:basicProvince,:groupbuy');

    sql.Add('UPDATE [xyzb]');
    sql.Add('SET [ym] =  :ym, ');
    sql.Add('    [pym] = :pym,');
    sql.Add('    [lsm] = :lsm,');
    sql.Add('    [zlbm] = :zlbm,');
    sql.Add('    [zlm] = :zlm,');
    sql.Add('    [jxbm] = :jxbm,');
    sql.Add('   [jx] = :jx,');
    sql.Add('   [gg] = :gg,');
    sql.Add('   [zxdw] = :zxdw,');
    sql.Add('   [hsb] = :hsb,');
    sql.Add('   [jldw] = :jldw,');
    sql.Add('   [pfj] = :pfj,');
    sql.Add('   [ypj] = :ypj,');
    sql.Add('   [ylsj] = :ylsj,');
    sql.Add('   [mzylsj] = :mzylsj,');
    sql.Add('   [bm] = :bm,');
    sql.Add('   [ywm] = :ywm,');
    sql.Add('   [lb] = :lb,');
    sql.Add('   [lbm] = :lbm,');
    sql.Add('   [ddd] = :ddd, ');
    sql.Add('   [jjyp] = :jjyp,');
    sql.Add('   [cfhsb] = :cfhsb,');
    sql.Add('   [cfzxdw] = :cfzxdw,');
    sql.Add('   [selfyp] = :selfyp, ');
    sql.Add('   [ifzy] = :ifzy,     ');
    sql.Add('   [skintry] = :skintry,');
    sql.Add('   [type] = :type,       ');
    sql.Add('   [Inp_Place] = :Inp_Place,');
    sql.Add('   [Outp_Place] = :Outp_Place,');
    sql.Add('   [bank_place] = :bank_place, ');
    sql.Add('   [xnhbm] = :xnhbm,        ');
    sql.Add('   [xnhkind] = :xnhkind,');
    sql.Add('   [xnhbl] = :xnhbl,');
    sql.Add('   [up_date] = :up_date,');
    sql.Add('   [upbh] = :upbh,');
    sql.Add('   [produce] = :produce,');
    sql.Add('   [basic] = :basic,');
    sql.Add('   [cjbm] = :cjbm,');
    sql.Add('   checklb = :checklb,');
    sql.Add('   dosage = :dosage,');
    sql.Add('   checklbm = :checklbm,');
    sql.Add('   barcode = :barcode,');
    sql.Add('   pwh = :pwh,  ');
    sql.Add('   ypkind = :ypkind,');
    sql.Add('   basicProvince = :basicProvince,');
    sql.Add('   groupbuy = :groupbuy');
    sql.Add('WHERE  ypbh = :ypbh');


    try
      parambyname('ypbh').AsString:=trim(Medinfo.ypbh);
      parambyname('ym').AsString:=trim(Medinfo.ym);
      parambyname('pym').AsString:=trim(Medinfo.pym);
      parambyname('lsm').AsString:=trim(Medinfo.lsm);
      parambyname('zlbm').asinteger:=Medinfo.zlbm;
      parambyname('zlm').AsString:=trim(Medinfo.zlm);
      //parambyname('gf').assmallint:=Medinfo.gf;
      parambyname('jxbm').assmallint:=Medinfo.jxbm;
      parambyname('jx').AsString:=trim(Medinfo.jx);
      parambyname('gg').AsString:=trim(Medinfo.gg);
      parambyname('zxdw').AsString:=trim(Medinfo.zxdw);
      parambyname('hsb').asinteger:=Medinfo.hsb;
      parambyname('jldw').AsString:=trim(Medinfo.jldw);
      parambyname('pfj').ascurrency:=Medinfo.pfj;
      parambyname('ypj').ascurrency:=Medinfo.ypj;
      parambyname('ylsj').ascurrency:=Medinfo.ylsj;
      parambyname('mzylsj').ascurrency:=Medinfo.mzylsj;
      parambyname('bm').AsString:=trim(Medinfo.bm);
      parambyname('ywm').AsString:=trim(Medinfo.ywm);
      parambyname('lb').asinteger:=Medinfo.lb;
      parambyname('lbm').AsString:=trim(Medinfo.lbm);
      parambyname('ddd').asinteger:=Medinfo.ddd;
      parambyname('jjyp').asboolean:=Medinfo.jjyp;
      parambyname('cfhsb').asinteger:=Medinfo.cfhsb;
      parambyname('cfzxdw').AsString:=trim(Medinfo.cfzxdw);
      parambyname('ifzy').asboolean:=Medinfo.ifzy;
      parambyname('selfyp').AsString:=trim(Medinfo.selfyp);
      //parambyname('oper_date').asdatetime:=Medinfo.oper_date;
      //parambyname('operbh').asinteger:=Medinfo.operbh;
      parambyname('up_date').asdatetime:=Medinfo.up_date;
      parambyname('upbh').asinteger:=Medinfo.upbh;
      parambyname('skintry').asinteger:=Medinfo.skintry;
      parambyname('type').asinteger:=Medinfo.atype;
      parambyname('Inp_Place').AsString:=trim(Medinfo.Inp_Place);
      parambyname('Outp_Place').AsString:=trim(Medinfo.Outp_Place);
      parambyname('bank_place').AsString:=trim(Medinfo.bank_place);
      parambyname('xnhbm').AsString:=Medinfo.xnhbm;
      parambyname('xnhkind').AsString:=trim(Medinfo.xnhkind);
      parambyname('xnhbl').ascurrency:=Medinfo.xnhbl;
     // parambyname('ybbm').AsString:=trim(Medinfo.ybbm);
      //parambyname('ybkind').AsString:=trim(Medinfo.ybkind);
      //parambyname('lbA').AsString:=trim(Medinfo.lbA);
      //parambyname('lbB').AsString:=trim(Medinfo.lbB);
      parambyname('produce').AsString:=trim(Medinfo.produce);
      parambyname('basic').asboolean:=Medinfo.basic;
      parambyname('cjbm').AsInteger:=Medinfo.cjbm;
     // parambyname('storetype').AsString:=Medinfo.storetype;
      parambyname('dosage').AsCurrency:=Medinfo.dosage;
      parambyname('checklb').asinteger:=Medinfo.checklb;
      parambyname('checklbm').AsString:=Medinfo.checklbm;
      parambyname('barcode').AsString:=Medinfo.barcode;
      parambyname('pwh').AsString:=Medinfo.pwh;
      parambyname('ypkind').asinteger:=Medinfo.ypkind;
      parambyname('basicProvince').asboolean:=Medinfo.basicProvince;
      parambyname('groupbuy').asboolean:=Medinfo.groupbuy;
//    parambyname('ybbm_country').AsString:=trim(Medinfo.ybbm_country);
//    parambyname('ybmc_country').AsString:=trim(Medinfo.ybmc_country);
//    parambyname('ybremark').AsString:=trim(Medinfo.ybremark);
      ExecSQL;
      application.MessageBox('修改药品记录成功!','提示',0);
    except
      on E: Exception do
        begin
          application.MessageBox(pchar('修改药品记录出错！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
    end;
  end;
end;

function Tdm.UpdateProduce(lsh, id: integer): boolean;
begin
   result:=false;
   with dm.Q_public do
   begin
     close;
     sql.Clear;
     sql.Add('update xykr set cjbm=:cjbm where lsh=:lsh');
     parambyname('cjbm').AsInteger:=id;
     parambyname('lsh').AsInteger:=lsh;
     try
       execsql;
     except
       exit;
     end;
   end;
   result:=true;
end;

function Tdm.UpdateSupply(lsh, id: integer): boolean;
begin
   result:=false;
   with dm.Q_public do
   begin
     close;
     sql.Clear;
     sql.Add('update xykr     set ghdw=:ghdw where lsh=:lsh');
     sql.Add('update xykr_tzd set ghdw=:ghdw where lsh=:lsh');
     parambyname('ghdw').AsInteger:=id;
     parambyname('lsh').AsInteger:=lsh;
     try
       execsql;
     except
       exit;
     end;
   end;
   result:=true;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  MyIniFile: TIniFile;
  ahost,aPORT,adatabase,aUsername,aPassword:string;
  alocal:Integer;
begin
  FMainPath := ExtractFilePath(Application.ExeName);
  FIniPath:=FMainPath+'INI\';
  FIniFile:=FIniPath +'HisYk_Console.ini';

  MyIniFile := TIniFile.Create(FIniPath+'myapp.ini');
  with MyIniFile do
  begin
    ahost     :=ReadString('DBServer', 'HOST', '127.0.0.1');
    aPORT     := ReadString('DBServer', 'PORT', '1433');
    aDataBase := ReadString('DBServer', 'DataBase', 'yiyuandb');
    aUsername := ReadString('DBServer', 'USERNAME', 'founder');
    aPassword := ReadString('DBServer', 'PASSWORD', 'fd');
  end;
  MyIniFile.Free;
  con1.Server :=ahost;
  con1.Port:=StrToInt(aPORT);
  con1.Database:=aDatabase;
  con1.Username:=aUsername;
  con1.Password:=aPassword;
  SetSysDateTimeFormat;
  dm.Inital_SystemData;
end;


function Tdm.SearchdepQlTemp(opid: integer): boolean;
begin
  Result := False;
   with dm.Q_song do
   begin
     close;
     sql.Clear;
     sql.Add('select a.ypbh,b.ym,b.gg,a.qll,b.jldw,b.zxdw,je=round(a.qll*a.lsj,2),a.qll,produce,abstract,a.lsj,a.pfj');
     sql.Add('from  depqldb_temp a,xyzb b where a.opid=:opid and a.ypbh=b.ypbh');
     parambyname('opid').asinteger:=opid;
     open;
     if  isempty then exit;
   end;
   Result:= true;
end;


function Tdm.System_sq(myform: TForm; sq, level: integer): boolean;
var icount:integer;
begin
    with dm.Q_comm  do
     begin
       close;
       sql.clear;
       sql.add('select * from  permission where powerlevel=:powerlevel and PartID=:PartID');
       parambyname('PartID').asinteger:=sq;
       parambyname('powerlevel').asinteger:=level;
       open;
       if isempty then
       begin
          result:=false;
          exit;
       end  else  result:=true;
       for icount:=0 to myform.ComponentCount-1 do
       begin
           if myform.Components[icount] is TMenuItem then
           begin
                with dm.Q_comm do
                begin
                    close;
                    sql.clear;
                    sql.add('select * from permission where ItemID=:ItemID and PartID=:PartID '
                       +'    and Powerlevel=:Level and [select]=1');
                    parambyname('ItemID').asinteger:=(myform.Components[icount] as TMenuItem).tag;
                    parambyname('PartID').asinteger:=sq;
                    parambyname('Level').asinteger:=level;
                    open;
                    if recordcount > 0 then  (myform.Components[icount] as TMenuItem).enabled:=true
                    else  (myform.Components[icount] as TMenuItem).enabled:=false;
                end;
           end;
       end;

       for icount:=0 to myform.ComponentCount-1 do
       begin
           if myform.Components[icount] is Tspeedbutton then
           begin
                with dm.Q_comm do
                  begin
                    close;
                    sql.clear;
                    sql.add('select * from permission where ItemID=:ItemID and PartID=:PartID '
                       +'    and Powerlevel=:Level and [select]=1');
                    parambyname('ItemID').asinteger:=(myform.Components[icount] as Tspeedbutton).tag;
                    parambyname('PartID').asinteger:=sq;
                    parambyname('Level').asinteger:=level;
                    open;
                    if recordcount > 0 then  (myform.Components[icount] as Tspeedbutton).enabled:=true
                    else  (myform.Components[icount] as Tspeedbutton).enabled:=false;

                  end;
           end;
       end;

       for icount:=0 to myform.ComponentCount-1 do
       begin
           if myform.Components[icount] is Ttoolbutton then
           begin
                with dm.Q_comm do
                  begin
                    close;
                    sql.clear;
                    sql.add('select * from permission where ItemID=:ItemID and PartID=:PartID '
                       +'    and Powerlevel=:Level and [select]=1');
                    parambyname('ItemID').assmallint:=(myform.Components[icount] as Ttoolbutton).tag;
                    parambyname('PartID').assmallint:=sq;
                    parambyname('Level').assmallint:=level;
                    open;
                    if recordcount > 0 then  (myform.Components[icount] as Ttoolbutton).enabled:=true
                    else  (myform.Components[icount] as Ttoolbutton).enabled:=false;

                  end;
           end;
       end;
     end;
end;

procedure Tdm.getData(col: TcxGridDBColumn; val: string);
var
  myProperties1:TcxCustomEditProperties;
  mp1:tcxcomboboxproperties;
  mp2:TcxCheckBoxProperties;
begin
  myProperties1 :=  tcxcomboboxproperties.Create(self);
  mp1:=tcxcomboboxproperties(myProperties1);
  mp1.DropDownListStyle := lsEditFixedList;
  if mp1.Items.Count<1 then
  begin
    mp1.Items.add('');
  end;
  col.PropertiesClass := tcxcomboboxproperties;
  col.Properties := mp1;

end;

function Tdm.InitGrid(kind: byte; fn: string;
  cxgrdbtblvw: TcxGridDBTableView): integer;
begin
  result:=0;
  cxGridViewAddCols(fn, 1, cxgrdbtblvw, getData);
end;



function Tdm.SetStringsValue(aStrings: Tstrings; Sqlstr: string): boolean;
var  astr:string;
begin
  aStrings.Clear;
  with dm.q_use do
  begin
    close;
    Sql.clear;
    SQL.add(Sqlstr);
    open;
    aStrings.Add('全部');
    first;
    while not Eof do
    begin
      astr:=Fields[1].AsString;
      aStrings.Add(astr);
      Next;
    end;
  end;
end;

function Tdm.GetComboxIndex(Source: tcombobox; Compstr: string): integer;
var icount,index:integer;
    astr:string;
begin
  for icount:=0 to Source.Items.Count-1 do
  begin
    index:=pos(':',Source.Items[icount]);
    astr:=copy(Source.Items[icount],index+1,50);
    if  astr='' then astr:=Source.Items[icount];
     if trim(Compstr)=trim(astr) then
     begin
       result:=icount;
       exit;
     end else
     begin
       if icount=Source.Items.Count-1 then result:=-1;
     end;
  end;

end;

function Tdm.GetComboxValue(Source: tcombobox; substr: string;
  front: boolean): string;
begin
  if front then
    result:=copy(Source.Text,1,pos(substr,Source.Text)-1)
  else
    result:=copy(Source.Text,pos(substr,Source.Text)+1,length(Source.Text)-Pos(':',Source.Text));
end;

function Tdm.GetRadioGroupValue(MyRadioGroup: TRadioGroup; substr: string;
  front: boolean): string;
 var astr:string;
begin
   astr:=MyRadioGroup.Items[MyRadioGroup.ItemIndex];
 if front then
    result:=copy(astr,1,pos(substr,astr)-1)
  else
    result:=copy(astr,pos(substr,astr)+1,length(astr)-Pos(':',astr));
end;

end.











