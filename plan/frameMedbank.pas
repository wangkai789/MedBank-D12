unit frameMedbank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView, cxGrid,
  cxGridCardView, cxClasses, StdCtrls, Buttons, ExtCtrls,ComObj,
  Grids, DBGrids, ComCtrls, cxLabel, MemDS, DBAccess, Uni,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  TFrame_Medbank = class(TFrame)
    GroupBox8: TGroupBox;
    lab_kc: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    RGp_Medlb: TRadioGroup;
    bbtn_kc: TBitBtn;
    bbtn_out1: TBitBtn;
    Ed_yznr_kc: TEdit;
    Ed_max: TEdit;
    ComBox_kind: TComboBox;
    btn_outnum: TBitBtn;
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
    SaveDialog1: TSaveDialog;
    DBG_kc: TDBGrid;
    Panel1: TPanel;
    dt_datefrom: TDateTimePicker;
    dt_dateto: TDateTimePicker;
    btn_save: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    btn_close: TBitBtn;
    Panel2: TPanel;
    ChckBx_zero: TCheckBox;
    cxstyl1: TcxStyle;
    DS_Result: TDataSource;
    Q_Result: TUniQuery;
    BitBtn11: TBitBtn;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    procedure bbtn_kcClick(Sender: TObject);
    procedure bbtn_out1Click(Sender: TObject);
    procedure Ed_yznr_kcKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_kcDblClick(Sender: TObject);
    procedure DBG_kcExit(Sender: TObject);
    procedure DBG_kcKeyPress(Sender: TObject; var Key: Char);
    procedure btn_outnumClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure Ed_yznr_kcChange(Sender: TObject);
  private
    { Private declarations }
    FirstAlpha:string[1];
  public
    { Public declarations }
  end;

implementation

uses data,ClassFactory,InterfaceMedStore;

{$R *.dfm}

procedure TFrame_Medbank.bbtn_kcClick(Sender: TObject);
var AMedlb, AMaxValue, AMedType: integer;
    AMedcode: string;
   MYMedStore:IMedStore;
begin
   MYMedStore:=TMedStore.Create;
   AMedlb:=RGp_Medlb.ItemIndex;
   AMaxValue:=strtoint(Ed_max.text);
   AMedType:=strtoint(copy(ComBox_kind.text,1,pos(':',ComBox_kind.text)-1));
   AMedcode:=trim(Ed_yznr_kc.text);
   MYMedStore.SearchStore(Q_Result,AMedlb,AMaxValue,AMedType,AMedcode,ChckBx_zero.Checked);
end;

procedure TFrame_Medbank.bbtn_out1Click(Sender: TObject);
var
  MYMedStore:IMedStore;
begin
  if not Q_Result.IsEmpty then
  begin
    MYMedStore:=TMedStore.Create;
    MYMedStore.ExportXLS('Q_Result',Q_Result,date(),date(),'库存表');
  end  else
  begin
    MessageDlg('没有数据不能导出XLS！',mtInformation,[mbOK],0);
    exit;
  end;
end;

procedure TFrame_Medbank.Ed_yznr_kcChange(Sender: TObject);
begin
  bbtn_kc.Click;
end;

procedure TFrame_Medbank.Ed_yznr_kcKeyPress(Sender: TObject;
  var Key: Char);
  var    codelen,searchway:integer;
begin
  //  If key<>#13 then Exit;

end;

procedure TFrame_Medbank.DBG_kcDblClick(Sender: TObject);
begin
   lab_kc.caption:=dm.Q_xyzb.fieldbyname('ym').asstring+':'+dm.Q_xyzb.fieldbyname('gg').asstring;
   Ed_yznr_kc.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
   bbtn_kc.SetFocus ;
end;

procedure TFrame_Medbank.DBG_kcExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFrame_Medbank.DBG_kcKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBG_kcDblClick(Sender);
end;

procedure TFrame_Medbank.btn_outnumClick(Sender: TObject);
begin
  Panel1.Visible:=true;
  dt_datefrom.DateTime:=now();
  dt_dateto.DateTime:=now();
end;

procedure TFrame_Medbank.Panel1Exit(Sender: TObject);
begin
  btn_close.Click();
end;

procedure TFrame_Medbank.btn_saveClick(Sender: TObject);
begin
  if application.messagebox('是否保存？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
   Medbank_Plan.Fdatefrom:=dt_datefrom.DateTime;
   Medbank_Plan.Fdateto:=dt_dateto.DateTime;
   Medbank_Plan.Fopid:=strtoint(dm.Fopid);
   Medbank_Plan.SetOutNum;
   btn_close.Click();
end;

procedure TFrame_Medbank.btn_closeClick(Sender: TObject);
begin
    Panel1.Visible:=false;
end;

end.
