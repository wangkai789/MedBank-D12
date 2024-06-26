unit MedInStoreUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxDropDownEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Data.DB, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, Vcl.Grids, Vcl.DBGrids, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFrmMedInStore = class(TForm)
    Panel3: TPanel;
    BBtn_cacel: TBitBtn;
    BBtn_print: TBitBtn;
    BBtn_quit: TBitBtn;
    btn_rkl: TBitBtn;
    Btn_add: TBitBtn;
    Btn_del: TBitBtn;
    BitBtn1: TBitBtn;
    btn_update: TBitBtn;
    btn_save: TBitBtn;
    GroupBox1: TGroupBox;
    Label37: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label38: TLabel;
    Label26: TLabel;
    Label39: TLabel;
    cmbx_storetype: TComboBox;
    Ed_ghdw: TcxButtonEdit;
    ComboBox2: TcxComboBox;
    ComboBox3: TcxComboBox;
    ComboBox4: TcxComboBox;
    RG_SearchType: TRadioGroup;
    cbb_AddRate: TComboBox;
    cbb_rklb: TComboBox;
    cbb_yfbm: TComboBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Ed_ypmc: TEdit;
    Ed_jldw: TEdit;
    Ed_gg: TEdit;
    Ed_jx: TEdit;
    Ed_zxdw: TEdit;
    Ed_hsb: TEdit;
    Ed_ykkc: TEdit;
    Ed_ypbh: TcxButtonEdit;
    Ed_zykc: TEdit;
    Ed_mzkc: TEdit;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    lbl_ykdw: TLabel;
    Label27: TLabel;
    Lbl_dw: TLabel;
    Ed_pfj: TEdit;
    Ed_rkje: TEdit;
    Ed_lc: TEdit;
    Ed_cjxz: TEdit;
    Date_rkrq: TDateTimePicker;
    Ed_sccj: TcxButtonEdit;
    Ed_jhj: TcxTextEdit;
    Ed_rksl: TcxTextEdit;
    Ed_pwh: TcxTextEdit;
    Ed_ypph: TcxTextEdit;
    Ed_fph: TcxTextEdit;
    Ed_yfk: TcxTextEdit;
    DBG_history: TDBGrid;
    ed_lsj: TEdit;
    Date_sxrq: TcxDateEdit;
    Date_scrq: TcxDateEdit;
    GroupBox4: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    CmbBx_certify: TComboBox;
    CmbBx_face: TComboBox;
    CmbBx_explain: TComboBox;
    CmbBx_StoreCondition: TComboBox;
    DtTm_CheckDate: TDateTimePicker;
    cmbbx_CheckConclusion: TComboBox;
    GroupBox5: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    ComboBox1: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    DateTimePicker1: TDateTimePicker;
    ComboBox8: TComboBox;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    DBGrid_xyzb: TDBGrid;
    DBGrid_sccj: TDBGrid;
    DBGrid_ghdw: TDBGrid;
    procedure BBtn_cacelClick(Sender: TObject);
    procedure BBtn_printClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Btn_addClick(Sender: TObject);
    procedure Btn_delClick(Sender: TObject);
    procedure btn_rklClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_updateClick(Sender: TObject);
  private
    { Private declarations }
    FLsh:integer;
    Fyear:integer;
    Fmonth:integer;
    procedure SearchMedinfo(yfbm,SearchType:integer;pym:string);
    procedure SearchSuply(pym:string);
    procedure SearchProduce(pym:string);
    procedure AddMedTemp(opid:integer);
    procedure UpdateMedTemp(rkxh:integer);
    function  ListMedTemp(opid:integer):boolean;
    procedure DelMedTemp(rkxh:integer);
    procedure DelTemp(opid:integer);
  public
    { Public declarations }
    function  CheckInput():boolean;
    function searchhistory(ypbh:string):boolean;
    procedure SetPerson(Combox:TcxComboBox;PersonType:integer);
  end;

const  AddState=1;
       UpdateState=2;
var
  FrmMedInStore: TFrmMedInStore;

implementation

{$R *.dfm}

uses reportform, data, czydl,InterfaceMedStore, zpckgl,Factory;

procedure TFrmMedInStore.AddMedTemp(opid: integer);
begin

end;

