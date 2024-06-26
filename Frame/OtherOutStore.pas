unit OtherOutStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCardView, cxGridTableView,
  MemDS, DBAccess, Uni, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, ComCtrls, StdCtrls, Buttons,cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TFrame_OtherOutStore = class(TFrame)
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label7: TLabel;
    Label18: TLabel;
    lbl_MedName: TLabel;
    Label2: TLabel;
    btn_Search: TBitBtn;
    DT_from: TDateTimePicker;
    DT_to: TDateTimePicker;
    edt_SearchCondition: TEdit;
    btn_ExportXls: TBitBtn;
    BitBtn11: TBitBtn;
    btn_SearchDetail: TBitBtn;
    rg_SearchCondition: TRadioGroup;
    btn_print: TBitBtn;
    cbb_Reqdept: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    TabSheet2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxgrdbtblvw3: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Q_Master: TUniQuery;
    DS_master: TDataSource;
    DS_detail: TDataSource;
    Q_detail: TUniQuery;
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
    Q_detailALL: TUniQuery;
    DS_detailALL: TDataSource;
    rg1: TRadioGroup;
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_SearchDetailClick(Sender: TObject);
    procedure cxgrdbtblvwCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_printClick(Sender: TObject);
    procedure btn_ExportXlsClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses InterfaceMedStore,data, reportform;

{$R *.dfm}

procedure TFrame_OtherOutStore.btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
     aReqdeptid:integer;
     aifzf:boolean;
begin
  MYMedStore:=TMedStore.Create;
  aReqdeptid:=strtoint(dm.GetComboxValue(cbb_Reqdept,':',true));
  case rg1.ItemIndex of
  0:aifzf:=false;
  1:aifzf:=true;
  end;

  CASE PageControl1.ActivePageIndex OF
  0:begin
    //dm.InitGrid(1,'MedStore_OtherOutStorMaster.xml',cxgrdbtblvw);
    MYMedStore.SearchOtherOutStoreMaster(Q_master,DT_from.date,DT_to.Date,aReqdeptid,aifzf);
    Q_detail.Close;
  end;
  1:begin
    //dm.InitGrid(1,'MedStore_OtherOutStoreDetailALL.xml',cxgrdbtblvw3);
    MYMedStore.SearchOtherOutStoreDetail(Q_detailALL,DT_from.date,DT_to.Date,aReqdeptid,aifzf);
  end;
  END;
end;

procedure TFrame_OtherOutStore.btn_SearchDetailClick(
  Sender: TObject);
var  MYMedStore:IMedStore;
     aqldh:integer;
begin
  if cxgrdbtblvw.DataController.DataSet.IsEmpty then exit;
  MYMedStore:=TMedStore.Create;
  //dm.InitGrid(1,'MedStore_OtherOutStorDetail.xml',cxGridDBTableView4);
  aqldh :=cxgrdbtblvw.DataController.DataSet.fieldbyname('qldh').asinteger;
  MYMedStore.SearchOtherOutStoreDetail(Q_detail,aqldh);
end;

procedure TFrame_OtherOutStore.cxgrdbtblvwCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btn_SearchDetail.Click;
end;

procedure TFrame_OtherOutStore.btn_printClick(Sender: TObject);
var  MYMedStore:IMedStore;
     aqldh:integer;
begin
  MYMedStore:=TMedStore.Create;
  case PageControl1.ActivePageIndex of
  0:begin
    if cxgrdbtblvw.DataController.DataSet.IsEmpty then exit;
    aqldh :=cxgrdbtblvw.DataController.DataSet.fieldbyname('qldh').asinteger;
  end;
  1:begin
    if cxgrdbtblvw3.DataController.DataSet.IsEmpty then exit;
    aqldh :=cxgrdbtblvw3.DataController.DataSet.fieldbyname('qldh').asinteger;
  end;
  end;
  MYMedStore.PrintOtherOutStore(Fm_report.frxrprt1,dm.q_out,aqldh);
end;

procedure TFrame_OtherOutStore.btn_ExportXlsClick(Sender: TObject);
var  MYMedStore:IMedStore;
     aMyTitle:TMyTitle;
     aTemplateName,adeptName:string;
begin
  adeptName:=dm.GetComboxValue(cbb_Reqdept,':',false);
  case  PageControl1.ActivePageIndex of
  0:begin
    if not Q_Master.IsEmpty then
    begin
      aTemplateName:='其他出库汇总';
      aMyTitle:=TMyTitle.Create;
      aMyTitle.Title:='其他出库汇总查询';
      aMyTitle.FDateFrom:=datetostr(DT_from.date)+'至'+datetostr(DT_to.Date);
      aMyTitle.FopidName:=dm.FopidName;
      aMyTitle.FDeptName:=adeptName;
      MYMedStore:=TMedStore.Create;
      //MYMedStore.ExportXLSTitle(FlexCelReport1,XLSAdapter1,DT_from.date,DT_to.Date,aTemplateName,aMyTitle);
    end  else
    begin
      MessageDlg('没有数据不能导出XLS！',mtInformation,[mbOK],0);
      exit;
    end;
  end;

  1:begin
    if not Q_detailALL.IsEmpty then
    begin
      aTemplateName:='其他出库明细';
      aMyTitle:=TMyTitle.Create;
      aMyTitle.Title:='其他出库明细查询';
      //aMyTitle.FrklbName:=arklbName;
      aMyTitle.FDateFrom:=datetostr(DT_from.date)+'至'+datetostr(DT_to.Date);
      aMyTitle.FopidName:=dm.FopidName;
      aMyTitle.FDeptName:=adeptName;
      MYMedStore:=TMedStore.Create;
      //MYMedStore.ExportXLSTitle(FlexCelReport1,XLSAdapter1,DT_from.date,DT_to.Date,aTemplateName,aMyTitle);
    end  else
    begin
      MessageDlg('没有数据不能导出XLS！',mtInformation,[mbOK],0);
      exit;
    end;
  end;
  end;

end;

procedure TFrame_OtherOutStore.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if  ParName='hospital' then ParValue:=dm.SysInfo.hospitalName;
end;

end.
