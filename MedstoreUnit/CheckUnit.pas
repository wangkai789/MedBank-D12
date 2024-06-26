unit CheckUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ActnList, ImgList, cxGridCardView,
  cxGridTableView,MemDS, DBAccess, Uni, Grids, DBGrids, ComCtrls, ToolWin,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls,
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
  dxScrollbarAnnotations, System.Actions, System.ImageList;

type
  TFrm_check = class(TForm)
    spl1: TSplitter;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label7: TLabel;
    Label18: TLabel;
    lbl_MedName: TLabel;
    DT_from: TDateTimePicker;
    DT_to: TDateTimePicker;
    edt_SearchCondition: TEdit;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw_Master: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxgrdbtblvw_Detail: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tlb1: TToolBar;
    btn_search: TToolButton;
    btnSearchDetail: TToolButton;
    btn_Lock: TToolButton;
    btnDel: TToolButton;
    btnSave: TToolButton;
    btnsucce: TToolButton;
    btnclose: TToolButton;
    DBGrid_xyzb: TDBGrid;
    Q_Master: TUniQuery;
    DS_master: TDataSource;
    Q_Detail: TUniQuery;
    DS_detail: TDataSource;
    Q_xyzb: TUniQuery;
    DS_xyzb: TDataSource;
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
    il1: TImageList;
    actlst1: TActionList;
    act_searchMaster: TAction;
    act_searchDetail: TAction;
    act_Lock: TAction;
    act_succe: TAction;
    Act_export: TAction;
    act_Del: TAction;
    act_Save: TAction;
    act_close: TAction;
    cxstyl2: TcxStyle;
    cxStyle26: TcxStyle;
    btnExport: TToolButton;
    rg1: TRadioGroup;
    rg2: TRadioGroup;
    Panel1: TPanel;
    lbl_SchemeName: TLabel;
    cbb_yfbm: TComboBox;
    Label1: TLabel;
    procedure act_searchDetailExecute(Sender: TObject);
    procedure act_LockExecute(Sender: TObject);
    procedure act_succeExecute(Sender: TObject);
    procedure act_searchMasterExecute(Sender: TObject);
    procedure act_DelExecute(Sender: TObject);
    procedure Q_DetailBeforePost(DataSet: TDataSet);
    procedure act_SaveExecute(Sender: TObject);
    procedure cxgrdbtblvw_MasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure act_closeExecute(Sender: TObject);
    procedure rg_MedClassClick(Sender: TObject);
    procedure DBGrid_xyzbDblClick(Sender: TObject);
    procedure DBGrid_xyzbExit(Sender: TObject);
    procedure DBGrid_xyzbKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Act_exportExecute(Sender: TObject);
    procedure cxgrdbtblvw_DetailEditValueChanged(Sender: TcxCustomGridTableView;
        AItem: TcxCustomGridTableItem);
    procedure cxgrdbtblvw_DetailStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure edt_SearchConditionChange(Sender: TObject);
  private
    { Private declarations }
      procedure SetDetailGrdEditState();
  public
    { Public declarations }
  end;

var
  Frm_check: TFrm_check;

implementation

uses data,InterfaceMedStore, CheckSchemeUnit;

{$R *.dfm}

procedure TFrm_check.act_searchDetailExecute(Sender: TObject);
var aSchemeName:string;
begin
 if Q_Master.RecordCount<1 then exit;
 aSchemeName:=Q_Master.FieldByName('SDT').AsString+' '+
              Q_Master.FieldByName('SchemeName').AsString+' '+
              Q_Master.FieldByName('AuditState').AsString;
 lbl_SchemeName.Caption:=aSchemeName;
 SetDetailGrdEditState;
  with Q_detail do
  begin
    close;
    sql.Clear;
    sql.Add('select A.*,(ISNULL(A.PCL,A.KCL)-A.KCL) AS PCL_KCL,B.YM,B.GG,B.JX,B.LBM,b.scrq,b.sxrq,');
    sql.Add('KclRPAmt=round(a.kcl*a.pfj,2) ,PCLRPAmt=round(a.PCL*a.pfj,2) ,DiffRPAmt=round((a.pcl-a.kcl)*a.pfj,2),');
    sql.Add('KclSPAmt=round(a.kcl*a.ylsj,2),PCLSPAmt=round(a.PCL*a.ylsj,2),DiffSPAmt=round((a.pcl-a.kcl)*a.ylsj,2)');
    sql.Add('from [MedStore_TakeItem] A(nolock), XYZB B(NOLOCK)');
    sql.Add('where A.YPBH=B.YPBH');
    sql.Add(' AND  A.PNO=:PNO ');
    if trim(edt_SearchCondition.text)='' then
       sql.Add('  ')
    else
    begin
      case rg1.ItemIndex  of
      0:begin
         sql.Add(' AND  b.pym   like :SearchCondition ');
         ParamByName('SearchCondition').AsString :='%'+trim(edt_SearchCondition.text)+'%';
        end;
      1:begin
          sql.Add(' AND  b.ypbh =:SearchCondition ');
          ParamByName('SearchCondition').AsString :=trim(edt_SearchCondition.text);
        end;
      2:begin
          sql.Add(' AND  b.ym   like :SearchCondition ');
          ParamByName('SearchCondition').AsString :='%'+trim(edt_SearchCondition.text)+'%';
        end;
      end;
    end;

    sql.Add('ORDER BY A.PLACE ');
    ParamByName('PNO').AsString:=Q_Master.FieldByName('PNO').AsString;
    open;
  end;
