unit SendMedRipUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, ComCtrls,
  frxClass, frxDBSet, Data.DB;

type
  TFrm_SendMedRip = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    DBGridCFDH: TDBGrid;
    BtnOKMed: TBitBtn;
    BtnFrensh: TBitBtn;
    BitBtnExit: TBitBtn;
    bbtn_print: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    RBut_nocy: TRadioButton;
    RBut_cy: TRadioButton;
    DBGridRecipeDetail: TDBGrid;
    Label21: TLabel;
    cmbx_storetype: TComboBox;
    Label4: TLabel;
    ed_name: TEdit;
    ed_cfdh: TEdit;
    ed_zyh: TEdit;
    btn_design: TButton;
    cbb_yfbm: TComboBox;
    Label5: TLabel;
    com_bq: TComboBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    procedure BitBtnExitClick(Sender: TObject);
    procedure BtnOKMedClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnFrenshClick(Sender: TObject);
    procedure com_bqChange(Sender: TObject);
    procedure bbtn_printClick(Sender: TObject);
    procedure DBGridRecipeDetailDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RBut_nocyClick(Sender: TObject);
    procedure RBut_cyClick(Sender: TObject);
    procedure ed_zyhKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridCFDHCellClick(Column: TColumn);
    procedure com_bqEnter(Sender: TObject);
    procedure Ed_zyhEnter(Sender: TObject);
    procedure DBGridCFDHKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCFDHKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FHLDY:string;
    FYF:string;
    Ffyr:string;
    Froom:string;
    Fbyxm:string;
    FXb:string;
    Fnl:string;
    Fifcz:string;
    Fym:string;
    Fgg:string;
    Fmryl:string;
    Fmcsl:string;
    fzxdw:string;
    fcfzxdw:string;
    ffrequency:string;
    Fcfrq:String;
    Fxh:String;
    Ffyrq:string;
    FprintType:string;
    Fcfdh:string;
    FNurseUnit:string;
    Fcflb:string;
    Fzyh:string;
    Fdatefrom:string;
    Fdateto:string;
    Fid:string;
    Fstore:integer;
    Fbagcount:currency;
    Fabc:string;
    Fguid:string;
    Fusedate:string;
    Fdw:string;
    Fhospital_name:string;
    procedure init();
    procedure SearchMed(cfdh:integer);
    procedure SearchCMed(cfdh:integer);

  public
    { Public declarations }
  end;

var
  Frm_SendMedRip: TFrm_SendMedRip;

implementation
uses Data, czydl,Factory, reportform,InterfaceMedStore;
{$R *.DFM}

procedure TFrm_SendMedRip.init();
VAR ayfbm:integer;
begin
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  with dm.Qry_fy do
  begin
    close;
    sql.Clear;
    sql.add('exec zy_fy_cxcf  :ksbm ,:zyh,:ifxy,:flag,:yfbm,:storetype');
    parambyname('ksbm').assmallint:=strtoint(ComboBox1.text);
    parambyname('zyh').AsInteger:=strtointdef(ed_zyh.text,0);
    if RBut_nocy.Checked then
      parambyname('ifxy').assmallint:=1
    else parambyname('ifxy').assmallint:=2;
    parambyname('flag').asboolean:=false;
    parambyname('yfbm').asinteger:=ayfbm;
    parambyname('storetype').asstring:=trim(cmbx_storetype.text);
    Open;
    if dm.Qry_fy.recordcount>0  then
       BtnOKMed.Enabled :=true
    Else
       BtnOKMed.Enabled :=False ;
   end;
    DBGridCFDH.DataSource:=dm.ds_fy ;
    DBGridCFDHCellClick(DBGridCFDH.Columns[0]) ;
    DBGridCFDH.SetFocus ;
end;

procedure TFrm_SendMedRip.BitBtnExitClick(Sender: TObject);
begin
  dm.Q_comm.Close;
  Close;
end;

procedure TFrm_SendMedRip.BtnOKMedClick(Sender: TObject);
var ayfbm:integer;
    asendno:string;
    MYMedStore:IMedStore;
begin
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  if trim(ed_name.text)='' then exit ;
  if trim(ed_cfdh.text)='' then exit ;
  BtnOKMed.Enabled:=false;
  bbtn_print.Enabled:= not BtnOKMed.Enabled;
  MYMedStore:=TMedStore.Create;
  asendno:=MYMedStore.GetSendno(dm.Q_use);
  with DM.Q_comm do
  begin
    Close;
    sql.Clear;
    sql.Add('exec MedStore_SendMedRip  :fyr,:cfdh,:ksbm,:sendno ');
    ParamByName('cfdh').AsInteger := dm.Qry_fy['cfdh'];
    ParamByName('fyr').AsInteger :=strtoint(dm.Fopid);
    ParamByName('ksbm').Assmallint:=ayfbm ;
    ParamByName('sendno').AsString:=asendno ;
    try
      ExecSQL;
      bbtn_printClick(bbtn_print);
      Application.MessageBox('发药成功','提示信息',MB_ICONINFORMATION);
    except
      on E: Exception do
      begin
         application.MessageBox(pchar('处方确认时出现错误:'+e.Message),'错误信息',16);
      end;
    end;
  end;
  init();
