unit yprk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, Grids, DBGrids,
  cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxDropDownEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,cxCalendar,
  cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, dxCore, cxDateUtils,
 cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxGridCardView;

type
  TFm_yprk = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Ed_ypmc: TEdit;
    Ed_jldw: TEdit;
    Ed_gg: TEdit;
    Ed_jx: TEdit;
    Ed_zxdw: TEdit;
    Ed_hsb: TEdit;
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
    Ed_pfj: TEdit;
    Ed_rkje: TEdit;
    Ed_lc: TEdit;
    Ed_cjxz: TEdit;
    Date_rkrq: TDateTimePicker;
    DBGrid_ghdw: TDBGrid;
    DBGrid_sccj: TDBGrid;
    Panel3: TPanel;
    BBtn_cacel: TBitBtn;
    BBtn_print: TBitBtn;
    BBtn_quit: TBitBtn;
    btn_rkl: TBitBtn;
    Btn_add: TBitBtn;
    Ed_ykkc: TEdit;
    Label34: TLabel;
    GroupBox4: TGroupBox;
    Label28: TLabel;
    CmbBx_certify: TComboBox;
    Label29: TLabel;
    CmbBx_face: TComboBox;
    Label30: TLabel;
    CmbBx_explain: TComboBox;
    Label31: TLabel;
    CmbBx_StoreCondition: TComboBox;
    Label32: TLabel;
    DtTm_CheckDate: TDateTimePicker;
    Label33: TLabel;
    cmbbx_CheckConclusion: TComboBox;
    Btn_del: TBitBtn;
    Ed_ghdw: TcxButtonEdit;
    Ed_ypbh: TcxButtonEdit;
    Ed_sccj: TcxButtonEdit;
    Ed_jhj: TcxTextEdit;
    Ed_rksl: TcxTextEdit;
    Ed_pwh: TcxTextEdit;
    Ed_ypph: TcxTextEdit;
    Ed_fph: TcxTextEdit;
    Ed_yfk: TcxTextEdit;
    ComboBox2: TcxComboBox;
    ComboBox3: TcxComboBox;
    ComboBox4: TcxComboBox;
    Label35: TLabel;
    Ed_zykc: TEdit;
    Label36: TLabel;
    Ed_mzkc: TEdit;
    BitBtn1: TBitBtn;
    cmbx_storetype: TComboBox;
    Label37: TLabel;
    lbl_ykdw: TLabel;
    RG_SearchType: TRadioGroup;
    DBG_history: TDBGrid;
    ed_lsj: TEdit;
    Label27: TLabel;
    Lbl_dw: TLabel;
    cbb_AddRate: TComboBox;
    Label38: TLabel;
    btn_update: TBitBtn;
    Label26: TLabel;
    btn_save: TBitBtn;
    cbb_rklb: TComboBox;
    Label39: TLabel;
    cbb_yfbm: TComboBox;
    Date_sxrq: TcxDateEdit;
    Date_scrq: TcxDateEdit;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxstyl1: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    DBGrid_xyzb: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure Ed_ghdwKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ghdwDblClick(Sender: TObject);
    procedure Ed_ypbhKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_xyzbDblClick(Sender: TObject);
    procedure DBGrid_ghdwKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ghdwExit(Sender: TObject);
    procedure DBGrid_xyzbKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_pfjKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_jhjKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_rkslKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_rkslExit(Sender: TObject);
    procedure Ed_sccjKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_sccjDblClick(Sender: TObject);
    procedure DBGrid_sccjKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_ypphKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_fphKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_yfkKeyPress(Sender: TObject; var Key: Char);
    procedure Date_scrqKeyPress(Sender: TObject; var Key: Char);
    procedure Date_rkrqKeyPress(Sender: TObject; var Key: Char);
    procedure BBtn_cacelClick(Sender: TObject);
    procedure Btn_addClick(Sender: TObject);
    procedure Ed_ypbhEnter(Sender: TObject);
    procedure Ed_jhjExit(Sender: TObject);
    procedure cbb_rklbKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBtn_printClick(Sender: TObject);
    procedure DBGrid_xyzbExit(Sender: TObject);
    procedure DBGrid_sccjExit(Sender: TObject);
    procedure btn_rklClick(Sender: TObject);
    procedure CmbBx_certifyKeyPress(Sender: TObject; var Key: Char);
    procedure CmbBx_faceKeyPress(Sender: TObject; var Key: Char);
    procedure CmbBx_explainKeyPress(Sender: TObject; var Key: Char);
    procedure DtTm_CheckDateKeyPress(Sender: TObject; var Key: Char);
    procedure cmbbx_CheckConclusionKeyPress(Sender: TObject; var Key: Char);
    procedure CmbBx_StoreConditionKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Btn_delClick(Sender: TObject);
    procedure Ed_ghdwPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Ed_ypbhPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Ed_sccjPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure Date_sxrqKeyPress(Sender: TObject; var Key: Char);
    procedure RG_SearchTypeClick(Sender: TObject);
    procedure ed_lsjKeyPress(Sender: TObject; var Key: Char);
    procedure btn_updateClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure cxgrdbtblvwCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Ed_pwhKeyPress(Sender: TObject; var Key: Char);
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
  Fm_yprk: TFm_yprk;
  sumkcl:real;