end;

procedure TFrm_check.act_LockExecute(Sender: TObject);
var  aMsg1,aMsg2,aMsg3:string;
     aMedClass,ayfbm:integer;
     azero:boolean;
begin
 ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
 if Frm_CheckScheme.ShowModal=mrok then
 begin
   aMedClass:=Frm_CheckScheme.rg_MedClass.ItemIndex;
   azero:=Frm_CheckScheme.CB_zero.Checked;
 end  else exit;

 if  azero then
   aMsg1:='包含零库存'
 else
   aMsg1:='不包含零库存';

 case aMedClass of
 0:aMsg2:='【全部药品】'+aMsg1;
 1:aMsg2:='【西药成药】'+aMsg1;
 2:aMsg2:='【草药】'    +aMsg1;
 end;
 aMsg3:='是否新增'+aMsg2+'盘点记录？';

 if Application.MessageBox(pchar(aMsg2),'提示', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)<>IDYES then exit;
 with dm.Q_public do
  begin
    close;
    sql.Clear;
    sql.Add('EXEC Medstore_LockStore :YFBH,:LB,:OPID,:ZERO,:SchemeName');
    ParamByName('YFBH').AsInteger:=ayfbm;
    ParamByName('LB').AsInteger:=aMedClass;
    ParamByName('OPID').AsInteger:=strtoint(DM.Fopid);
    ParamByName('ZERO').AsBoolean:=azero;
    ParamByName('SchemeName').asstring:=aMsg2;
    try
      ExecSQL;
    Except
       on E: Exception do
        begin
          application.MessageBox(pchar('新增盘点单错误！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
    end;
  end;
   ACT_SearchMaster.Execute;
end;

procedure TFrm_check.act_succeExecute(Sender: TObject);
var ayfbm:integer;
begin
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  if Q_Master.RecordCount<1 then exit;
  IF  not Q_Master.FieldByName('EDT').IsNull then
  begin
    application.MessageBox('盘点单已经审核，不能再次审核！','信息',MB_ICONWARNING);
    exit;
  end;

  if Application.MessageBox('本盘点单确认完成了吗？'#13#10'完成将进行药房库存同步！','提示', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)<>IDYES then exit;
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.Add('EXEC Medstore_SucceStore :PNO,:OPID,:yfbm');
    ParamByName('PNO').AsString:=Q_Detail.FieldByName('PNO').AsString;
    ParamByName('OPID').AsInteger:=strtoint(dm.Fopid);
    ParamByName('yfbm').AsInteger:=ayfbm;
    // ParamByName('LB').AsInteger:=0;
    try
      ExecSQL;
    except
       on E: Exception do
        begin
          application.MessageBox(pchar('确认完成出错！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
    end;
  end;
   act_searchMaster.Execute;
   act_searchDetail.Execute;
end;

procedure TFrm_check.act_searchMasterExecute(Sender: TObject);
begin
 with Q_Master do
  begin
    close;
    sql.Clear;
    sql.Add('select *,CASE ISNULL(EDT,0) when 0 then ''未审核'' else ''已审核'' end as AuditState  from [MedStore_Take](nolock)');
    sql.Add('where datediff(day,SDT,:datefrom)<=0');
    sql.Add('and   datediff(day,SDT,:dateto)>=0');
    ParamByName('datefrom').AsDate:=DT_from.Date;
    ParamByName('dateto').AsDate:=DT_to.Date;
    open;

    if IsEmpty then
    begin
      application.MessageBox('没有记录！','信息',MB_ICONWARNING);
      exit;
    end;
  end;
end;

procedure TFrm_check.act_DelExecute(Sender: TObject);
begin
   if Q_Master.RecordCount<1 then exit;
   if not Q_Master.fieldbyname('edt').IsNull then
   begin
     application.MessageBox('盘点单已经完成，不能删除！','信息',MB_ICONWARNING);
     exit;
   end;
   if Application.MessageBox('是否删除盘点记录吗？','提示', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)<>IDYES then exit;
   with  dm.Q_comm do
   begin
     close;
     sql.Add('delete from MedStore_Take  where PNO=:PNO and edt is null');
     sql.Add('DELETE MedStore_TakeItem from MedStore_Take a,MedStore_TakeItem b where a.PNO=b.PNO and a.PNO=:PNO and edt is null');
     ParamByName('PNO').AsString:=Q_Master.fieldbyname('pno').AsString;
     try
       ExecSQL;
     except
      on E: Exception do
        begin
          application.MessageBox(pchar('删除出错！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
     end;
   end;
   act_searchMaster.Execute;
   Q_detail.Close;
   lbl_SchemeName.Caption:='';
end;

procedure TFrm_check.Q_DetailBeforePost(DataSet: TDataSet);
begin
  with   Q_Detail do
  begin
    fieldByName('POPID').AsInteger:=strtoint(dm.Fopid);
    fieldByName('PDT').AsDateTime:=now;
    fieldByName('PCL').AsCurrency:=fieldByName('PCL0').AsCurrency*fieldByName('hsb').AsCurrency+fieldByName('PCL1').AsCurrency;
  end
end;

procedure TFrm_check.act_SaveExecute(Sender: TObject);
begin
 if Q_Detail.RecordCount<1 then exit;
 Q_Detail.Refresh;
end;

procedure TFrm_check.cxgrdbtblvw_DetailStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var  aPCL_KCL:currency;
begin
  aPCL_KCL:= ARecord.Values[cxgrdbtblvw_Detail.GetColumnByFieldName('PCL_KCL').Index];
  //红色盘亏
  if (aPCL_KCL<0) and (AItem.Index=11) then  AStyle:=cxStyle25;
  //绿色盘盈
  if (aPCL_KCL>0) and (AItem.Index=11)  then  AStyle:=cxStyle26;
  if (AItem.Index=7)  or (AItem.Index=9) then AStyle:=cxStyle11;

end;

procedure TFrm_check.cxgrdbtblvw_MasterCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  act_searchDetail.Execute;
end;

procedure TFrm_check.SetDetailGrdEditState();
begin
   with  dm.Q_xyzb do
   begin
     close;
     sql.Add('select edt from MedStore_Take  where PNO=:PNO');
     ParamByName('PNO').AsString:=Q_Master.fieldbyname('pno').AsString;
     open;
     if fieldbyname('edt').IsNull then
       cxgrdbtblvw_Detail.OptionsData.Editing:=true
     else
       cxgrdbtblvw_Detail.OptionsData.Editing:=false;
   end;
end;

procedure TFrm_check.act_closeExecute(Sender: TObject);
begin
  self.close;
end;

procedure TFrm_check.rg_MedClassClick(Sender: TObject);
begin
  act_searchDetail.Execute;
end;

procedure TFrm_check.DBGrid_xyzbDblClick(Sender: TObject);
VAR  aypbh,aym:STRING;
begin
  aypbh:=DBGrid_xyzb.DataSource.DataSet.fieldbyname('ypbh').AsString;
  aym:=DBGrid_xyzb.DataSource.DataSet.fieldbyname('ym').AsString+DBGrid_xyzb.DataSource.DataSet.fieldbyname('gg').AsString;
  edt_SearchCondition.Text:=aypbh;
  lbl_MedName.Caption:=aym;
  cxgrid1.SetFocus;
  act_searchDetail.Execute;
end;

procedure TFrm_check.DBGrid_xyzbExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFrm_check.DBGrid_xyzbKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_xyzbDblClick(Sender);
end;

procedure TFrm_check.edt_SearchConditionChange(Sender: TObject);
begin
act_searchDetail.Execute;
end;

procedure TFrm_check.FormShow(Sender: TObject);
var  MYMedStore:IMedStore;
begin
//2023.11.21 wk 药房盘点
  lbl_SchemeName.Caption:='';
  dm.InitGrid(1,'MedStore_ST.xml'     ,cxgrdbtblvw_Master);
  dm.InitGrid(1,'MedStore_ST_LIST.xml',cxgrdbtblvw_Detail);
  DT_from.Date:=date();
  DT_to.Date:=date();

   //--2024.04.22 wk 库房类别
  MYMedStore:=TMedStore.Create;
  MYMedStore.GetYfbm(dm.Q_comm,cbb_yfbm,false);
  cbb_yfbm.ItemIndex:=dm.GetComboxIndex(cbb_yfbm,dm.sysinfo.yfmc);//设置默认药房
  //---
  self.Caption:=dm.sysinfo.hospitalName+'-'+'盘点';
end;

procedure TFrm_check.Act_exportExecute(Sender: TObject);
var  MYMedStore:IMedStore;
     aTemplateName:string;
     adatetime:tdatetime;
begin

  if Q_detail.RecordCount<1 then exit;
  MYMedStore:=TMedStore.Create;
  case rg2.ItemIndex  of
  0:aTemplateName:='盘点表';
  1:aTemplateName:='盘点汇总表';
  end;
  adatetime:=q_master.fieldbyname('sdt').AsDateTime;
  MYMedStore.ExportXLS('Q_Result',Q_detail,DT_from.date,DT_to.Date,aTemplateName);
end;

procedure TFrm_check.cxgrdbtblvw_DetailEditValueChanged(Sender:
    TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  btnSave.Click;
end;

end.

