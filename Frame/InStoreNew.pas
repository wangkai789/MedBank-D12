unit InStoreNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, ComCtrls, Buttons, MemDS,
  DBAccess, Uni, cxGridCardView, Grids, DBGrids, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  TFrame_InStoreNew = class(TFrame)
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label7: TLabel;
    Label18: TLabel;
    lbl_MedName: TLabel;
    btn_Search: TBitBtn;
    DT_from: TDateTimePicker;
    DT_to: TDateTimePicker;
    edt_SearchCondition: TEdit;
    btn_ExportXls: TBitBtn;
    BitBtn11: TBitBtn;
    rg1: TRadioGroup;
    btn_SearchInStoreTotal: TBitBtn;
    Q_Master: TUniQuery;
    DS_master: TDataSource;
    DS_detail: TDataSource;
    Q_detail: TUniQuery;
    rg_SearchCondition: TRadioGroup;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    Splitter1: TSplitter;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxgrdbtblvw3: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Q_detailALL: TUniQuery;
    DS_detailALL: TDataSource;
    cbb_rklb: TComboBox;
    Label1: TLabel;
    btn_print: TBitBtn;
    Label2: TLabel;
    cbb_ghdw: TComboBox;
    Q_xyzb: TUniQuery;
    DS_xyzb: TDataSource;
    Label39: TLabel;
    cbb_yfbm: TComboBox;
    DBGrid_xyzb: TDBGrid;
    Q_Result: TUniQuery;
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_SearchInStoreTotalClick(Sender: TObject);
    procedure cxgrdbtblvwCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_printClick(Sender: TObject);
    procedure btn_ExportXlsClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid_xyzbDblClick(Sender: TObject);
    procedure DBGrid_xyzbExit(Sender: TObject);
    procedure DBGrid_xyzbKeyPress(Sender: TObject; var Key: Char);
    procedure edt_SearchConditionKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses InterfaceMedStore,data, reportform;


{$R *.dfm}

procedure TFrame_InStoreNew.btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
     ayfbm,arklb,aghdwcode:integer;
begin
  MYMedStore:=TMedStore.Create;
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  arklb:=strtoint(dm.GetComboxValue(cbb_rklb,':',true));
  aghdwcode:=strtoint(dm.GetComboxValue(cbb_ghdw,':',true));

  CASE PageControl1.ActivePageIndex OF
  0:begin
    //dm.InitGrid(1,'MedStore_InStoreMaster.xml',cxgrdbtblvw);
    MYMedStore.SearchInStoreMaster(Q_master,ayfbm,rg_SearchCondition.ItemIndex,DT_from.date,DT_to.Date,edt_SearchCondition.Text,arklb,aghdwcode);
    Q_detail.Close;
  end;
  1:begin
    //dm.InitGrid(1,'MedStore_InStoreDetailALL.xml',cxgrdbtblvw3);
    MYMedStore.SearchInStoreDetail(Q_detailALL,ayfbm,DT_from.date,DT_to.Date,rg_SearchCondition.ItemIndex,edt_SearchCondition.Text,arklb,aghdwcode);
  end;
  END;
end;

procedure TFrame_InStoreNew.btn_SearchInStoreTotalClick(Sender: TObject);
var  MYMedStore:IMedStore;
     alsh:integer;
     arkrq:string;
begin
  if cxgrdbtblvw.DataController.DataSet.IsEmpty then exit;
  MYMedStore:=TMedStore.Create;
 // dm.InitGrid(1,'MedStore_InStoreDetail.xml',cxGridDBTableView4);
  alsh :=cxgrdbtblvw.DataController.DataSet.fieldbyname('lsh').asinteger;
  arkrq:=cxgrdbtblvw.DataController.DataSet.fieldbyname('rkrq').AsString;
  MYMedStore.SearchInStoreDetail(Q_detail,arkrq,alsh);
end;

procedure TFrame_InStoreNew.cxgrdbtblvwCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btn_SearchInStoreTotal.Click;
end;

procedure TFrame_InStoreNew.btn_printClick(Sender: TObject);
var  MYMedStore:IMedStore;
     alsh:integer;
     arkrq:string;