implementation

uses data,
     Factory,
     czydl,
     main,
     reportform,
     rkdcd,
     zpckgl,
     InterfaceMedStore;

{$R *.DFM}
function TFm_yprk.searchhistory(ypbh:string):boolean;
begin
  with dm.q_use do
  begin
    close;
    sql.clear;
    sql.add('select top 10 jldw,lsj,jhj,rkrq,lsh,inc_name');
    sql.add('from xykr a,ghdw b');
    sql.add('where a.ghdw=b.inc_code and  a.ypbh=:ypbh');
    sql.add('order by rkrq desc');
    ParamByName('ypbh').AsString:=ypbh;
    open;
    DBG_history.DataSource :=dm.DS_use ;
    result:=True;
  end;
end;

procedure TFm_yprk.FormShow(Sender: TObject);
var aSqlStr:string;
   MYMedStore:IMedStore;
begin
  dm.InitGrid(1,'MedBank_InStoreTemp.xml',cxgrdbtblvw);
  if self.tag=0 then self.Caption :='药品入库';
  if self.tag=1 then self.Caption :='退医药公司';
  btn_rkl.tag:=0;
  Btn_add.tag:=0;

  DBGrid_ghdw.Visible:=false;
  DBGrid_xyzb.Visible:=false;
  DBGrid_sccj.Visible:=false;

  BBtn_cacel.Click;

  btn_rkl.Enabled:=false;

  ComboBox2.Text:=dm.sysinfo.safekeep;
  ComboBox3.Text:=dm.sysinfo.purchase;
  ComboBox4.Text:=dm.sysinfo.accountant;



  CmbBx_face.Text:=trim(dm.sysinfo.face);
  CmbBx_explain.Text:=trim(dm.sysinfo.explain);
  CmbBx_StoreCondition.Text:=trim(dm.sysinfo.StoreCondition);
  CmbBx_CheckConclusion.Text:=trim(dm.sysinfo.CheckConclusion);
  CmbBx_certify.Text:=trim(dm.sysinfo.certify);

  Ed_ykkc.Clear;
  Ed_zykc.Clear;
  Ed_mzkc.Clear;

  DBGrid_xyzb.Left:=71;
  DBGrid_xyzb.Top:=106;
  DBGrid_sccj.Left:=72;
  DBGrid_sccj.Top:=178;
  DBGrid_ghdw.Left:=153;
  DBGrid_ghdw.Top:=62;

  dm.SetStoreValue(cmbx_storetype);
  cbb_AddRate.ItemIndex:=0;
 // DelTemp(strtoint(dm.Fopid));

  if dm.sysinfo.SalesPriceFlag then
  begin
    ed_lsj.Enabled:=true;
    cbb_AddRate.Enabled:=true;
    DM.SetAdditionRateValue(cbb_AddRate);
    cbb_AddRate.ItemIndex :=dm.GetComboxIndex(cbb_AddRate,dm.sysinfo.DefRateMed);
  end else
  begin
    ed_lsj.Enabled:=false;
    cbb_AddRate.Enabled:=false;
  end;
  //2023.10.30 wk  入库类别
  aSqlStr:='select bh,mc from pub_constant where kind=70';
  dm.SetCmbxValue(cbb_rklb,aSqlStr,2);
  cbb_rklb.ItemIndex:=0;

  //--2023.12.06 wk 库房类别
  MYMedStore:=TMedStore.Create;
  MYMedStore.GetYfbm(dm.Q_comm,cbb_yfbm,false);
  //---
  ListMedTemp(strtoint(dm.Fopid));
  Btn_add.Click;
  self.Caption:=dm.sysinfo.hospitalName+'-'+'入库';