end;

procedure TFrm_SendMedRip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.Qry_fy.close;
  dm.Q_comm.close;
  dm.Q_public1.close;
  DBGridCFDH.DataSource:=nil;
  DBGridRecipeDetail.DataSource:=nil;

end;

procedure TFrm_SendMedRip.FormShow(Sender: TObject);
var ayfbm:integer;
    MYMedStore:IMedStore;
begin
  with dm.q_comm do
    begin
      close;
      sql.clear;
      sql.Add('select ksbm,ksmc from jgxx where ifzy=1 and lbd in (2,3) order by ksbm');//住院药房
      try
        open;
      except
        exit;
      end;
      if recordcount<1 then exit;
         com_bq.Clear;
         ComboBox1.Clear;
         first;
      while not eof do
        begin
          com_bq.Items.Add(fieldbyname('ksmc').asstring);
          ComboBox1.Items.Add(inttostr(fieldbyname('ksbm').asinteger));
          next;
        end;
    end;
  com_bq.ItemIndex:=0;
  ComboBox1.ItemIndex:=0;
  dm.SetStoreValue(cmbx_storetype);
  ed_zyh.Clear;
  ed_name.clear ;
  ed_cfdh.Clear ;
  //--2024.04.22 wk 库房类别
  MYMedStore:=TMedStore.Create;
  MYMedStore.GetYfbm(dm.Q_comm,cbb_yfbm,false);
  cbb_yfbm.ItemIndex:=dm.GetComboxIndex(cbb_yfbm,dm.sysinfo.yfmc);//设置默认药房
  //---
end;

procedure TFrm_SendMedRip.BtnFrenshClick(Sender: TObject);
begin
   init();
end;

procedure TFrm_SendMedRip.com_bqChange(Sender: TObject);
begin
  ComboBox1.ItemIndex:=com_bq.ItemIndex;
  init();
end;

procedure TFrm_SendMedRip.bbtn_printClick(Sender: TObject);
var acfdh,ayplb:integer;
    AReportName:string;
begin
  if RBut_nocy.Checked then
  begin
    SearchMed(strtoint(ed_cfdh.text));
    AReportName:='\ykreport\住院发药单明细.fr3';
  end;
  //--2021.03.15 wk 中药发药单
  if RBut_cy.Checked   then
  begin
    SearchCMed(strtoint(ed_cfdh.text));
    AReportName:='\ykreport\中药摆药单.fr3'
  end;
  Fm_report.FHLDY:=dm.Q_SendMedDetail.fieldbyname('ksmc').AsString;
  Fm_report.Fsendno:=dm.Q_SendMedDetail.fieldbyname('sendno').AsString;
  Fm_report.Fhospital_name:=dm.sysinfo.hospitalName;
  Fm_report.Ffyrq:=datetimetostr(now());
  Fm_report.FprintType:='发药打印';
  Fm_report.Ffyr:=dm.FopidName;
  Fm_report.frxrprt1.PrintOptions.ShowDialog:=false;
  Fm_report.frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName) + AReportName);
  Fm_report.frxrprt1.PrepareReport;
  case dm.Sysinfo.InPatRipPrint of
  0:exit;
  1:Fm_report.frxrprt1.Print;
  2:Fm_report.frxrprt1.ShowReport();
  end;
end;

procedure TFrm_SendMedRip.DBGridRecipeDetailDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i:integer;
begin
    for i:=0 to DBGridRecipeDetail.Columns.Count -1 do
      begin
        DBGridRecipeDetail.Columns[i].Title.Alignment:=tacenter;
      end;

    if dm.Q_public1.FieldByName('zlbm').asinteger>1 then
      begin
        DBGridRecipeDetail.Canvas.Brush.Color :=clred;
        DBGridRecipeDetail.DefaultDrawColumnCell(rect,datacol,column,state);
      end;
      DBGridRecipeDetail.Columns[2].Color:=clred;
end;

procedure TFrm_SendMedRip.RBut_nocyClick(Sender: TObject);
begin
  BtnFrensh.Click;
end;

procedure TFrm_SendMedRip.RBut_cyClick(Sender: TObject);
begin
  BtnFrensh.Click;
end;

procedure TFrm_SendMedRip.ed_zyhKeyPress(Sender: TObject; var Key: Char);
begin
  with dm.Q_ksby do
  begin
    close;
    sql.Clear;
    SQL.Add('select  byxm,xb,ksbm,ksmc,sfbm,sfzl,bch,rysj,zyh,nl,managedoctor');
    SQL.Add('from zy_byinfo');
    SQL.Add('where  zyh=:zyh and cysj is null');
    ParamByName('zyh').Asinteger:=strtoint(Ed_zyh.text);
    open;
  end;
  if dm.Q_ksby.IsEmpty then
  begin
    application.MessageBox('查无此人，或已经出院','错误提示',mb_iconstop);
    exit;
  end ;
  ed_name.Text:=dm.Q_ksby.fieldbyname('byxm').AsString ;

 init();