begin
    MYMedStore:=TMedStore.Create;
    alsh:=cxgrdbtblvw.DataController.DataSet.fieldbyname('lsh').asinteger;
    arkrq:=cxgrdbtblvw.DataController.DataSet.fieldbyname('rkrq').AsString;
    Fm_report.FPrintType:='(补打)';
    MYMedStore.PrintInStore(Fm_report.frxrprt1,dm.Q_public,arkrq,alsh);
end;

procedure TFrame_InStoreNew.btn_ExportXlsClick(Sender: TObject);
var  MYMedStore:IMedStore;
     aMyTitle:TMyTitle;
     aTemplateName,arklbName,aghdw:string;
begin
  arklbName:=dm.GetComboxValue(cbb_rklb,':',false);
  aghdw:=dm.GetComboxValue(cbb_ghdw,':',false);
  case  PageControl1.ActivePageIndex of
  0:begin
    if not Q_Master.IsEmpty then
    begin
      aTemplateName:='入库汇总';
      aMyTitle:=TMyTitle.Create;
      aMyTitle.Title:='入库汇总查询';
      aMyTitle.FrklbName:=arklbName;
      aMyTitle.FDateFrom:=datetostr(DT_from.date)+'至'+datetostr(DT_to.Date);
      aMyTitle.FopidName:=dm.FopidName;
      aMyTitle.Fghdw:=aghdw;
      MYMedStore:=TMedStore.Create;
      MYMedStore.ExportXLSTitle('Q_Result',Q_Master,DT_from.date,DT_to.Date,aTemplateName,aMyTitle);
    end  else
    begin
      MessageDlg('没有数据不能导出XLS！',mtInformation,[mbOK],0);
      exit;
    end;
  end;

  1:begin
    if not Q_detailALL.IsEmpty then
    begin
      aTemplateName:='入库明细';
      aMyTitle:=TMyTitle.Create;
      aMyTitle.Title:='入库明细查询';
      aMyTitle.FrklbName:=arklbName;
      aMyTitle.FDateFrom:=datetostr(DT_from.date)+'至'+datetostr(DT_to.Date);
      aMyTitle.FopidName:=dm.FopidName;
      aMyTitle.Fghdw:=aghdw;
      MYMedStore:=TMedStore.Create;
      MYMedStore.ExportXLSTitle('Q_Result',Q_detailALL,DT_from.date,DT_to.Date,aTemplateName,aMyTitle);
    end  else
    begin
      MessageDlg('没有数据不能导出XLS！',mtInformation,[mbOK],0);
      exit;
    end;
  end;
  end;
end;

procedure TFrame_InStoreNew.PageControl1Change(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
 0:btn_print.Enabled:=true;
 1:btn_print.Enabled:=false;
 end;
end;

procedure TFrame_InStoreNew.DBGrid_xyzbDblClick(Sender: TObject);
VAR  aypbh,aym:STRING;
begin
  aypbh:=DBGrid_xyzb.DataSource.DataSet.fieldbyname('ypbh').AsString;
  aym:=DBGrid_xyzb.DataSource.DataSet.fieldbyname('ym').AsString+DBGrid_xyzb.DataSource.DataSet.fieldbyname('gg').AsString;
  edt_SearchCondition.Text:=aypbh;
  lbl_MedName.Caption:=aym;
  btn_Search.SetFocus;

end;

procedure TFrame_InStoreNew.DBGrid_xyzbExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFrame_InStoreNew.DBGrid_xyzbKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGrid_xyzbDblClick(Sender);
end;

procedure TFrame_InStoreNew.edt_SearchConditionKeyPress(Sender: TObject;
  var Key: Char);
var  MYMedStore:IMedStore;
     ayfbm:integer;
begin
 IF (key<>#13) THEN exit;
 ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
 MYMedStore:=TMedStore.Create;
 IF MYMedStore.SearchMedinfo(Q_xyzb,ayfbm,edt_SearchCondition.Text) THEN
 begin
   DBGrid_XYZB.Visible := True;
   DBGrid_XYZB.SetFocus;
 end;

end;

end.