end;

procedure TFm_yprk.Ed_ghdwKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  SearchSuply(TRIM(Ed_ghdw.TEXT));
end;
procedure TFm_yprk.DBGrid_ghdwDblClick(Sender: TObject);
begin
  Ed_ghdw.text:=dm.q_comm['inc_name'];
  Ed_ghdw.tag:=dm.Q_comm['inc_code'];
  Ed_ypbh.SetFocus;
end;

procedure TFm_yprk.Ed_ypbhKeyPress(Sender: TObject; var Key: Char);
var  ayfbm:integer;
begin
  if key<>#13 then exit;
  if Trim(Ed_ghdw.Text)='' then
  begin
    application.MessageBox('请选择供货单位！','提示',0+mb_iconstop);
    Ed_ghdw.SetFocus;
    Exit;
  end  else
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  SearchMedinfo(ayfbm,RG_SearchType.ItemIndex,trim(Ed_ypbh.Text));
end;

procedure TFm_yprk.DBGrid_xyzbDblClick(Sender: TObject);
var ykkc:currency;
    mzkc:currency ;
    zykc:currency;
begin
with dm.Q_MedStore do
  begin
    Ed_ypbh.text:= Fieldbyname('ypbh').AsString;
    Ed_ypmc.Text := Fieldbyname('ym').AsString;
    Ed_jldw.Text:= Fieldbyname('jldw').AsString;
    Ed_gg.Text:= Fieldbyname('gg').AsString;
    Ed_jx.Text:= Fieldbyname('jx').AsString;
    Ed_zxdw.Text:= Fieldbyname('zxdw').AsString;
    Ed_hsb.Text:= Fieldbyname('hsb').AsString;
    Ed_pfj.Text:= Fieldbyname('pfj').AsString;
    Ed_lsj.Text:= Fieldbyname('ylsj').AsString;
    Lbl_dw.Caption:= '元/'+trim(Fieldbyname('jldw').AsString);
    Lbl_ykdw.Caption:= trim(Fieldbyname('jldw').AsString);
    dm.searchkc(dm.q_use,Ed_ypbh.text,ykkc,mzkc,zykc);
    Ed_ykkc.text:=currtostr(ykkc)+Ed_jldw.text;
    Ed_mzkc.text:=currtostr(mzkc)+Ed_zxdw.text;
    Ed_zykc.text:=currtostr(zykc)+Ed_zxdw.text;
    Ed_sccj.tag:=Fieldbyname('cjbm').asinteger;
    Ed_sccj.text:=Fieldbyname('produce').AsString;
    Ed_jhj.Text:=Fieldbyname('ypj').AsString;
    Ed_pwh.Text:=Fieldbyname('pwh').AsString;
    searchhistory(Ed_ypbh.text);
    if self.tag=1 then
    sumkcl:=Fieldbyname('kcl').Ascurrency;
  end;
  {case dm.q_MedStore['lb'] of
    1:cbb_rklb.Itemindex:=0;
    2:cbb_rklb.Itemindex:=4;
    3:cbb_rklb.Itemindex:=2;
  end;}
  // Ed_rksl.SetFocus;
  Ed_jhj.SetFocus;
end;

procedure TFm_yprk.DBGrid_ghdwKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_ghdwDblClick(Sender);
end;

procedure TFm_yprk.DBGrid_ghdwExit(Sender: TObject);
begin
  (sender as tdbgrid).Visible:=false;
end;

procedure TFm_yprk.DBGrid_xyzbKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_xyzbDblClick(Sender);
end;

procedure TFm_yprk.Ed_pfjKeyPress(Sender: TObject; var Key: Char);
begin
//  if key=#13 then Ed_jhj.SetFocus;
end;

procedure TFm_yprk.Ed_pwhKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then Btn_save.Click;
end;

procedure TFm_yprk.Ed_jhjKeyPress(Sender: TObject; var Key: Char);
begin
  ISDIGIT(KEY);
  if key=#13 then
  begin
    ed_rksl.enabled:=true;
    if dm.sysinfo.SalesPriceFlag then
    begin
    //ed_lsj.text:=formatcurr('#.###',(strtocurr(Ed_jhj.Text)*strtocurr(cbb_AddRate.Text)));
    ed_lsj.SetFocus;
    end else
    begin
       Ed_rksl.SetFocus;
    end;
  end;
