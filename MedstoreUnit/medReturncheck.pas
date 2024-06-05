unit medReturncheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls,factory, ImgList, StdCtrls, Buttons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxDropDownEdit,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,cxCheckBox,
  cxGridDBTableView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  System.ImageList;

type
  Tfm_medReturncheck = class(TForm)
    spl1: TSplitter;
    TreeViewPats: TTreeView;
    ImageListPat: TImageList;
    grp1: TGroupBox;
    btn_search: TBitBtn;
    btn_save: TBitBtn;
    btn_time: TBitBtn;
    btn_exit: TBitBtn;
    pnl1: TPanel;
    grp2: TGroupBox;
    pgc_info: TPageControl;
    ts1: TTabSheet;
    cxgrd_data: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw_detail: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    ts2: TTabSheet;
    edt_applyID: TEdit;
    edt_zyh: TEdit;
    lbl1: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxgrdbtblvw_total: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btn_print: TBitBtn;
    edt_NurseWard: TEdit;
    edt_NurseWardCode: TEdit;
    Label1: TLabel;
    cbb_yfbm: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure TreeViewPatsClick(Sender: TObject);
    procedure btn_timeClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
  private
    { Private declarations }
    function SearchApplyData(kind:byte;applyID:string):boolean;
    function ApplyCheck(applyID,zyh:integer;sendno:string):boolean;
  public
    { Public declarations }
  end;

var
  fm_medReturncheck: Tfm_medReturncheck;
  fPatient:TPatient;
  int_sendno:string;

implementation

uses UGirdPara,data, seldate,reportform,InterfaceMedStore;

{$R *.dfm}

