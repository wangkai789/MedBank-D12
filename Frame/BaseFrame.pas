unit BaseFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCardView, cxGridTableView,
  Grids, DBGrids, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls,
  ComCtrls, Buttons, MemDS, DBAccess, Uni, cxLookAndFeels, cxLookAndFeelPainters,
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
  TFrame_base = class(TFrame)
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
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
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
    btn_SearchInStoreTotal: TBitBtn;
    Q_Result: TUniQuery;
    DS_Result: TDataSource;
    DS_xyzb: TDataSource;
    Q_xyzb: TUniQuery;
    cbb_yfbm: TComboBox;
    Label39: TLabel;
    DBGrid_xyzb: TDBGrid;
    procedure edt_SearchConditionKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_xyzbDblClick(Sender: TObject);
    procedure DBGrid_xyzbExit(Sender: TObject);
    procedure DBGrid_xyzbKeyPress(Sender: TObject; var Key: Char);
    procedure btn_ExportXlsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   FTemplateName:STRING;
  end;

implementation
uses InterfaceMedStore,data;

{$R *.dfm}

procedure TFrame_base.edt_SearchConditionKeyPress(Sender: TObject;var Key: Char);
var  MYMedStore:IMedStore;
begin
  IF (key<>#13) THEN exit;
  MYMedStore:=TMedStore.Create;
  IF MYMedStore.SearchMedinfo(Q_xyzb,0,edt_SearchCondition.Text) THEN
  begin
    DBGrid_XYZB.Visible := True;
    DBGrid_XYZB.SetFocus;
  end;
end;

procedure TFrame_base.DBGrid_xyzbDblClick(Sender: TObject);
VAR  aypbh,aym:STRING;
begin
  aypbh:=DBGrid_xyzb.DataSource.DataSet.fieldbyname('ypbh').AsString;
  aym:=DBGrid_xyzb.DataSource.DataSet.fieldbyname('ym').AsString+DBGrid_xyzb.DataSource.DataSet.fieldbyname('gg').AsString;
  edt_SearchCondition.Text:=aypbh;
  lbl_MedName.Caption:=aym;
  btn_Search.SetFocus;
end;

procedure TFrame_base.DBGrid_xyzbExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFrame_base.DBGrid_xyzbKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_xyzbDblClick(Sender);
end;

procedure TFrame_base.btn_ExportXlsClick(Sender: TObject);
var  MYMedStore:IMedStore;
begin
  if not Q_Result.IsEmpty then
  begin
    MYMedStore:=TMedStore.Create;
    MYMedStore.ExportXLS('Q_Result',Q_Result,DT_from.date,DT_to.Date,FTemplateName);
  end  else
  begin
    MessageDlg('没有数据不能导出XLS！',mtInformation,[mbOK],0);
    exit;
  end;
end;

end.
