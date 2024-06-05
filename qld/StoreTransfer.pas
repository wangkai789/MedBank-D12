unit StoreTransfer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, ExtCtrls, ComCtrls,cxStyles, cxControls,
  cxGrid, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations;

type
  TFm_StoreTransfer = class(TForm)
    PageControl1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lb_kc: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label21: TLabel;
    Label7: TLabel;
    EdCode: TEdit;
    Edit_qldh: TEdit;
    qd: TBitBtn;
    dy: TBitBtn;
    Edit_dw: TEdit;
    Ed_ym: TEdit;
    Ed_sl: TEdit;
    Ed_kcl: TEdit;
    edt_deptcode2: TEdit;
    Edt_reqdept: TEdit;
    BitBtn1: TBitBtn;
    RdGp_type: TRadioGroup;
    tc: TBitBtn;
    cmbx_storetype: TComboBox;
    edt_supplydept: TEdit;
    edt_deptcode1: TEdit;
    dbgrd_listzg: TDBGrid;
    DBGrid_XYZB: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dtp_from: TDateTimePicker;
    dtp_to: TDateTimePicker;
    Label4: TLabel;
    Label8: TLabel;
    btn_search: TBitBtn;
    btn_audit: TBitBtn;
    BitBtn3: TBitBtn;
    btn_print: TBitBtn;
    dbgrd_qldb: TDBGrid;
    dbgrd_qlyf: TDBGrid;
    Splitter1: TSplitter;
    btn1: TBitBtn;
    rg1: TRadioGroup;
    edt_abstract: TEdit;
    Label9: TLabel;
    cxgrd: TcxGrid;
    cxgrdlvlLevel1: TcxGridLevel;
    DBGrid_qlyp: TcxGridDBTableView;
    lbl1: TLabel;
    edt_lb: TEdit;
    edt_lsj: TEdit;
    edt_pfj: TEdit;
    edt_hsb: TEdit;
    cbb_yfbm: TComboBox;
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_XYZBDblClick(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure DBGrid_XYZBExit(Sender: TObject);
    procedure Ed_slKeyPress(Sender: TObject; var Key: Char);
    procedure qdClick(Sender: TObject);
    procedure DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

    procedure DBGrid_qlyp1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ListBox1DblClick(Sender: TObject);
    procedure dbgrd_listzgDblClick(Sender: TObject);
    procedure dbgrd_listzgExit(Sender: TObject);
    procedure dbgrd_listzgKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure RdGp_typeClick(Sender: TObject);
    procedure tcClick(Sender: TObject);
    procedure edt_deptcode1KeyPress(Sender: TObject; var Key: Char);
    procedure edt_deptcode2KeyPress(Sender: TObject; var Key: Char);
    procedure btn_searchClick(Sender: TObject);
    procedure dbgrd_qlyfCellClick(Column: TColumn);
    procedure btn_auditClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure edt_abstractKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_qlypDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function  SearchDeptinfo():Boolean;
    function  SearchQlyf(ifzf:Boolean;datefrom,dateto:TDateTime):Boolean;
    function  SearchQldb(qldh:integer):Boolean;
    function  SearchMedinfo(spell:string;yfbm:integer):Boolean;
    function  StoreAudit(qldh,Auditclass:Integer):Boolean;
    function  Cancelqlyf(qldh:integer):Boolean;
    function  AddQldbTemp():boolean;

  public
    { Public declarations }
    ifclear:boolean;
  end;

const supplydept=100;
      reqdept   =101;

var
  Fm_StoreTransfer: TFm_StoreTransfer;

implementation

uses data, Factory, czydl, main,InterfaceMedStore, reportform;
//rpt_qldmx;

{$R *.DFM}

procedure TFm_StoreTransfer.EdCodeKeyPress(Sender: TObject; var Key: Char);
var      ayfbm:integer;
begin
  if key<>#13 then exit;

  if (edt_deptcode2.Text='807') and (trim(edt_abstract.Text)='') then
  begin
    application.MessageBox('请输入摘要信息！','信息',32);
    edt_abstract.SetFocus;
    exit;
  end;

  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  if SearchMedinfo(Trim(EdCode.Text),ayfbm) then
  begin
     DBGrid_XYZB.Left:=EdCode.Left;
     DBGrid_XYZB.Top:=EdCode.Top+EdCode.Height;
     DBGrid_XYZB.Visible:=true;
     DBGrid_XYZB.SetFocus;
  end;
end;

procedure TFm_StoreTransfer.DBGrid_XYZBDblClick(Sender: TObject);
begin
  with dm.Q_MedStore do
  begin
    Ed_ym.Text := Fieldbyname('ym').AsString;
    EdCode.text := Fieldbyname('ypbh').AsString;
    Edit_dw.Text:=Fieldbyname('dw').AsString;
    Ed_kcl.Text:=Fieldbyname('kcl').AsString;
    edt_lb.Text:=Fieldbyname('lb').AsString;
    edt_lsj.Text:=Fieldbyname('ylsj').AsString;
    edt_pfj.Text:=Fieldbyname('pfj').AsString;
    edt_hsb.Text:=Fieldbyname('hsb').AsString;
  end;
   Ed_sl.SetFocus;
end;

procedure TFm_StoreTransfer.EdCodeEnter(Sender: TObject);
begin
  Edcode.Clear;
  Ed_ym.Clear;
  Edit_dw.Clear;
  Ed_sl.Clear;
  ed_kcl.Clear;
  edt_lb.Clear;
  edt_lsj.Clear;
  edt_pfj.Clear;
  edt_hsb.Clear;
end;

procedure TFm_StoreTransfer.DBGrid_XYZBExit(Sender: TObject);
begin
  (sender as tdbgrid).visible:=false;
end;

procedure TFm_StoreTransfer.Ed_slKeyPress(Sender: TObject; var Key: Char);
var sl:currency;
begin
  if key<>#13 then exit;
  sl:=strtocurr(ed_sl.text);
  case RdGp_type.ItemIndex of
  0:begin
      if sl<=0 then
      begin
        ed_sl.clear;
        exit;
      end else
      if strtocurr(ed_kcl.text)-sl<0 then
      begin
        ed_sl.Clear;
        exit;
      end;
    end;
   1:begin
     if sl>=0 then
     begin
       ed_sl.clear;
       exit;
     end;
    end;
  end;

  if AddQldbTemp then
  begin
    qd.Enabled:=true;
    cbb_yfbm.Enabled:=false;
    EdCode.SetFocus;
  end;
  dm.SearchdepQlTemp(strtoint(dm.Fopid));
end;

procedure TFm_StoreTransfer.qdClick(Sender: TObject);
var ayfbm:integer;
begin
  qd.Enabled:=false;
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  try
    dataset_open(dm.q_song,'exec get_new_bmly_qldh');
    Edit_qldh.text:=dm.Q_song['qldh']; {qd.enabled:=true;}
    EdCode.SetFocus;
  except
    application.MessageBox('生成请领单号时出错，请重试！','错误提示',0+mb_iconstop);
    exit;
  end;
  with dm.Q_song do
  begin
    close;
    sql.Clear;
    SQL.Add('exec ks_bmly_qlyf @mqldh=:qldh ,@myfbm=:yfbm,@supplyksbm=:supplyksbm,@qlr=:qlr,@abstract=:abstract');
    ParamByName('qldh').AsInteger:=strtoint(trim(edit_qldh.text));
    ParamByName('yfbm').AsInteger:=strtoint(trim(edt_deptcode2.text));
    ParamByName('supplyksbm').AsInteger:=ayfbm;
    ParamByName('qlr').AsInteger:=strtoint(dm.Fopid);
    //ParamByName('type').AsInteger:=RadioGroup1.ItemIndex+1;
    ParamByName('abstract').asstring:=trim(edt_abstract.Text);
    try
      ExecSQL;
      application.messagebox('请领单已经生成','提示',0);
      EdCode.Clear;
      Ed_ym.Clear;
      Edit_qldh.Clear;
      Ed_sl.Clear;
      Edit_dw.Clear;
      Ed_kcl.Clear;
      edt_abstract.Clear;
      EdCode.SetFocus;
      cbb_yfbm.Enabled:=true;
    except
      application.messagebox('请领单生成是出错','错误提示',0+mb_iconstop)
    end;
     dm.SearchdepQlTemp(strtoint(dm.Fopid));
  end;

end;

procedure TFm_StoreTransfer.DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_XYZBDblClick(Sender);
end;

procedure TFm_StoreTransfer.FormShow(Sender: TObject);
begin
   PageControl1.ActivePageIndex:=0;
    Edt_reqdept.Clear;
    edt_deptcode2.Clear;
    edt_deptcode1.Clear;
    edt_supplydept.Clear;
    dbgrd_listzg.Visible:=false;
    DBGrid_XYZB.Top:=EdCode.Top+EdCode.Height;
    DBGrid_XYZB.left:=EdCode.Left;
    dm.SetStoreValue(cmbx_storetype);
    edt_deptcode1.Text:=dm.sysinfo.yfbm;
    edt_supplydept.Text:=dm.sysinfo.yfmc;
    dtp_from.DateTime:=Now;
    dtp_to.DateTime:=Now;
    edt_deptcode2.SetFocus;
    dm.InitGrid(1,'MedStore_QldbTmp.xml',DBGrid_qlyp);
    self.Caption:=dm.sysinfo.hospitalName+'-'+'其他出库';
end;



procedure TFm_StoreTransfer.DBGrid_qlyp1DblClick(Sender: TObject);
var
   aypbh,aym,amsg: string;
begin

   if DBGrid_qlyp.DataController.DataSource.DataSet.IsEmpty then exit;
   aym:= DBGrid_qlyp.DataController.DataSource.DataSet.fieldbyname('ym').AsString;
   amsg:='是否删除['+aym+']'+'的信息？';
 if application.messagebox(pchar(amsg),'信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;

   aypbh:=trim(DBGrid_qlyp.DataController.DataSource.DataSet.fieldbyname('ypbh').AsString);
   with dm.Q_song do
     begin
      close;
      sql.clear;
      SQL.Add('exec ks_bmly_qld_del @mopid=:opid,@mypbh=:ypbh');
      ParamByName('opid').AsInteger:=strtoint(dm.Fopid);
      ParamByName('ypbh').AsString:=aypbh;
      ExecSQL;
      dm.SearchdepQlTemp(strtoint(dm.Fopid));
      if recordcount=0 then
      begin
        qd.Enabled :=false;

      end;
   end;
    EdCode.SetFocus ;
end;

procedure TFm_StoreTransfer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with dm.Q_song do
  begin
    close;
    sql.clear;
    sql.Add(' delete depqldb_temp where opid=:qlr');
    ParamByName('qlr').Assmallint:=strtoint(fm_czydl.Ed_bh.text);
    execsql;
  end;
  dm.Q_song.Close;
  dm.Q_public.Close;
end;


procedure TFm_StoreTransfer.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then ListBox1DblClick(sender);
end;

procedure TFm_StoreTransfer.ListBox1DblClick(Sender: TObject);
var str:string;
begin

end;

procedure TFm_StoreTransfer.dbgrd_listzgDblClick(Sender: TObject);
begin

 case dbgrd_listzg.Tag of
 supplydept:begin
              edt_supplydept.Text:=dm.Q_use.fieldbyname('ksmc').AsString;
              edt_deptcode1.Text:=dm.Q_use.fieldbyname('ksbm').AsString;
              edt_deptcode2.SetFocus;
            end;
 reqdept:  begin
              Edt_reqdept.Text:=dm.Q_use.fieldbyname('ksmc').AsString;
              edt_deptcode2.Text:=dm.Q_use.fieldbyname('ksbm').AsString;
              edt_abstract.SetFocus;
           end;
 end;
end;

procedure TFm_StoreTransfer.dbgrd_listzgExit(Sender: TObject);
begin
  dbgrd_listzg.Visible:=false;
end;

procedure TFm_StoreTransfer.dbgrd_listzgKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then dbgrd_listzgDblClick(sender);
end;

procedure TFm_StoreTransfer.BitBtn1Click(Sender: TObject);
begin
 // Fm_ypsearch.showmodal;
end;

procedure TFm_StoreTransfer.RdGp_typeClick(Sender: TObject);
begin


   with dm.Q_song do
   begin
     close;
     sql.clear;
     sql.add('delete depqldb_temp where opid =:opid');
     ParamByName('opid').AsInteger:=strtoint(dm.Fopid);
     try
       execsql;
     except
       exit;
     end;
   end;


  case RdGp_type.ItemIndex of
    0:begin
        Label3.Caption := '请领单号';
        self.Caption:='请领单生成';
        lb_kc.caption := '药库库存';
      end;
    1:begin
       Label3.Caption := '退库单号';
       self.Caption:='退库单生成';
       lb_kc.caption := '科室库存';
       if Edt_reqdept.Text='888' then
       begin
         Application.MessageBox('退物品公司，请选择领药!','提示信息',mb_iconinformation);
         RdGp_type.ItemIndex:=0;
       end;
     end;
  end;

  EdCode.SetFocus;
end;

procedure TFm_StoreTransfer.tcClick(Sender: TObject);
begin
  self.Close;
end;

function TFm_StoreTransfer.SearchDeptinfo(): Boolean;
begin
  Result:=false;
   with dm.Q_use do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select ksbm,ksmc from jgxx where ifzy=1 and lbd<>5 order by ksbm');
     Open;
     if IsEmpty then exit;
   end;
  Result:=True;
end;

procedure TFm_StoreTransfer.edt_deptcode1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key<>#13 then exit;
   if SearchDeptinfo then
   begin
     dbgrd_listzg.Tag:=supplydept;
     dbgrd_listzg.DataSource:=dm.DS_use;
     dbgrd_listzg.Visible:=True;
     dbgrd_listzg.SetFocus;
   end;
end;

procedure TFm_StoreTransfer.edt_deptcode2KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key<>#13 then exit;
   if SearchDeptinfo then
   begin
     dbgrd_listzg.Tag:=reqdept;
     dbgrd_listzg.Left:=edt_deptcode2.Left;
     dbgrd_listzg.top :=edt_deptcode2.Top+edt_deptcode2.Height;
     dbgrd_listzg.Visible:=True;
     dbgrd_listzg.DataSource:=dm.DS_use;
     dbgrd_listzg.SetFocus;
   end;
end;

function TFm_StoreTransfer.SearchMedinfo(spell:string;yfbm:integer): Boolean;
begin
  Result:=False;
   with dm.Q_MedStore do
   begin
     Close;
     SQL.clear;
     if yfbm=500 then
     begin
       SQL.Add('Select a.ypbh,a.ym, a.gg,a.ylsj,dw=a.jldw, a.hsb, b.jx,produce,kcl=sum(kcl)');
       SQL.Add(' from XYZB  a  (nolock), ypjx  b(nolock), xykr  c(nolock) ,xykcun d  (nolock)');
       SQL.Add(' where  a.jxbm=b.jxbm and a.ypbh=c.ypbh  and c.rkxh=d.rkxh and a.pym like :spell and a.lb=:lb');
       SQL.Add(' group by a.ypbh,a.ym, a.gg,a.ylsj,a.jldw, a.hsb, b.jx,produce');
       SQL.Add(' having sum(kcl)>0 ');
     end else
     begin
       SQL.Add('Select a.ypbh,a.ym, a.gg,ylsj=(a.ylsj/a.hsb),pfj=(a.pfj/hsb),c.kcl,dw=a.zxdw, a.hsb, b.jx,produce,a.lb,a.lbm,a.hsb');
       SQL.Add(' from XYZB  a  (nolock), ypjx  b(nolock), nkyc c (nolock)');
       SQL.Add(' where  a.jxbm=b.jxbm     and ');
       SQL.Add('        a.ypbh=c.ypbh     and ');
       SQL.Add('        c.kcl>0           and  ');
       SQL.Add('        a.pym like :spell and ');
       SQL.Add('        c.ksbm=:yfbm');
       ParamByName('yfbm').AsInteger:=yfbm;
     end;

     ParamByName('spell').AsString:='%'+spell+'%';
     //ParamByName('lb').AsInteger:=lb;
     open;
     if isempty then exit;
   end;
   Result:=true;
end;

function TFm_StoreTransfer.SearchQlyf(ifzf:Boolean;datefrom, dateto: TDateTime): Boolean;
begin
  Result:=False;
  with dm.Q_comm1  do
  begin
    close;
    sql.Clear;
    SQL.Add('select a.*,supplydept=c.ksmc,reqdept=b.ksmc from depqlyf a,jgxx b,jgxx c');
    SQL.Add('where a.supplyksbm=c.ksbm and a.yfbm=b.ksbm and  DATEDIFF(day,qlrq,:datefrom)<=0');
    SQL.Add('and  DATEDIFF(day,qlrq,:dateto)>=0 and ifzf=:ifzf');
    ParamByName('datefrom').AsDateTime:=datefrom;
    ParamByName('dateto').AsDateTime:=dateto;
    ParamByName('ifzf').asboolean:=ifzf;
    open;
    if IsEmpty then Exit;
  end;
  Result:=true;
end;

procedure TFm_StoreTransfer.btn_searchClick(Sender: TObject);
var  aifzf:Boolean;
begin
  if rg1.ItemIndex=0 then aifzf:=False else aifzf:=true;

 if  SearchQlyf(aifzf,dtp_from.DateTime,dtp_to.DateTime) then
 begin
   dbgrd_qlyf.DataSource:=dm.DS_comm1;

   dbgrd_qlyf.SetFocus;
 end else dbgrd_qlyf.DataSource:=nil;
    dbgrd_qldb.DataSource:=nil;
end;

function TFm_StoreTransfer.SearchQldb(qldh: integer): Boolean;
begin
  Result:=False;
   with dm.Q_public do
   begin
     Close;
     sql.Clear;
     sql.Add('select a.qldh,a.ypbh,b.ym,b.gg,b.zxdw,a.qll,a.sfl,sfdj,sfje,a.sxrq,a.zlbm,a.oldkcl,kcl,produce');
     sql.Add('from depqldb a,xyzb b,nkyc c where a.ypbh=b.ypbh and a.ypbh=c.ypbh and qldh=:qldh');
     ParamByName('qldh').AsInteger:=qldh;
     Open;
     if IsEmpty then exit;
   end;
   Result:=true;
end;

procedure TFm_StoreTransfer.dbgrd_qlyfCellClick(Column: TColumn);
begin
  if   dbgrd_qlyf.DataSource=nil then exit;

  if SearchQldb(dbgrd_qlyf.Fields[0].AsInteger) then
  begin
    dbgrd_qldb.DataSource:=dm.DS_public;
    dbgrd_qldb.SetFocus;
 end else dbgrd_qlyf.DataSource:=nil;
end;

function TFm_StoreTransfer.StoreAudit(qldh,Auditclass: Integer): Boolean;
begin
   with dm.Q_public1 do
   begin
     Close;
     sql.clear;
     SQL.Add('exec medstore_StoreAudit :qldh,:Auditclass');
     ParamByName('qldh').AsInteger:=qldh;
     ParamByName('Auditclass').AsInteger:=Auditclass;
     try
       ExecSQL;
      if Auditclass=1 then  application.MessageBox('审核成功!','提示',0)
      else application.MessageBox('撤销审核成功!','提示',0);
     except
     end;
   end;
end;

procedure TFm_StoreTransfer.btn_auditClick(Sender: TObject);
begin
  if dbgrd_qldb.DataSource=nil then Exit;
  if dbgrd_qlyf.DataSource=nil then Exit;

  if dbgrd_qlyf.DataSource.DataSet.FieldByName('ifzf').AsBoolean then
  begin
    application.MessageBox('此单已经作废不能审核！','错误提示',0+mb_iconstop);
    exit;
  end;

  if not dbgrd_qlyf.DataSource.DataSet.FieldByName('qrsj').IsNull then
  begin
    application.MessageBox('此单已经审核不能重复审核！','错误提示',0+mb_iconstop);
    exit;
  end;

  if application.messagebox('是否审核？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
  StoreAudit(dbgrd_qldb.Fields[0].asinteger,1);
  btn_search.Click;

end;

procedure TFm_StoreTransfer.BitBtn3Click(Sender: TObject);
begin
   if dbgrd_qlyf.DataSource=nil then Exit;
   if dbgrd_qldb.DataSource=nil then Exit;
   if dbgrd_qlyf.DataSource.DataSet.FieldByName('ifzf').AsBoolean then
  begin
    application.MessageBox('此单已经作废不能撤销审核！','错误提示',0+mb_iconstop);
    exit;
  end;


  if  dbgrd_qlyf.DataSource.DataSet.FieldByName('qrsj').IsNull then
  begin
    application.MessageBox('此单未审核不能撤销！','错误提示',0+mb_iconstop);
    exit;
  end;

  if application.messagebox('是否撤销审核？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
  StoreAudit(dbgrd_qldb.Fields[0].asinteger,0);
  btn_search.Click;
end;


procedure TFm_StoreTransfer.btn_printClick(Sender: TObject);
var  MYMedStore:IMedStore;
     aqldh:integer;
begin
  if dbgrd_qlyf.DataSource=nil then Exit;
  if dbgrd_qlyf.DataSource.DataSet.FieldByName('ifzf').AsBoolean then
  begin
    application.MessageBox('此单已经作废不能打印！','错误提示',0+mb_iconstop);
    exit;
  end;

  if dbgrd_qlyf.DataSource.DataSet.FieldByName('qrsj').IsNull then
  begin
    application.MessageBox('此单未审核不能打印！','错误提示',0+mb_iconstop);
    exit;
  end;
  aqldh:=dbgrd_qlyf.DataSource.DataSet.fieldbyname('qldh').asinteger;
  MYMedStore:=TMedStore.Create;
  MYMedStore.PrintOtherOutStore(Fm_report.frxrprt1,dm.q_out,aqldh);
end;

function TFm_StoreTransfer.Cancelqlyf(qldh: integer): Boolean;
begin
   with dm.Q_public1 do
   begin
     Close;
     sql.clear;
     SQL.Add('update  depqlyf set ifzf=1,zfdt=getdate() where qldh=:qldh and qrsj is null');
     ParamByName('qldh').AsInteger:=qldh;
     try
       ExecSQL;
       application.MessageBox('作废成功!','提示',0);
     except
       application.MessageBox('作废失败！','错误提示',0+mb_iconstop);
        Exit;
     end;
   end;
end;

procedure TFm_StoreTransfer.btn1Click(Sender: TObject);
begin

  if dbgrd_qlyf.DataSource=nil then Exit;

  if dbgrd_qlyf.DataSource.DataSet.FieldByName('ifzf').AsBoolean then
  begin
    application.MessageBox('此单已经作废不能再次作废！','错误提示',0+mb_iconstop);
    exit;
  end;

  if not dbgrd_qlyf.DataSource.DataSet.FieldByName('qrsj').IsNull then
  begin
    application.MessageBox('此单已经审核不能作废,如要作废请先撤销审核！','错误提示',0+mb_iconstop);
    exit;
  end;

   if application.messagebox('是否作废？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;

    Cancelqlyf(dbgrd_qlyf.Fields[0].asinteger);
    btn_search.Click;
end;

procedure TFm_StoreTransfer.rg1Click(Sender: TObject);
begin
  btn_search.Click;
end;

procedure TFm_StoreTransfer.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if ParName='type' then
   begin
     case  dm.Q_comm.FieldByName('type').AsInteger of
     1:begin
         ParValue:='西药 字';
       end;
     2:ParValue:='中草药 字';
     3:ParValue:='中成药 字';
     end;
   end;
   if  ParName='hospital' then ParValue:=dm.SysInfo.hospitalName;
end;

function TFm_StoreTransfer.AddQldbTemp: boolean;
begin
  result:=false;
  with dm.Q_song do
  begin
    close;
    sql.clear;
    //SQL.Add('exec ks_bmly_qldnew @mopid=:opid,@mypbh=:ypbh,@mqll=:qll');
    SQL.Add(' insert into depqldb_temp(ypbh,qll,opid,abstract,lb,lsj,pfj,hsb) select :ypbh,:qll,:opid,:abstract,:lb,:lsj,:pfj,:hsb');
    ParamByName('ypbh').AsString:=trim(edcode.text);
    ParamByName('opid').AsInteger:=strtoint(dm.Fopid);
    ParamByName('qll').AsCurrency:=strtocurr(trim(Ed_sl.text));
    ParamByName('abstract').asstring:=trim(Edt_abstract.text);
    ParamByName('lb').AsInteger:=strtoint(Edt_lb.text);
    ParamByName('lsj').AsCurrency:=strtocurrdef(Edt_lsj.text,0);
    ParamByName('pfj').AsCurrency:=strtocurrdef(Edt_pfj.text,0);
    ParamByName('hsb').AsInteger:=strtointdef(edt_hsb.text,0);
    try
      ExecSQL;
    except
     on E: Exception do
       begin
        Application.MessageBox(PChar('增加药品失败：'+e.message),'错误信息',mb_iconerror);
        exit ;
       end;
    end;
  end;
  result:=true;
end;

procedure TFm_StoreTransfer.edt_abstractKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key=#13) then
 begin
   if (edt_deptcode2.Text='807') and (trim(edt_abstract.Text)='') then
   begin
      application.MessageBox('请输入摘要信息！','信息',32);
      exit;
   end
   else
    EdCode.SetFocus;
 end;
end;

procedure TFm_StoreTransfer.DBGrid_qlypDblClick(Sender: TObject);
var
   aypbh,aym,amsg: string;
begin
if DBGrid_qlyp.DataController.DataSource.DataSet.IsEmpty then exit;
   aym:= DBGrid_qlyp.DataController.DataSource.DataSet.fieldbyname('ym').AsString;
   amsg:='是否删除['+aym+']'+'的信息？';
 if application.messagebox(pchar(amsg),'信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;

   aypbh:=trim(DBGrid_qlyp.DataController.DataSource.DataSet.fieldbyname('ypbh').AsString);
   with dm.Q_song do
     begin
      close;
      sql.clear;
      SQL.Add('exec ks_bmly_qld_del @mopid=:opid,@mypbh=:ypbh');
      ParamByName('opid').AsInteger:=strtoint(dm.Fopid);
      ParamByName('ypbh').AsString:=aypbh;
      ExecSQL;
      dm.SearchdepQlTemp(strtoint(dm.Fopid));
      if recordcount=0 then
      begin
        qd.Enabled :=false;
      end;
   end;
    EdCode.SetFocus ;
end;

procedure TFm_StoreTransfer.FormCreate(Sender: TObject);
var    MYMedStore:IMedStore;
begin
  //--2023.12.06 wk 库房类别
  MYMedStore:=TMedStore.Create;
  MYMedStore.GetYfbm(dm.Q_comm,cbb_yfbm,false);
  //---
end;

end.