end;

procedure TFrm_SendMedRip.DBGridCFDHCellClick(Column: TColumn);
begin
  if DBGridCFDH.DataSource.DataSet.RecordCount =0 then
  begin
    DBGridRecipeDetail.DataSource:=nil ;
    Exit ;
  end;
  ed_name.Text:=DBGridCFDH.DataSource.DataSet.fieldbyname('name').AsString ;
  ed_cfdh.Text:=DBGridCFDH.DataSource.DataSet.fieldbyname('cfdh').AsString ;
  with dm.Q_public1 do
  begin
    close;
    sql.Clear;
    if RBut_nocy.Checked then
      sql.add('Select 药名=b.ym,规格=b.gg,总数量=a.mryl, ')
    else
      sql.add('Select 药名=b.ym,每副数量=a.mryl , 日副数=a.rcs ,--总数量=a.mryl, ');

      SQL.Add('单位=b.zxdw,全额=a.qe,编码=b.ypbh,厂家=produce,b.zlbm');
      SQL.Add('from cfyb a (nolock) ,xyzb b (nolock)');
      SQL.Add('where a.ypbh = b.ypbh and a.cfdh = :cfdh');
      ParamByName('cfdh').AsInteger :=StrToInt(ed_cfdh.Text) ;
      open;
      DBGridRecipeDetail.DataSource:= dm.ds_public1;
      DBGridRecipeDetail.Columns[0].Width := 210;
      DBGridRecipeDetail.Columns[1].Width := 200;
      DBGridRecipeDetail.Columns[2].Width := 60;
      DBGridRecipeDetail.Columns[3].Width := 60;
      DBGridRecipeDetail.Columns[4].Width := 60;
      DBGridRecipeDetail.Columns[5].Width := 80;
      DBGridRecipeDetail.Columns[6].Width := 210;
  end;
end;

procedure TFrm_SendMedRip.com_bqEnter(Sender: TObject);
begin
 Ed_zyh.Clear;
end;

procedure TFrm_SendMedRip.Ed_zyhEnter(Sender: TObject);
begin
  ed_name.Clear ;
  ed_cfdh.Clear ;
  DBGridCFDH.DataSource:=nil ;
  DBGridRecipeDetail.DataSource:=nil ;
end;

procedure TFrm_SendMedRip.DBGridCFDHKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key=33) or (key=34) or (key=38) or (key=40) then
   begin
     DBGridCFDHCellClick(DBGridCFDH.Columns[0]);
   end;
end;

procedure TFrm_SendMedRip.DBGridCFDHKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then DBGridCFDHCellClick(DBGridCFDH.Columns[0]);
end;

procedure TFrm_SendMedRip.SearchCMed(cfdh: integer);
begin
  with dm.Q_SendMedDetail do
  begin
    close;
    sql.clear;
    sql.add('exec Medstore_SearchCMed_Cfdh  :cfdh');
    ParamByName('cfdh').AsInteger:=cfdh;
    try
      open;
    except
        on E: Exception do
        begin
            application.MessageBox(pchar('查询中草药处方错误！:'+e.Message),'错误信息',16);
           exit;
        end;
    end;

  end;
end;

procedure TFrm_SendMedRip.SearchMed(cfdh: integer);
begin
  with dm.Q_SendMedDetail do
  begin
    close;
    sql.clear;
    sql.add('select d.zyh,d.byxm,d.ksmc,d.xb,d.nl,c.ypbh,c.ym,');
    sql.add('CASE a.ifcz');
    sql.add('WHEN 0 THEN rtrim(ltrim(c.ym))+''(临)''');
    sql.add('WHEN 1 THEN rtrim(ltrim(c.ym))+''(长)''');
    sql.add('ELSE rtrim(ltrim(c.ym)) END AS ym ,');
    sql.add('c.gg,mryl=sum(b.mryl),c.zxdw,c.produce,a.ifcz,e.room,a.sendno,b.frequency,b.mcsl,c.cfzxdw');
    sql.add('from cfdb a,cfyb b ,xyzb  c,zy_byinfo d,zy_sickroom e');
    sql.add('where a.cfdh=b.cfdh and b.ypbh=c.ypbh and a.zyh=d.zyh');
    sql.add('and a.cfdh=:cfdh  and d.bch=e.roomid');
    sql.add('group by d.zyh,d.byxm,d.ksmc,d.xb,d.nl,c.ypbh,c.ym,c.gg,c.zxdw,c.produce,a.ifcz,e.room,a.sendno,b.frequency,b.mcsl,c.cfzxdw');
    ParamByName('cfdh').AsInteger:=cfdh;
    open;
    FHLDY:=fieldbyname('ksmc').AsString;
    FXH:=fieldbyname('sendno').AsString;
  end;
end;

end.