function Tfm_medReturncheck.SearchApplyData(kind:byte;applyID:string):boolean;
begin
  dm.InitGrid(1,'medstore_ReturnDetail.xml',cxgrdbtblvw_detail);
  with dm.Q_detail do
  begin
    close;
    sql.clear;
    sql.Add('select d.Room,d.byxm,ym=b.xmmc,b.gg,ylsj=b.sfbz,mryl=-1*b.mryl,c.zxdw');
    sql.Add(',a.applydate,a.affirmopid,a.affirmdate');
    // sql.Add(',yzkind=case ifcz when 1 then ''长嘱'' else ''临嘱'' end');
    sql.Add(',qe,b.xmbm,a.zyh,d.ksmc,d.bch,b.cfdh,b.xh,b.applyID');
    sql.Add('from medstore_Return a,medstore_ReturnDetail b,xyzb c,zy_byinfo d') ;
    sql.Add('where a.ID=b.applyID and b.xmbm=c.ypbh and a.zyh=d.zyh') ;
    sql.Add('and a.[type]=2 and a.affirmopid is null') ;
    if kind=1 then
      begin
        sql.Add('and d.ksbm=:applyID') ;
        ParamByName('applyID').AsString:=trim(applyID);
      end
    else
      begin
        sql.Add('and a.ID=:applyID') ;
        ParamByName('applyID').AsString:=trim(applyID);
      end;
    try
      open;
      cxgrdbtblvw_detail.DataController.DataSource :=dm.Ds_detail ;
    except
       on E: Exception do
         begin
           application.messagebox(PChar('查询出现错误:'+e.Message),'出错信息',16);
         end;
    end;
  end;
  dm.InitGrid(1,'medstore_Return.xml',cxgrdbtblvw_total);
  with dm.Q_fybq do
  begin
    close;
    sql.clear;
    sql.Add('select ym=b.xmmc,b.gg,ylsj=b.sfbz,mryl=-1*sum(b.mryl),c.zxdw,qe=sum(b.qe)');
    sql.Add(',jldw_yffykcl=');
    sql.Add('''-''+');
    sql.Add('case');
    sql.Add('when ((sum(b.mryl)>0)) and (sum(b.mryl)>=c.hsb) and (sum(b.mryl)%c.hsb=0) then');
    sql.Add('ltrim(rtrim(convert(char(10),floor(sum(b.mryl)/c.hsb))))+c.jldw');
    sql.Add('when ((sum(b.mryl)>0)) and (sum(b.mryl)>=c.hsb) and (sum(b.mryl)%c.hsb<>0) then');
    sql.Add('rtrim(ltrim(rtrim(convert(char(10),floor(sum(b.mryl)/c.hsb))))+c.jldw)');
    sql.Add('+ltrim(rtrim(convert(char(10),floor(sum(b.mryl)%c.hsb))))+c.zxdw collate database_default');
    sql.Add('else');
    sql.Add('ltrim(rtrim(convert(char(10),sum(b.mryl))))+c.zxdw collate database_default  ');
    sql.Add('end');
    sql.Add(',b.xmbm,c.hsb');
    sql.Add('from medstore_Return a,medstore_ReturnDetail b,xyzb c,zy_byinfo d');
    sql.Add('where a.ID=b.applyID and b.xmbm=c.ypbh and a.zyh=d.zyh');
    sql.Add('and a.[type]=2 and a.affirmopid is null');
    if kind=1 then
      begin
        sql.Add('and d.ksbm=:applyID') ;
        ParamByName('applyID').AsString:=applyID;
      end
    else
      begin
        sql.Add('and a.ID=:applyID') ;
        ParamByName('applyID').AsString:=applyID;
      end;
    sql.Add('group by b.xmmc,b.gg,b.sfbz,c.jldw,c.zxdw ');
    sql.Add(',b.xmbm,c.hsb');
    try
      open;
      cxgrdbtblvw_total.DataController.DataSource :=dm.Ds_fybq ;
    except
       on E: Exception do
         begin
           application.messagebox(PChar('查询出现错误:'+e.Message),'出错信息',16);
         end;
    end;
  end;
end;

function Tfm_medReturncheck.ApplyCheck(applyID,zyh:integer;sendno:string):boolean;
begin
  result:=false ;
  with dm.Q_comm do
  begin
    Close;
    sql.Clear;
    sql.Add('exec medreturn_applycheck :type,:applyID,:zyh,:opid,:sendno');
    parambyname('type').assmallint:=2;
    parambyname('applyID').asinteger:=applyID;
    parambyname('zyh').asinteger:=zyh;
    parambyname('opid').asinteger:=strtoint(dm.Fopid);
    parambyname('sendno').AsString:=sendno;
    try
      ExecSQL;
      result:=true ;
    except
        on E: Exception do
        begin
          application.MessageBox(pchar('退药申请审核出现错误:'+e.Message),'错误信息',16);
          Exit;
        end;
    end;
  end;
end;

procedure Tfm_medReturncheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   cxgrdbtblvw_detail.DataController.DataSource :=nil ;
   cxgrdbtblvw_total.DataController.DataSource :=nil ;
   Action:=cafree;
end;

procedure Tfm_medReturncheck.FormShow(Sender: TObject);
var  MYMedStore:IMedStore;
begin
  edt_applyID.Clear;
  edt_zyh.Clear;
  edt_NurseWardCode.Clear;
  edt_NurseWard.Clear;
  if Assigned(fPatient) then
      fPatient.Destroy;
   fPatient := TPatient.Create;
  try
    fPatient.Get_ALL_PATS(dm.Q_comm,TreeViewPats);
  except
  end;
  cxgrdbtblvw_detail.optionsview.groupbybox:=false;
  cxgrdbtblvw_total.optionsview.groupbybox:=false;

   //--2024.04.22 wk 库房类别
  MYMedStore:=TMedStore.Create;
  MYMedStore.GetYfbm(dm.Q_comm,cbb_yfbm,false);
  cbb_yfbm.ItemIndex:=dm.GetComboxIndex(cbb_yfbm,dm.sysinfo.yfmc);//设置默认药房
  //---
  self.Caption:=dm.sysinfo.hospitalName+'-'+'住院退药审核';
end;

procedure Tfm_medReturncheck.btn_searchClick(Sender: TObject);
begin
  try
    fPatient.Get_ALL_PATS(dm.Q_comm,TreeViewPats);
  except
  end;
end;

procedure Tfm_medReturncheck.btn_exitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfm_medReturncheck.TreeViewPatsClick(Sender: TObject);
var
  tmpNode: TTreeNode;
begin
  tmpNode := treeviewpats.Selected;
  if tmpNode = nil then Exit;
  edt_applyID.Clear;
  edt_zyh.Clear;
  edt_NurseWardCode.Clear;
  edt_NurseWard.Clear;
  pgc_info.ActivePageIndex :=1;
  if tmpNode.Level = 0 then
  begin
      if Assigned(fPatient) then
      fPatient.Destroy;
      fPatient := TPatient.Create;
      edt_NurseWardCode.Text :=trim(PPat_Node(TmpNode.Data)^.Patient_NurseWardCode);
      edt_NurseWard.Text :=trim(PPat_Node(TmpNode.Data)^.Patient_NurseWard);
      SearchApplyData(1,edt_NurseWardCode.Text);
  end
  else if tmpNode.Level = 1 then
  begin
     if Assigned(fPatient) then
     fPatient.Destroy;
     fPatient := TPatient.Create;
     edt_NurseWardCode.Text :=inttostr(PPat_Node(TmpNode.Data)^.Patient_ksbm);
     edt_NurseWard.Text :=trim(PPat_Node(TmpNode.Data)^.Patient_ksmc);
     edt_applyID.Text :=trim(PPat_Node(TmpNode.Data)^.Patient_applyID);
     edt_zyh.Text :=trim(PPat_Node(TmpNode.Data)^.Out_Patient_ID);
     SearchApplyData(2,edt_applyID.Text);
  end;
end;

procedure Tfm_medReturncheck.btn_timeClick(Sender: TObject);
begin
  if fm_seldate.ShowModal = mrOk then
    begin
       try
         cxgrdbtblvw_detail.DataController.DataSource :=nil ;
         cxgrdbtblvw_total.DataController.DataSource :=nil ;
         fPatient.Get_ALL_PATS_Time(dm.Q_comm,TreeViewPats,fm_seldate.dtp_from.datetime
            ,fm_seldate.dtp_to.datetime);
       except
       end;
    end;
end;

procedure Tfm_medReturncheck.btn_saveClick(Sender: TObject);
var I,int_applyID,int_zyh:integer;
     MYMedStore:IMedStore;
begin
  if not cxgrdbtblvw_detail.DataController.DataSet.Active  then exit ;
  if cxgrdbtblvw_detail.DataController.DataSet.IsEmpty then Exit;
  int_applyID:=0;
  int_zyh:=0;
  int_sendno:='0';
  MYMedStore:=TMedStore.Create;
  int_sendno:=MYMedStore.GetSendno(dm.Q_comm);
  for I:=0 to cxgrdbtblvw_detail.DataController.DataSet.RecordCount-1 do
  begin
     if int_applyID<>cxgrdbtblvw_detail.DataController.DataSet.FieldByName('applyID').AsInteger then
     begin
       int_zyh:=cxgrdbtblvw_detail.DataController.DataSet.FieldByName('zyh').AsInteger;
       int_applyID:=cxgrdbtblvw_detail.DataController.DataSet.FieldByName('applyID').AsInteger;
       if not applycheck(int_applyID,int_zyh,int_sendno) then Break;
     end;
  end;
  Application.MessageBox('退药申请审核成功','提示信息',64);
  btn_printClick(btn_print);
  btn_searchClick(btn_search);
  edt_applyID.Clear ;
  edt_zyh.Clear ;
  cxgrdbtblvw_detail.DataController.DataSource :=nil ;
  cxgrdbtblvw_total.DataController.DataSource :=nil ;
end;

procedure Tfm_medReturncheck.btn_printClick(Sender: TObject);
var  MYMedStore:IMedStore;
     amedclass,akind,ayfbm:integer;
     Asendno:string;
begin
  MYMedStore:=TMedStore.Create;
  Fm_report.Fyf:='';
  Fm_report.Fhospital_name:=dm.sysinfo.hospitalName;
  Fm_report.Ffyrq:=datetimetostr(now);
  Fm_report.FprintType:='发药打印';
  Fm_report.FHLDY:=trim(edt_NurseWard.Text);
  Fm_report.Fxh:=int_sendno;
  Fm_report.Ffyr:=dm.FopidName;
  Fm_report.FPatQty:=MYMedStore.SearchPatientCount(dm.Q_public1,int_sendno);
  akind:=dm.sysinfo.InPatSendkind;
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  Asendno:=int_sendno;
  amedclass:=0;
  MYMedStore.PrintSendMedTotal(Fm_report.frxrprt1,dm.Q_fybq,Asendno,amedclass,akind,ayfbm);
  MYMedStore.PrintSendMedDetail(Fm_report.frxrprt1,dm.Q_SendMedDetail,Asendno,amedclass,akind,ayfbm);
end;

end.
