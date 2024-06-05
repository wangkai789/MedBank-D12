unit zpckgl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, ComCtrls,Data.DB;

type
  Tfm_zpckgl = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    ed_bh: TEdit;
    Label5: TLabel;
    ed_rkdh: TEdit;
    ed_ckdh: TEdit;
    lab_xm: TLabel;
    DBGrid_ys: TDBGrid;
    Label6: TLabel;
    Ed_year: TEdit;
    Label7: TLabel;
    ed_month: TEdit;
    UpDown2: TUpDown;
    bbtn_zpck: TBitBtn;
    btn_print: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    edt_ckrq: TEdit;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure ed_bhEnter(Sender: TObject);
    procedure DBGrid_ysExit(Sender: TObject);
    procedure ed_rkdhKeyPress(Sender: TObject; var Key: Char);
    procedure bbtn_zpckClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Com_ksKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure ed_rkdhChange(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
  private
    { Private declarations }

    function SearchInbank(lsh, Year, month: integer): boolean;
    function CheckOutbank(lsh, Year, month: integer): boolean;
  public
    { Public declarations }
    Flsh: integer;
  end;

var
  fm_zpckgl: Tfm_zpckgl;
  strrq: string;

implementation

uses Data, factory, main, reportform, InterfaceMedStore;

{$R *.DFM}

procedure Tfm_zpckgl.FormShow(Sender: TObject);
begin
  Ed_year.text := inttostr(Year);
  ed_month.text := inttostr(month);
  ed_bh.clear;
  lab_xm.Caption := '';
  // ed_rkdh.clear;
  ed_ckdh.clear;
  DBGrid_ys.visible := false;
  ed_bh.text := dm.FopidName;
  bbtn_zpck.Enabled := false;

  ed_rkdh.text := inttostr(Flsh);
  ed_rkdh.SetFocus;
end;

procedure Tfm_zpckgl.ed_bhEnter(Sender: TObject);
begin
  ed_bh.clear;
  lab_xm.Caption := '';
end;

procedure Tfm_zpckgl.DBGrid_ysExit(Sender: TObject);
begin
  (Sender as TDBGrid).visible := false;
end;

procedure Tfm_zpckgl.ed_rkdhKeyPress(Sender: TObject; var Key: Char);
var
  alsh, ayear, amonth: integer;
  MYMedStore: IMedStore;
begin
  if Key <> #13 then
    exit;
  if trim(ed_rkdh.text) = ' ' then
  begin
    MessageDlg('请输入入库单号！', mtWarning, [mbOK], 0);
    bbtn_zpck.Enabled := false;
    exit;
  end;

  try
    strtoint(ed_rkdh.text);
  except
    MessageDlg('入库单号请输入整数！', mtWarning, [mbOK], 0);
    bbtn_zpck.Enabled := false;
    exit;
  end;

  alsh := strtoint(trim(ed_rkdh.text));
  ayear := strtoint(trim(Ed_year.text));
  amonth := strtoint(trim(ed_month.text));

  if not SearchInbank(alsh, ayear, amonth) then
  begin
    MessageDlg('此入库号作废或不是本月入库号,请重新输入入库号', mtWarning, [mbOK], 0);
    exit;
  end;

  if CheckOutbank(alsh, ayear, amonth) then
  begin
    MessageDlg('此入库单号已经有药品出库，不能整批出库！', mtWarning, [mbOK], 0);
    bbtn_zpck.Enabled := false;
    exit;
  end
  else
  begin
    bbtn_zpck.Enabled := True;
  end;

end;

procedure Tfm_zpckgl.bbtn_zpckClick(Sender: TObject);
begin
  if DBGrid1.FieldCount = 0 then
    exit;
  bbtn_zpck.Enabled := false;

  with dm.Q_comm do
  begin
    close;
    sql.clear;
    sql.Add('exec get_new_bmly_ckh :lb ');
    ParamByName('lb').asinteger := 1;
    try
      open;
      ed_ckdh.text := dm.Q_comm['ckh'];
    except
      MessageDlg('生成出库号出错，请重试！', mtError, [mbOK], 0);
      exit;
    end;
  end;

  with dm.Q_comm do
  begin
    close;
    sql.clear;
    sql.Add('exec pub_yp_zpck :lsh,:year,:month,:ckh,:ckr,:opid');
    ParamByName('lsh').asinteger := strtoint(trim(ed_rkdh.text));
    ParamByName('year').asinteger := strtoint(trim(Ed_year.text));
    ParamByName('month').asinteger := strtoint(trim(ed_month.text));
    ParamByName('ckh').asinteger := strtoint(trim(ed_ckdh.text));
    ParamByName('ckr').asinteger := strtoint(dm.Fopid);
    ParamByName('opid').asinteger := strtoint(dm.Fopid);
    // ParamByName('ksbm').asinteger:=StrToint(ed_ksbm.Text);
    try
      ExecSQL;
      MessageDlg('整批出库成功！', mtInformation, [mbOK], 0);
      btn_print.Click;
      ed_bh.clear;
      lab_xm.Caption := '';
      // ed_rkdh.clear;
      // ed_ckdh.clear;
    except
      on E: Exception do
      begin
        MessageDlg('错误，请重试！', mtError, [mbOK], 0);
        exit;
      end;
    end;
  end;
end;

procedure Tfm_zpckgl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBGrid1.DataSource := Nil;
  dm.Q_comm.close;
  dm.q_use.close;
end;

procedure Tfm_zpckgl.Com_ksKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ed_bh.SetFocus;
end;



procedure Tfm_zpckgl.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfm_zpckgl.btn_printClick(Sender: TObject);
var
  MYMedStore: IMedStore;
  ackh: integer;
  ackrq: tdatetime;
begin
  if DBGrid1.FieldCount =0 then exit;
  ackh:=strtoint(trim(Ed_ckdh.text));
  ackrq:=strtodatetime(edt_ckrq.Text);
  MYMedStore:=TMedStore.Create;
  MYMedStore.PrintOutStore(Fm_report.frxrprt1,dm.q_out,ackrq,ackh);
end;

procedure Tfm_zpckgl.ed_rkdhChange(Sender: TObject);
begin
  bbtn_zpck.Enabled := false;
end;

function Tfm_zpckgl.SearchInbank(lsh, Year, month: integer): boolean;
begin
  result := false;
  with dm.q_use do
  begin
    close;
    sql.clear;
    sql.Add('select sl,a.rkxh,a.ypbh,b.ym,b.gg,a.jldw,a.rksl,a.lsj,a.rksl*a.lsj,jhje=a.rksl*a.jhj,rkje=a.rksl*a.lsj,a.rkrq,c.inc_name,a.jhj,a.ypph,a.sxrq,b.ypkind,b.ybbm_country,b.ybmc_country,d.ksbm,d.ksmc');
    sql.Add('from xykr a,xyzb b,ghdw c,jgxx d');
    sql.Add('where a.ypbh=b.ypbh and a.ghdw=c.inc_code and a.lsh=:lsh and year(a.rkrq)=:year and month(a.rkrq)=:month');
    sql.Add('and a.yfbm=d.ksbm');

    ParamByName('lsh').asinteger := lsh;
    ParamByName('year').asinteger := Year;
    ParamByName('month').asinteger := month;
    open;
    if isempty then
    begin
      ed_ckdh.Clear;
      edt_ckrq.Clear;
      exit;
    end;
  end;
  DBGrid1.DataSource := dm.DS_use;
  result := True;
end;

function Tfm_zpckgl.CheckOutbank(lsh, Year, month: integer): boolean;
begin
  result := false;
  with dm.Q_comm do
  begin
    close;
    sql.clear;
    sql.Add('select a.rkxh,b.ckh,b.ckrq from  xykr a,xykchu b ');
    sql.Add('where a.rkxh=b.rkxh and a.lsh=:lsh and year(a.rkrq)=:year and month(a.rkrq)=:month');
    ParamByName('lsh').asinteger := lsh;
    ParamByName('year').asinteger := Year;
    ParamByName('month').asinteger := month;
    open;
    if not isempty then
    begin
      ed_ckdh.text := fieldbyname('ckh').AsString;
      edt_ckrq.text := fieldbyname('ckrq').AsString;
    end  else
    begin
      ed_ckdh.Clear;
      edt_ckrq.text :=datetimetostr(now());
      exit;
    end;
  end;
  result := True;
end;

end.
