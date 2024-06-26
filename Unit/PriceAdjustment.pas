unit PriceAdjustment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCardView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  ExtCtrls, MemDS, VirtualTable, ActnList, ComCtrls, ToolWin, Grids,
  DBGrids, VirtualDataSet, DBAccess, VirtualQuery, Uni,InterfaceMedStore,
  ImgList, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, System.Actions;

type
  TFrm_PriceAdjustment = class(TForm)
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
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    actlst1: TActionList;
    act_search: TAction;
    act_add_Detail: TAction;
    act_save: TAction;
    ds_PriceAdjust: TDataSource;
    Q_PriceAdjustment: TUniQuery;
    Q_XYZB: TUniQuery;
    DataSource1: TDataSource;
    act_add_Master: TAction;
    act_del: TAction;
    ImageList2: TImageList;
    act_update: TAction;
    act_audit: TAction;
    act_close: TAction;
    stat1: TStatusBar;
    tlb1: TToolBar;
    btn_add_Master: TToolButton;
    btn_search: TToolButton;
    btn_add: TToolButton;
    btn_update: TToolButton;
    btn_del: TToolButton;
    btn_Save: TToolButton;
    btn_audit: TToolButton;
    btn_close: TToolButton;
    pgc1: TPageControl;
    ts1: TTabSheet;
    Panel3: TPanel;
    grp1: TGroupBox;
    Label14: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label28: TLabel;
    edt_master_rowid: TEdit;
    dt_EffectiveDate: TDateTimePicker;
    dt_AdjustDate: TDateTimePicker;
    cbb_AddRate: TComboBox;
    chk_audit: TCheckBox;
    grp2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Lbl_jldw: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    edt_ypbh: TEdit;
    edt_ym: TEdit;
    edt_gg: TEdit;
    edt_produce: TEdit;
    edt_AdjustReason: TEdit;
    edt_OutPatientSalesPriceAdjust: TEdit;
    edt_InpatientSalesPriceAdjust: TEdit;
    edt_OutPatientSalesPrice: TEdit;
    edt_InpatientSalesPrice: TEdit;
    edt_PurchasePrice: TEdit;
    edt_PurchasePriceAdjust: TEdit;
    edt_rowid: TEdit;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    ts2: TTabSheet;
    DBGrid_xyzb: TDBGrid;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    dtp_from: TDateTimePicker;
    dtp_to: TDateTimePicker;
    spl1: TSplitter;
    dbgrd2: TDBGrid;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    BitBtn1: TBitBtn;
    act_search_master: TAction;
    Q_Master: TUniQuery;
    DS_Master: TDataSource;
    DS_detail: TDataSource;
    Q_detail: TUniQuery;
    edt_kcl: TEdit;
    Label9: TLabel;
    Lbl_zxdw: TLabel;
    Label21: TLabel;
    cbb_yfbm: TComboBox;
    Label39: TLabel;
    procedure act_searchExecute(Sender: TObject);
    procedure edt_ypbhKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_xyzbDblClick(Sender: TObject);
    procedure DBGrid_xyzbExit(Sender: TObject);
    procedure DBGrid_xyzbKeyPress(Sender: TObject; var Key: Char);
    procedure edt_OutPatientSalesPriceKeyPress(Sender: TObject;
      var Key: Char);
    procedure edt_InpatientSalesPriceKeyPress(Sender: TObject;
      var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edt_PurchasePriceAdjustKeyPress(Sender: TObject;
      var Key: Char);
    procedure edt_OutPatientSalesPriceAdjustKeyPress(Sender: TObject;
      var Key: Char);
    procedure edt_InpatientSalesPriceAdjustKeyPress(Sender: TObject;
      var Key: Char);
    procedure edt_AdjustReasonKeyPress(Sender: TObject; var Key: Char);
    procedure dt_EffectiveDateKeyPress(Sender: TObject; var Key: Char);
    procedure act_add_MasterExecute(Sender: TObject);
    procedure act_delExecute(Sender: TObject);
    procedure act_saveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdbtblvwDblClick(Sender: TObject);
    procedure edt_master_rowidKeyPress(Sender: TObject; var Key: Char);
    procedure act_updateExecute(Sender: TObject);
    procedure act_add_DetailExecute(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure act_auditExecute(Sender: TObject);
    procedure act_search_masterExecute(Sender: TObject);
    procedure pgc1Change(Sender: TObject);
    procedure dbgrd2CellClick(Column: TColumn);
  private
    { Private declarations }
    FPriceAdjustDetail:TPriceAdjustDetail;
    FPriceAdjustMaster:TPriceAdjustMaster;
    Fstate:integer;
    procedure SearchMedinfo();
    procedure ClearScreen();
    procedure SetPriceAdjustDetailValue();
    procedure GetPriceAdjustDetailValue();
  public
    { Public declarations }
  end;

const  AddState=1;
       UpdateState=2;

var
  Frm_PriceAdjustment: TFrm_PriceAdjustment;



implementation

uses data;

{$R *.dfm}

procedure TFrm_PriceAdjustment.act_searchExecute(Sender: TObject);
begin
 IF trim(edt_master_rowid.text)='' then
  begin
    application.MessageBox('没有调价单号请点击【生成单号】按钮！','信息',32);
    exit;
  end;

  if FPriceAdjustDetail.Search(Q_PriceAdjustment,strtoint(edt_master_rowid.text)) then
  begin
    if Q_PriceAdjustment.FieldByName('AuditState').AsBoolean then
    begin
      btn_add_Master.Enabled:=true;
      btn_search.Enabled:=true;
      btn_add.Enabled:=false;
      btn_update.Enabled:=false;
      btn_del.Enabled:=false;
      btn_Save.Enabled:=false;
      btn_audit.Enabled:=false;
      chk_audit.Checked:=true;
    end else
    begin
      btn_add_Master.Enabled:=true;
      btn_search.Enabled:=true;
      btn_add.Enabled:=true;
      btn_update.Enabled:=true;
      btn_del.Enabled:=true;
      btn_Save.Enabled:=true;
      btn_audit.Enabled:=true;
      chk_audit.Checked:=false;
    end;
  end else
  begin
      btn_add_Master.Enabled:=true;
      btn_search.Enabled:=true;
      btn_add.Enabled:=true;
      btn_update.Enabled:=true;
      btn_del.Enabled:=true;
      btn_Save.Enabled:=true;
      btn_audit.Enabled:=true;
      chk_audit.Checked:=false;
  end;
end;

procedure TFrm_PriceAdjustment.SearchMedinfo;
var  MYMedStore:IMedStore;
     ayfbm:integer;
begin
 ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
 MYMedStore:=TMedStore.Create;
 IF MYMedStore.SearchMedinfo(Q_xyzb,ayfbm,edt_ypbh.Text) THEN
 begin
   DBGrid_XYZB.Visible := True;
   DBGrid_XYZB.SetFocus;
 end;

end;

procedure TFrm_PriceAdjustment.edt_ypbhKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF (key=#13) THEN    SearchMedinfo;
end;

procedure TFrm_PriceAdjustment.DBGrid_xyzbDblClick(Sender: TObject);
begin
  with  DBGrid_xyzb.DataSource.DataSet do
  begin
    edt_ypbh.Text:=fieldbyname('ypbh').AsString;
    edt_YM.Text:=fieldbyname('ym').AsString;
    edt_gg.Text:=fieldbyname('gg').AsString;
    Lbl_jldw.Caption:=fieldbyname('jldw').AsString;
    lbl_zxdw.Caption:=fieldbyname('zxdw').AsString;
    edt_kcl.Text:=fieldbyname('kcl').AsString;

    Label17.Caption:=Lbl_jldw.Caption;
    Label19.Caption:=Lbl_jldw.Caption;
    Label15.Caption:=Lbl_jldw.Caption;
    Label18.Caption:=Lbl_jldw.Caption;
    Label20.Caption:=Lbl_jldw.Caption;
    edt_produce.Text:=fieldbyname('produce').AsString;
    edt_PurchasePrice.Text:=fieldbyname('pfj').AsString;
    edt_PurchasePriceAdjust.Text:=fieldbyname('pfj').AsString;

    edt_OutPatientSalesPrice.Text:=fieldbyname('mzylsj').AsString;
    edt_InpatientSalesPrice.Text:=fieldbyname('ylsj').AsString;
  end;
  edt_PurchasePriceAdjust.SetFocus;
end;

procedure TFrm_PriceAdjustment.DBGrid_xyzbExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFrm_PriceAdjustment.DBGrid_xyzbKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGrid_xyzbDblClick(Sender);
end;

procedure TFrm_PriceAdjustment.edt_OutPatientSalesPriceKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    edt_OutPatientSalesPriceAdjust.Text:=formatcurr('#.##',(strtocurr(tedit(sender).Text)*strtocurr(cbb_AddRate.Text)));
    edt_OutPatientSalesPriceAdjust.SetFocus;
  end;
end;

procedure TFrm_PriceAdjustment.edt_InpatientSalesPriceKeyPress(
  Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
   edt_InpatientSalesPriceAdjust.Text:=formatcurr('#.##',(strtocurr(tedit(sender).Text)*strtocurr(cbb_AddRate.Text)));
   edt_InpatientSalesPriceAdjust.SetFocus;
 end;
end;

procedure TFrm_PriceAdjustment.FormShow(Sender: TObject);
begin
  DM.SetAdditionRateValue(cbb_AddRate);
  cbb_AddRate.ItemIndex :=dm.GetComboxIndex(cbb_AddRate,dm.sysinfo.DefRateMed);
  dtp_from.DateTime:=date();
  dtp_to.DateTime:=date();
  pgc1.ActivePageIndex:=0;
  ClearScreen();
  self.Caption:=dm.sysinfo.hospitalName+'-'+'调价';
end;

procedure TFrm_PriceAdjustment.ClearScreen;
begin
  edt_ypbh.Clear;
  edt_ym.Clear;
  edt_gg.Clear;
  Lbl_jldw.Caption:='';
  Lbl_zxdw.Caption:='';
  edt_kcl.Clear;
  Label17.Caption:='';
  Label19.Caption:='';
  Label15.Caption:='';
  Label18.Caption:='';
  Label20.Caption:='';
  edt_produce.Clear;
  edt_PurchasePrice.Clear;
  edt_PurchasePriceAdjust.Clear;
  edt_OutPatientSalesPrice.Clear;
  edt_OutPatientSalesPriceAdjust.Clear;
  edt_InpatientSalesPrice.Clear;
  edt_InpatientSalesPriceAdjust.Clear;
  edt_AdjustReason.Clear;
  dt_EffectiveDate.Date:=date();
  dt_AdjustDate.Date:=date();
  edt_rowid.Clear;
  edt_PurchasePrice.Enabled:=false;
  edt_OutPatientSalesPrice.Enabled:=false;
  edt_InpatientSalesPrice.Enabled:=false;
  edt_ypbh.SetFocus;

end;

procedure TFrm_PriceAdjustment.edt_PurchasePriceAdjustKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    edt_OutPatientSalesPriceAdjust.Text:=formatcurr('#.##',(strtocurr(tedit(sender).Text)*strtocurr(cbb_AddRate.Text)));
    edt_InpatientSalesPriceAdjust.Text:=formatcurr('#.##',(strtocurr(tedit(sender).Text)*strtocurr(cbb_AddRate.Text)));
    edt_AdjustReason.SetFocus;
  end;
end;

procedure TFrm_PriceAdjustment.edt_OutPatientSalesPriceAdjustKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key=#13 then edt_InpatientSalesPriceAdjust.SetFocus;

end;

procedure TFrm_PriceAdjustment.edt_InpatientSalesPriceAdjustKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key=#13 then edt_AdjustReason.SetFocus;
end;

procedure TFrm_PriceAdjustment.edt_AdjustReasonKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then btn_save.Click;
end;

procedure TFrm_PriceAdjustment.dt_EffectiveDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then dt_AdjustDate.SetFocus;
end;

procedure TFrm_PriceAdjustment.act_add_MasterExecute(Sender: TObject);
begin
  FPriceAdjustMaster.EffectiveDate:=dt_EffectiveDate.DateTime;
  FPriceAdjustMaster.AdjustDate:=dt_AdjustDate.DateTime;
  FPriceAdjustMaster.opid:=STRTOINT(dm.Fopid);
  edt_master_rowid.Text:=inttostr(FPriceAdjustMaster.Add(DM.Q_comm));
  btn_add_Master.Enabled:=false;
  btn_search.Enabled:=true;
  btn_add.Enabled:=true;
  btn_update.Enabled:=true;
  btn_del.Enabled:=true;
  btn_Save.Enabled:=true;
  btn_audit.Enabled:=true;
  btn_add.Click;
  btn_search.Click;
  edt_ypbh.SetFocus;
end;

procedure TFrm_PriceAdjustment.act_delExecute(Sender: TObject);
var   arowid:integer;
      aym,amsg:string;
begin
  if Q_PriceAdjustment.IsEmpty then
  begin
   application.MessageBox('没有调价记录不能删除！','信息',32);
   exit;
  end;
  if chk_audit.Checked then
  begin
    application.MessageBox('已经审核不能删除！','信息',32);
    exit;
  end;
 arowid:=Q_PriceAdjustment.FieldByName('rowid').asinteger;
 aym:=Q_PriceAdjustment.FieldByName('ym').asstring;
 amsg:='是否删除['+aym+']'+'的信息？';
 if application.messagebox(pchar(amsg),'信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
 FPriceAdjustDetail.del(DM.Q_comm,arowid);
 btn_search.Click;
end;

procedure TFrm_PriceAdjustment.act_saveExecute(Sender: TObject);
var   arowid,amaster_rowid:integer;
begin

  if chk_audit.Checked then
  begin
    application.MessageBox('已经审核不能保存！','信息',32);
    exit;
  end;

  if  trim(edt_ypbh.Text)='' then
  begin
    application.MessageBox('请增加需要调价的药品！','信息',32);
    exit;
  end;

  if  (trim(edt_OutPatientSalesPriceAdjust.Text)='')  then
  begin
    application.MessageBox('调后门诊零售价不能为空！','信息',32);
    exit;
  end else
  begin
     if strtocurr(edt_OutPatientSalesPriceAdjust.Text)<=0 then
     begin
       application.MessageBox('调后门诊零售价需要大于0！','信息',32);
       edt_OutPatientSalesPriceAdjust.SetFocus;
       exit;
     end;
  end;

  if  (trim(edt_InpatientSalesPriceAdjust.Text)='')  then
  begin
    application.MessageBox('调后住院零售价不能为空！','信息',32);
    exit;
  end else
  begin
     if strtocurr(edt_InpatientSalesPriceAdjust.Text)<=0 then
     begin
       application.MessageBox('调后住院零售价需要大于0！','信息',32);
       edt_InpatientSalesPriceAdjust.SetFocus;
       exit;
     end;
  end;


  SetPriceAdjustDetailValue();
   case btn_save.Tag of
   AddState:
   begin
     amaster_rowid:=strtoint(edt_master_rowid.Text);
     FPriceAdjustDetail.Add(DM.Q_comm,amaster_rowid);
   end;
   UpdateState:
   begin
     arowid:=strtoint(edt_rowid.text);
     FPriceAdjustDetail.Update(DM.Q_comm,arowid);
   end;
   end;
   btn_add_Master.Enabled:=false;
   btn_Save.Enabled:=true;
   btn_add.Enabled:=true;
   btn_update.Enabled:=true;
   btn_del.Enabled:=true;
   btn_add.Click;
   btn_search.Click;
   Q_PriceAdjustment.Locate('rowid',arowid, []);
   ClearScreen();
end;

procedure TFrm_PriceAdjustment.SetPriceAdjustDetailValue;
begin
    FPriceAdjustDetail.ypbh:=TRIM(edt_ypbh.Text);
    FPriceAdjustDetail.PurchasePrice:=strtocurrdef(edt_PurchasePrice.text,0);
    FPriceAdjustDetail.PurchasePriceAdjust:=strtocurrdef(edt_PurchasePriceAdjust.text,0);
    FPriceAdjustDetail.InpatientSalesPrice:=strtocurrdef(edt_InpatientSalesPrice.text,0);
    FPriceAdjustDetail.InpatientSalesPriceAdjust:=strtocurrdef(edt_InpatientSalesPriceAdjust.text,0);
    FPriceAdjustDetail.OutPatientSalesPrice:=strtocurrdef(edt_OutPatientSalesPrice.text,0);
    FPriceAdjustDetail.OutPatientSalesPriceAdjust:=strtocurrdef(edt_OutPatientSalesPriceAdjust.text,0);
    FPriceAdjustDetail.AdjustReason:=trim(edt_AdjustReason.text);
    FPriceAdjustDetail.MedbankStore:=0;
    FPriceAdjustDetail.InpatientSotre:=strtocurrdef(edt_kcl.text,0);;
    FPriceAdjustDetail.rate:=strtocurr(cbb_AddRate.text);
end;

procedure TFrm_PriceAdjustment.FormCreate(Sender: TObject);
var    MYMedStore:IMedStore;
begin
 FPriceAdjustMaster:=TPriceAdjustMaster.Create;
 FPriceAdjustDetail:=TPriceAdjustDetail.Create;
 dm.InitGrid(1,'PriceAdjustment.xml',cxgrdbtblvw);
 dm.InitGrid(1,'PriceAdjustment.xml',cxGridDBTableView2);
 //--2023.12.06 wk 库房类别
  MYMedStore:=TMedStore.Create;
  MYMedStore.GetYfbm(dm.Q_comm,cbb_yfbm,false);
  //---
end;

procedure TFrm_PriceAdjustment.FormDestroy(Sender: TObject);
begin
  FPriceAdjustMaster.free;
  FPriceAdjustDetail.Free;
end;

procedure TFrm_PriceAdjustment.GetPriceAdjustDetailValue;
begin
  with Q_PriceAdjustment do
  begin
    edt_rowid.Text:=fieldbyname('rowid').AsString;
    edt_ypbh.Text:=fieldbyname('ypbh').AsString;
    edt_ym.Text:=fieldbyname('ym').AsString;
    edt_gg.Text:=fieldbyname('gg').AsString;
    edt_produce.Text:=fieldbyname('produce').AsString;
    edt_kcl.Text:=fieldbyname('InpatientSotre').AsString;

    edt_PurchasePrice.text:=fieldbyname('PurchasePrice').AsString;
    edt_PurchasePriceAdjust.text:=fieldbyname('PurchasePriceAdjust').AsString;
    edt_InpatientSalesPrice.text:=fieldbyname('InpatientSalesPrice').AsString;
    edt_InpatientSalesPriceAdjust.text:=fieldbyname('InpatientSalesPriceAdjust').AsString;
    edt_OutPatientSalesPrice.text:=fieldbyname('OutPatientSalesPrice').AsString;
    edt_OutPatientSalesPriceAdjust.text:=fieldbyname('OutPatientSalesPriceAdjust').AsString;
    edt_AdjustReason.text:=fieldbyname('AdjustReason').AsString;
    cbb_AddRate.text:=fieldbyname('Rate').AsString;
  end;
end;

procedure TFrm_PriceAdjustment.cxgrdbtblvwDblClick(Sender: TObject);
begin
  btn_update.click;
end;

procedure TFrm_PriceAdjustment.edt_master_rowidKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key=#13) and (trim(edt_master_rowid.Text)<>'') then
  btn_search.Click;
end;

procedure TFrm_PriceAdjustment.act_updateExecute(Sender: TObject);
begin
  if Q_PriceAdjustment.IsEmpty then
  begin
   application.MessageBox('没有调价记录不能修改！','信息',32);
   exit;
  end;
  if chk_audit.Checked then
  begin
    application.MessageBox('已经审核不能修改！','信息',32);
    exit;
  end;
  btn_save.Enabled:=true;
  btn_add_Master.Enabled:=false;
  btn_update.Enabled:=false;
  btn_add.Enabled:=false;
  btn_save.Tag:=UpdateState;
  edt_PurchasePriceAdjust.SetFocus;
  GetPriceAdjustDetailValue();
  stat1.Panels[0].Text:='修改';
end;

procedure TFrm_PriceAdjustment.act_add_DetailExecute(Sender: TObject);
begin
  IF trim(edt_master_rowid.text)='' then
  begin
    application.MessageBox('没有调价单号请点击【生成单号】按钮！','信息',32);
    exit;
  end;
   btn_save.Tag:=AddState;
   btn_save.Enabled:=true;
   btn_add.Enabled:=false;
   btn_update.Enabled:=false;
   stat1.Panels[0].Text:='新增';
end;

procedure TFrm_PriceAdjustment.act_closeExecute(Sender: TObject);
begin
 self.Close;
end;

procedure TFrm_PriceAdjustment.act_auditExecute(Sender: TObject);
begin
  IF trim(edt_master_rowid.text)='' then
  begin
    application.MessageBox('没有产生调价单号不能审核！','信息',32);
    exit;
  end;
  IF Q_PriceAdjustment.IsEmpty then
  begin
    application.MessageBox('没有增加调价记录不能审核！','信息',32);
    exit;
  end;

  if chk_audit.Checked then
  begin
     application.MessageBox('已经审核不能再次审核！','信息',32);
     exit;
  end;

  if application.messagebox('是否审核？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
  FPriceAdjustMaster.Rowid:=strtoint(edt_master_rowid.TEXT);
  FPriceAdjustMaster.EffectiveDate:=dt_EffectiveDate.DateTime;
  FPriceAdjustMaster.AdjustDate:=dt_AdjustDate.DateTime;
  FPriceAdjustMaster.opid:=STRTOINT(dm.Fopid);
  FPriceAdjustMaster.AuditState:=true;
  FPriceAdjustMaster.Update(dm.Q_comm);
  Q_PriceAdjustment.Close;
  ClearScreen;
  edt_master_rowid.Clear;

  btn_add_Master.Enabled:=true;
  btn_search.Enabled:=false;
  btn_add.Enabled:=false;
  btn_update.Enabled:=false;
  btn_del.Enabled:=false;
  btn_Save.Enabled:=false;
  btn_audit.Enabled:=false;

end;

procedure TFrm_PriceAdjustment.act_search_masterExecute(Sender: TObject);
begin
  FPriceAdjustMaster.Search(Q_Master,dtp_from.DateTime,dtp_to.DateTime);
end;

procedure TFrm_PriceAdjustment.pgc1Change(Sender: TObject);
begin
    if pgc1.ActivePageIndex=0 then
     tlb1.Enabled:=true
    else
     tlb1.Enabled:=false;
end;

procedure TFrm_PriceAdjustment.dbgrd2CellClick(Column: TColumn);
var  arowid:integer;
begin
  if Q_Master.IsEmpty then exit;
  arowid:=Q_Master.fieldbyname('rowid').AsInteger;
  FPriceAdjustDetail.Search(Q_detail,arowid);
end;

end.