procedure TFrmMedInStore.BBtn_cacelClick(Sender: TObject);
begin
 Ed_ypbh.Clear;
  Ed_ypmc.Clear;
  Ed_jldw.Clear;
  Ed_gg.Clear;
  Ed_jx.Clear;
  Ed_zxdw.Clear;
  Ed_hsb.Clear;
  Ed_pfj.Clear;
  Ed_jhj.Clear;
  Ed_rksl.Clear;
  Ed_rkje.Clear;
  Ed_lc.Clear;
  Ed_pwh.Clear;
  Ed_sccj.Clear;
  Ed_cjxz.Clear;
  Ed_ypph.Clear;
  Ed_fph.Clear;
  Ed_yfk.Clear;
  ed_lsj.Clear;
  Ed_ykkc.Clear;
  Ed_zykc.Clear;
  Ed_mzkc.Clear;
  Lbl_dw.Caption :='' ;
  Lbl_ykdw.Caption :='' ;
  //cbb_rklb.ItemIndex:=-1;

  //CmbBx_face.ItemIndex:=0;
  //CmbBx_explain.ItemIndex:=0;
  //CmbBx_StoreCondition.ItemIndex:=0;
  //cmbbx_CheckConclusion.ItemIndex:=0;
  DtTm_CheckDate.DateTime:=date();
  //CmbBx_certify.ItemIndex:=0;

  date_scrq.Text:='';
  Date_sxrq.Text:='';
  Date_rkrq.DateTime:=now();
  ed_ypbh.SetFocus;
end;

procedure TFrmMedInStore.BBtn_printClick(Sender: TObject);
var  MYMedStore:IMedStore;
     alsh:integer;
     arkrq:string;
begin
   arkrq:=datetostr(date());
    Fm_report.FPrintType:='';
    MYMedStore:=TMedStore.Create;
    MYMedStore.PrintInStore(Fm_report.frxrprt1,dm.Q_public,arkrq,Flsh);
end;

procedure TFrmMedInStore.BitBtn1Click(Sender: TObject);
begin
   fm_zpckgl.Tag:=200;
   fm_zpckgl.showmodal;
end;

procedure TFrmMedInStore.Btn_addClick(Sender: TObject);
begin
 btn_save.Tag:=AddState;
 Btn_add.Enabled:=false;
 Btn_update.Enabled:=true;
 btn_save.Enabled:=true;
end;