end;

procedure TFm_yprk.Ed_rkslKeyPress(Sender: TObject; var Key: Char);
begin
 ISDIGIT(KEY);
 // if not (integer(key) in [8,13,46,48..57]) then  key:=#27;
  if (key=#13) and (trim(Ed_rksl.text)<>'')then Ed_ypph.SetFocus;
end;

procedure TFm_yprk.Ed_rkslExit(Sender: TObject);
begin
  try
    if tag=0 then
      if strtocurr(ed_rksl.text)<0 then
      begin
        application.MessageBox('入库数量必须为正数！！','出错信息',16);
        ed_rksl.SetFocus;
        exit;
      end;
    if tag=1 then
      if (strtocurr(ed_rksl.text)>=0) or (abs(strtocurr(ed_rksl.text))>sumkcl) then
      begin
        application.MessageBox('输入的入库数量必须为负数并且小于该药品总库存量！！','出错信息',16);
        ed_rksl.SetFocus;
        exit;
      end;
    ed_rkje.text:=floattostrf(strtofloat(ed_jhj.text)*strtofloat(ed_rksl.text),fffixed,10,2);
    ed_lc.text:=floattostrf(((strtofloat(ed_lsj.text)-strtofloat(ed_pfj.text))*strtofloat(ed_rksl.text)),fffixed,10,2);
  except
    application.MessageBox('请输入入库数量！','出错',16);
    ed_rksl.Clear;
   // ed_rksl.SetFocus;
    exit;
  end;
end;

procedure TFm_yprk.Ed_sccjKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
   SearchProduce(trim(Ed_sccj.text));
end;

procedure TFm_yprk.DBGrid_sccjDblClick(Sender: TObject);
begin
  Ed_sccj.tag:=dbgrid_sccj.Fields[0].AsInteger;
  Ed_sccj.text:=dbgrid_sccj.Fields[1].asstring;
  Ed_cjxz.text:=dbgrid_sccj.Fields[3].asstring;
  Ed_ypph.SetFocus;
end;

procedure TFm_yprk.DBGrid_sccjKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_sccjDblClick(Sender);
end;

procedure TFm_yprk.Ed_ypphKeyPress(Sender: TObject; var Key: Char);
begin
//  ISDIGIT(KEY);
  if key<>#13 then exit;
  //if trim(tedit(sender).Text)='' then  tedit(sender).Text:='0';
  if trim(tedit(sender).Text)<>'' then    Date_sxrq.SetFocus;
 // Ed_fph.SetFocus;

end;

procedure TFm_yprk.Ed_fphKeyPress(Sender: TObject; var Key: Char);
begin
  ISDIGIT(KEY);
  if key<>#13 then exit;
  if trim(tedit(sender).Text)='' then  tedit(sender).Text:='0';
  Ed_pwh.SetFocus;
end;

procedure TFm_yprk.Ed_yfkKeyPress(Sender: TObject; var Key: Char);
begin
  ISDIGIT(KEY);
  if key=#13 then
  begin
    if Ed_yfk.text='' then  Ed_yfk.text:='0';
    Ed_fph.SetFocus;
  end;
end;

procedure TFm_yprk.Date_scrqKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (Date_scrq.Text<>'')  then Ed_yfk.SetFocus;
end;

procedure TFm_yprk.Date_rkrqKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then Date_sxrq.SetFocus;
end;

procedure TFm_yprk.BBtn_cacelClick(Sender: TObject);
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

procedure TFm_yprk.Btn_addClick(Sender: TObject);
begin
 btn_save.Tag:=AddState;
 Btn_add.Enabled:=false;
 Btn_update.Enabled:=true;
 btn_save.Enabled:=true;
end;

procedure TFm_yprk.Ed_ypbhEnter(Sender: TObject);
begin
  ed_ypbh.clear;
  DBG_history.DataSource:=Nil ;
end;

procedure TFm_yprk.Ed_jhjExit(Sender: TObject);
begin
  if ed_jhj.text=''  then
  begin
    application.MessageBox('请输入进货价！','出错',16);
    ed_jhj.setfocus;
  end
  else
  Ed_pfj.text:=ed_jhj.text;
end;

procedure TFm_yprk.cbb_rklbKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then ed_yfk.setfocus;
end;

procedure TFm_yprk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cxgrdbtblvw.DataController.DataSource<>nil then cxgrdbtblvw.DataController.DataSource:=nil;
  ed_ghdw.enabled:=true;
  cbb_rklb.enabled:=true;
  cbb_yfbm.enabled:=true;
  btn_add.tag:=0;
  dm.q_public.close;
  dm.Q_rktemp.close;
end;

procedure TFm_yprk.BBtn_printClick(Sender: TObject);
var  MYMedStore:IMedStore;
     alsh:integer;
     arkrq:string;
begin
 { fm_rkdcd.tag:=0;
  fm_rkdcd.RadioGroup1.ItemIndex:=0;
  fm_rkdcd.EdCode.text:=inttostr(Flsh);
  fm_rkdcd.Ed_year.text:=inttostr(Fyear);
  fm_rkdcd.ed_month.text:=inttostr(Fmonth);
  fm_rkdcd.showmodal;}
    arkrq:=datetostr(date());
    Fm_report.FPrintType:='';
    MYMedStore:=TMedStore.Create;
    MYMedStore.PrintInStore(Fm_report.frxrprt1,dm.Q_public,arkrq,Flsh);
end;

procedure TFm_yprk.DBGrid_xyzbExit(Sender: TObject);
begin
   DBGrid_xyzb.visible:=false;
end;

procedure TFm_yprk.DBGrid_sccjExit(Sender: TObject);
begin
  DBGrid_sccj.Visible :=false;
end;

procedure TFm_yprk.btn_rklClick(Sender: TObject);
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

function TFm_yprk.CheckInput: boolean;
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



procedure TFm_yprk.SetPerson(Combox: TcxComboBox; PersonType: integer);
begin
    with dm.q_comm do
    begin
      close;
      sql.clear;
      sql.add('Select bh,xm from zgzb where zcbm=:zcbm and ksbm=500');
      parambyname('zcbm').asinteger:=PersonType;
      open;
      //combox.Properties.Items
      combox.Properties.Items.clear;
      while not eof do
      begin
        combox.Properties.Items.add(fieldbyname('bh').asstring+':'+fieldbyname('xm').asstring);
        next;
      end;
      combox.ItemIndex:=0;
   end;
end;

procedure TFm_yprk.CmbBx_certifyKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then CmbBx_face.SetFocus;
end;

procedure TFm_yprk.CmbBx_faceKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then CmbBx_explain.SetFocus;
end;

procedure TFm_yprk.CmbBx_explainKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then CmbBx_StoreCondition.SetFocus;
end;

procedure TFm_yprk.DtTm_CheckDateKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then CmbBx_CheckConclusion.SetFocus;
end;

procedure TFm_yprk.cmbbx_CheckConclusionKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then Btn_add.SetFocus;
end;

procedure TFm_yprk.CmbBx_StoreConditionKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then DtTm_CheckDate.SetFocus;
end;

procedure TFm_yprk.cxgrdbtblvwCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btn_update.Click;
end;

procedure TFm_yprk.SearchMedinfo(yfbm,SearchType:integer;pym: string);
var    MYMedStore:IMedStore;
       ayfbm:integer;
begin
 ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
 MYMedStore:=TMedStore.Create;
 IF MYMedStore.SearchMedinfo(dm.Q_MedStore,ayfbm,pym) THEN
 begin
   DBGrid_XYZB.Visible := True;
   DBGrid_XYZB.SetFocus;
 end;
end;

procedure TFm_yprk.SearchProduce(pym: string);
begin
 with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select 编号=a.cjbm,厂名=a.cm,拼音码=a.pym,性质=b.mc  from sccj a,cjxz b where a.xz=b.xzbm and a.pym like :pym or a.xz=b.xzbm and a.cm like :mcmc ');
    ParamByName('pym').asstring:=pym+'%';
    ParamByName('mcmc').asstring:=pym+'%';
    open;
    case recordcount of
      0:begin
          Application.MessageBox('无此生产厂家,请先增加生产厂家，然后输入！','提示',16);
          Exit;
        end;
      1:DBGrid_sccjDblClick(DBGrid_sccj);
      else begin
      DBGrid_sccj.Visible:=true;
      DBGrid_sccj.SetFocus;
      end;
    end;
  end;
end;

procedure TFm_yprk.SearchSuply(pym: string);
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select * from ghdw');
    sql.add('where (inc_call like :mpym) or (inc_name like :mdwmc) or (pym like :mpym)');
    sql.add('order by inc_code');
    ParamByName('mpym').asstring:='%'+pym+'%';
    ParamByName('mdwmc').asstring:='%'+pym+'%';
    open;
    case recordcount of
    0:begin
          Application.MessageBox('无此供货单位,请先增加供货单位，然后输入！','提示',16);
          Exit;
        end;
    1:DBGrid_ghdwDblClick(DBGrid_ghdw);
    else begin
      DBGrid_ghdw.Visible:=true;
      DBGrid_ghdw.SetFocus;
    end;
    end;
  end;
end;

procedure TFm_yprk.SpeedButton1Click(Sender: TObject);
begin
  SearchSuply(TRIM(Ed_ghdw.TEXT));
end;



procedure TFm_yprk.AddMedTemp(opid:integer);
begin
with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('exec  yp_rk_temp :mypbh , :mjldw ,:mrksl  , :mpfj  , :mjhj  , :mcjbm  ,'
     +' :mghdw  , :mpwh  , :mypph , :mscrq , :msxrq , :mcgy  , :mrkdh  , :mbgy ,'
     +' :myfke  , :mfhr  , :mrkrq ,:rklb,:mlsj , :opid,:certify,:face,:explain,:StoreCondition,'
     +' :CheckDate,:CheckConclusion,:produce');
     ParamByName('mypbh').AsString:=trim(ed_ypbh.text);
     ParamByName('mjldw').AsString:=trim(ed_jldw.Text);
     ParamByName('mrksl').Asfloat:=strtofloat(trim(ed_rksl.Text));
     ParamByName('mpfj').AsFloat:=StrTocurr(trim(ed_pfj.text));
     ParamByName('mjhj').AsFloat:=StrTocurr(trim(ed_jhj.text));
     ParamByName('mcjbm').AsSmallInt:=ed_sccj.tag;
     ParamByName('mghdw').AsSmallInt:=ed_ghdw.tag;
     ParamByName('mpwh').AsString:=ed_pwh.text;
     ParamByName('mypph').AsString:=ed_ypph.text;
     ParamByName('mscrq').Asdatetime:=Date_scrq.Date;
     ParamByName('msxrq').Asdatetime:=Date_sxrq.Date;
     ParamByName('mcgy').AsSmallInt:=strtoint(copy(ComboBox3.text,1,pos(':',ComboBox3.text)-1));
     ParamByName('mrkdh').AsString:=trim(Ed_fph.text);
     ParamByName('mbgy').AsSmallInt:=strtoint(copy(ComboBox2.text,1,pos(':',ComboBox2.text)-1));
     ParamByName('myfke').Asfloat:=StrToCurr(Ed_yfk.text);
     ParamByName('mfhr').AsSmallInt:=strtoint(copy(ComboBox4.text,1,pos(':',ComboBox4.text)-1));
     ParamByName('mrkrq').Asdatetime:=Date_rkrq.Datetime;
     ParamByName('rklb').Asinteger:=strtoint(dm.GetComboxValue(cbb_rklb,':',true));
     ParamByName('mlsj').AsFloat:=StrTocurr(trim(ed_lsj.text));
     ParamByName('opid').asinteger:=opid;
     ParamByName('certify').asstring:=trim(CmbBx_certify.Text);
     ParamByName('face').asstring:=trim(CmbBx_face.Text);
     ParamByName('explain').asstring:=trim(CmbBx_explain.text);
     ParamByName('StoreCondition').asstring:=trim(CmbBx_StoreCondition.text);
     ParamByName('CheckDate').Asdatetime:=DtTm_CheckDate.DateTime;
     ParamByName('CheckConclusion').asstring:=trim(CmbBx_CheckConclusion.Text);
     ParamByName('produce').asstring:=trim(Ed_sccj.text);
    try
      execsql;
      btn_rkl.Enabled:=true;
      ed_ghdw.enabled:=false;
      cbb_rklb.enabled:=false;
      cbb_yfbm.enabled:=false;
      BBtn_print.Enabled:=false;
      btn_add.tag:=1;
      BBtn_cacel.Click;
    except
      on E: Exception do
        begin
          application.MessageBox(pchar('增加药品出错！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
    end;
  end;
end;

procedure TFm_yprk.DelMedTemp(rkxh: integer);
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

function TFm_yprk.ListMedTemp(opid:integer):boolean;
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

procedure TFm_yprk.Btn_delClick(Sender: TObject);
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

procedure TFm_yprk.Ed_ghdwPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  SearchSuply(TRIM(Ed_ghdw.TEXT));
end;

procedure TFm_yprk.Ed_ypbhPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var  ayfbm:integer;
begin
 if Trim(Ed_ghdw.Text)='' then
  begin
    application.MessageBox('请选择供货单位！!','提示',0+mb_iconstop);
    Ed_ghdw.SetFocus;
    Exit;
  end  else
  begin
    ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
    SearchMedinfo(ayfbm,RG_SearchType.ItemIndex,trim(Ed_ypbh.Text));
  end;
end;

procedure TFm_yprk.Ed_sccjPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  SearchProduce(trim(Ed_sccj.text));
end;
procedure TFm_yprk.BitBtn1Click(Sender: TObject);
begin
   fm_zpckgl.Tag:=200;
   fm_zpckgl.showmodal;
end;

procedure TFm_yprk.Date_sxrqKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (Date_sxrq.Text<>'')  then Date_scrq.SetFocus;
end;

procedure TFm_yprk.DelTemp(opid: integer);
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

procedure TFm_yprk.RG_SearchTypeClick(Sender: TObject);
begin
  Ed_ypbh.SetFocus;
end;

procedure TFm_yprk.ed_lsjKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then    Ed_rksl.SetFocus;
end;

procedure TFm_yprk.btn_updateClick(Sender: TObject);
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

procedure TFm_yprk.UpdateMedTemp(rkxh: integer);
begin
with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('update  xykr_temp');
    sql.add('set    ');
  //  sql.add(' yphb=:ypbh    ');
    sql.add('jldw=:jldw    ');
    sql.add(',rksl=:rksl    ');
    sql.add(',pfj=:pfj    ');
    sql.add(',jhj=:jhj    ');
    sql.add(',lsj=:lsj    ');
    sql.add(',cjbm=:cjbm    ');
    sql.add(',produce=:produce');
    sql.add(',ghdw=:ghdw    ');
    sql.add(',pwh=:pwh    ');
    sql.add(',ypph=:ypph    ');
    sql.add(',rkdh=:rkdh    ');
    sql.add(',scrq=:scrq    ');
    sql.add(',sxrq=:sxrq    ');
    sql.add(',rkrq=:rkrq    ');
    sql.add(',yfke=:yfke    ');
    sql.add(',rklb=:rklb    ');
    sql.add('where rkxh=:rkxh');

  //ParamByName('ypbh').AsString:=trim(ed_ypbh.text);
     ParamByName('jldw').AsString:=trim(ed_jldw.Text);
     ParamByName('rksl').Asfloat:=strtocurr(trim(ed_rksl.Text));
     ParamByName('pfj').AsFloat:=StrTocurr(trim(ed_pfj.text));
     ParamByName('jhj').AsFloat:=StrTocurr(trim(ed_jhj.text));
     ParamByName('lsj').AsFloat:=StrTocurr(trim(ed_lsj.text));
     ParamByName('cjbm').AsSmallInt:=ed_sccj.tag;
     ParamByName('produce').asstring:=trim(Ed_sccj.text);
     ParamByName('ghdw').AsSmallInt:=ed_ghdw.tag;
     ParamByName('pwh').AsString:=trim(ed_pwh.text);
     ParamByName('ypph').AsString:=trim(ed_ypph.text);
     ParamByName('rkdh').AsString:=trim(Ed_fph.text);
     ParamByName('scrq').Asdatetime:=Date_scrq.Date;
     ParamByName('sxrq').Asdatetime:=Date_sxrq.Date;
     ParamByName('rkrq').Asdatetime:=Date_rkrq.Datetime;
     ParamByName('yfke').Asfloat:=StrToCurr(Ed_yfk.text);
     ParamByName('rklb').Asinteger:=strtoint(dm.GetComboxValue(cbb_rklb,':',true));
     ParamByName('rkxh').asinteger:=rkxh;
    try
      execsql;
      btn_rkl.Enabled:=true;
      ed_ghdw.enabled:=false;
      BBtn_print.Enabled:=false;
      BBtn_cacel.Click;
    except
      on E: Exception do
        begin
          application.MessageBox(pchar('修改药品出错！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
    end;
  end;
end;

procedure TFm_yprk.btn_saveClick(Sender: TObject);
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

end.