procedure TFrmMedInStore.Btn_delClick(Sender: TObject);
var  arkxh:integer;
begin
  if dm.Q_rktemp.IsEmpty then
  begin
    application.MessageBox('没有删除的信息！','信息',32);
    exit;
  end;

  if application.messagebox('是否删除？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
  arkxh:=cxgrdbtblvw.DataController.DataSource.DataSet.fieldbyname('rkxh').asinteger;
  DelMedTemp(arkxh);
  ListMedTemp(strtoint(dm.Fopid));
  btn_add.Click;
  BBtn_cacel.Click;

end;

procedure TFrmMedInStore.btn_rklClick(Sender: TObject);
var year,month,day:word;
  ErrorMess:string;
  label Error;
begin

  if Ed_ghdw.text='' then
  begin
    ErrorMess:='请选择供货单位。';
    Ed_ghdw.SetFocus;
    goto Error;
  end;

  if Ed_ghdw.tag=0 then
  begin
    ErrorMess:='请从字典表选择供应商，不能手工录入！';
    Ed_ghdw.SetFocus;
    goto Error;
  end;


  if application.messagebox('是否入库？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
  with dm.q_comm do
  begin
      close;
      sql.Clear;
      sql.Add(' select b.ym,b.gg,a.jhj,a.pfj,a.lsj,a.rksl,a.rkxh');
      sql.Add(' from xykr_temp a,xyzb b ');
      sql.Add(' where a.ypbh=b.ypbh ');
      sql.Add(' and a.opid=:opid ');
      ParamByName('opid').AsSmallInt:=strtoint(trim(fm_czydl.Ed_bh.text));
      open;
      if recordcount <1 then
      begin
        application.MessageBox('没有药品无法入库！','错误提示',0+mb_iconstop);
        exit;
      end;
  end;
  dataset_open(dm.Q_comm,'exec get_new_rk_lsh');
  try
    FLsh:=dm.Q_comm['lsh'];
    DecodeDate(now(),Year,Month,Day);
    Fyear:=Year;
    Fmonth:=month;
  except
    application.MessageBox('生成流水号出错，请再试一次！','错误提示',0+mb_iconstop);
    exit;
  end;
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('exec yp_rk :mcgy,:mbgy ,:mfhr,:lsh,:opid,:yfbm');
    ParamByName('mcgy').Asstring:=copy(ComboBox3.text,pos(':',ComboBox3.text)+1,10);
    ParamByName('mbgy').Asstring:=copy(ComboBox2.text,pos(':',ComboBox2.text)+1,10);
    ParamByName('mfhr').Asstring:=copy(ComboBox4.text,pos(':',ComboBox4.text)+1,10);
    ParamByName('lsh').AsSmallInt:=FLsh;
    ParamByName('opid').asinteger:=strtoint(dm.Fopid);
    ParamByName('yfbm').asinteger:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
    try
      execsql;
      application.MessageBox('药品入库成功!','提示',0);
      fm_zpckgl.Flsh:=FLsh;
      btn_rkl.Enabled:=false;
      BBtn_print.Enabled:=true;
      btn_add.tag:=0;
      ed_ghdw.enabled:=true;
      cbb_rklb.enabled:=true;
      cbb_yfbm.enabled:=true;
      BBtn_cacel.Click;
      BBtn_print.Click;
      BitBtn1.Click;

    if cxgrdbtblvw.DataController.DataSource<>nil then cxgrdbtblvw.DataController.DataSource:=nil;
    except
       on E: Exception do
       begin
        Application.MessageBox(PChar('药品入库失败：'+e.message),'错误信息',mb_iconerror);
        exit ;
       end;
    end;
  end;
  Error:
  begin
    application.MessageBox(pchar(ErrorMess),'信使',mb_ok);
    exit;
  end;
end;

procedure TFrmMedInStore.btn_saveClick(Sender: TObject);
var arkxh:integer;
begin
  if  CheckInput then exit;//输入内容检查
   case btn_save.Tag of
   AddState:
     begin
        AddMedTemp(strtoint(dm.Fopid));
        ListMedTemp(strtoint(dm.fopid));
        Ed_ypbh.SetFocus;
     end;
   UpdateState:
     begin
        if cxgrdbtblvw.DataController.DataSource=nil then exit;
        if cxgrdbtblvw.DataController.DataSource.DataSet.IsEmpty then exit;
        arkxh:=cxgrdbtblvw.DataController.DataSet.fieldbyname('rkxh').AsInteger;
        UpdateMedTemp(arkxh);
        ListMedTemp(strtoint(dm.fopid));
        dm.Q_rktemp.Locate('rkxh',arkxh, []);
        cxgrd.SetFocus;
     end;
   end;
   btn_Save.Enabled:=true;
   btn_add.Enabled:=true;
   btn_update.Enabled:=true;
   btn_del.Enabled:=true;
   btn_add.Click;
end;

procedure TFrmMedInStore.btn_updateClick(Sender: TObject);
begin
   if cxgrdbtblvw.DataController.DataSource.DataSet.IsEmpty then exit;
   with  dm.Q_rktemp do
   begin
     Ed_ypbh.Text:=fieldbyname('ypbh').AsString;
     Ed_ypmc.Text:=fieldbyname('ym').AsString;
     Ed_gg.Text:=fieldbyname('gg').AsString;
     Ed_jx.Text:=fieldbyname('jx').AsString;
     Ed_jldw.Text:=fieldbyname('jldw').AsString;
     Ed_hsb.Text:=fieldbyname('hsb').AsString;
     Ed_zxdw.Text:=fieldbyname('zxdw').AsString;
     Ed_jhj.Text:=fieldbyname('jhj').AsString;
     ed_lsj.Text:=fieldbyname('lsj').AsString;
     Lbl_dw.Caption:=fieldbyname('jldw').AsString;
     Ed_rksl.Text:=fieldbyname('rksl').AsString;
     lbl_ykdw.Caption:=fieldbyname('jldw').AsString;
     Ed_pfj.Text:=fieldbyname('pfj').AsString;
     Ed_rkje.Text:=fieldbyname('rkje').AsString;
     Ed_lc.Text:=fieldbyname('cje').AsString;
     Ed_sccj.tag :=fieldbyname('cjbm').AsInteger;
     Ed_sccj.Text :=fieldbyname('produce').AsString;
     Ed_ypph.Text:=fieldbyname('ypph').AsString;
     Ed_fph.Text:=fieldbyname('rkdh').AsString;
     Ed_pwh.Text:=fieldbyname('pwh').AsString;
     //cbb_rklb.ItemIndex:=fieldbyname('rklb').AsInteger-1;
     Ed_yfk.Text:=fieldbyname('yfke').AsString;
     Date_sxrq.Date:=fieldbyname('sxrq').AsDateTime;
     Date_scrq.Date:=fieldbyname('scrq').AsDateTime;
     Date_rkrq.Date:=fieldbyname('rkrq').AsDateTime;
   end;
   btn_save.Tag:=updateState;
   btn_save.Enabled:=true;
   btn_update.Enabled:=false;
   btn_add.Enabled:=true;
end;

function TFrmMedInStore.CheckInput: boolean;
var ErrorMess:string;
label Error;
begin
//
if Ed_ghdw.text='' then
  begin
    ErrorMess:='请选择供货单位。';
    Ed_ghdw.SetFocus;
    goto Error;
  end;

if Ed_ghdw.tag=0 then
begin
    ErrorMess:='请从字典表选择供应商，不能手工录入！';
    Ed_ghdw.SetFocus;
    goto Error;
end;
if Ed_ypbh.text='' then
  begin
    ErrorMess:='请选择药品。';
    Ed_ypbh.SetFocus;
    goto Error;
  end;
if Ed_sccj.text='' then
  begin
    ErrorMess:='请选择厂家。';
    Ed_sccj.SetFocus;
    goto Error;
  end;
if Ed_ypph.text='' then
  begin
    ErrorMess:='请输入药品批号。';
    Ed_ypph.SetFocus;
    goto Error;
  end;
if Ed_fph.text='' then
  begin
    ErrorMess:='请输入药品发票号。';
    Ed_fph.SetFocus;
    goto Error;
  end;
if cbb_rklb.ItemIndex<0 then
  begin
    ErrorMess:='请选择药品入库类别。';
    cbb_rklb.SetFocus;
    goto Error;
  end;
if Ed_yfk.text='' then
  begin

    ErrorMess:='请输入药品入库付款金额。';
    Ed_yfk.SetFocus;
    goto Error;
  end;
result:=false;
exit;
Error:
  begin
    application.MessageBox(pchar(ErrorMess),'信使',mb_ok);
    result:=true;
    exit;
  end;

end;

procedure TFrmMedInStore.DelMedTemp(rkxh: integer);
begin
  with dm.Q_comm do
  begin
   close;
   sql.Clear;
   sql.Add('delete xykr_temp where rkxh=:rkxh');
   parambyname('rkxh').asinteger:=rkxh;
   execsql;
  end;
end;

procedure TFrmMedInStore.DelTemp(opid: integer);
begin
   with dm.Q_comm do
  begin
   close;
   sql.Clear;
   sql.Add('delete xykr_temp where opid=:opid');
   parambyname('opid').asinteger:=opid;
   try
     execsql;
   except
     exit;
   end;
  end;
end;

function TFrmMedInStore.ListMedTemp(opid: integer): boolean;
begin
   result:=false;
  with dm.Q_rktemp do
    begin
      close;
      sql.Clear;
      sql.Add(' select a.ypbh,b.ym,b.gg,a.jhj,a.pfj,a.lsj,a.rksl,zje=rksl*a.lsj,rkje=rksl*a.pfj,cje=(a.lsj-a.pfj)*rksl,b.jldw,a.rkxh,');
      sql.Add(' a.cjbm,a.produce,b.ybbm_country,b.ybmc_country,b.jx,b.hsb,b.zxdw,a.ypph,a.pwh,a.scrq,a.sxrq,a.rkrq,a.rklb,a.yfke,a.rkdh,');
      sql.Add(' certify,face,explain,StoreCondition,CheckDate,CheckConclusion');
      sql.Add(' from xykr_temp a,xyzb b ');
      sql.Add(' where a.ypbh=b.ypbh ');
      sql.Add(' and a.opid=:opid ');
      sql.Add(' order by a.rkxh');
      ParamByName('opid').asinteger:=opid;
      open;
      if isempty then
      begin
        cxgrdbtblvw.DataController.DataSource:=nil;
        btn_rkl.Enabled:=false;
        exit;
      end else
       cxgrdbtblvw.DataController.DataSource:=dm.DS_rktemp;
       btn_rkl.Enabled:=true;
    end;
end;

function TFrmMedInStore.searchhistory(ypbh: string): boolean;
begin

end;

procedure TFrmMedInStore.SearchMedinfo(yfbm, SearchType: integer; pym: string);
begin

end;

procedure TFrmMedInStore.SearchProduce(pym: string);
begin

end;

procedure TFrmMedInStore.SearchSuply(pym: string);
begin

end;

procedure TFrmMedInStore.SetPerson(Combox: TcxComboBox; PersonType: integer);
begin

end;

procedure TFrmMedInStore.UpdateMedTemp(rkxh: integer);
begin

end;

end.
