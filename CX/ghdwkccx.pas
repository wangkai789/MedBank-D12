unit ghdwkccx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  Tfm_ghdwkccx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid_XYZB: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdCode: TEdit;
    Label2: TLabel;
    ed_je: TEdit;
    BBtn_quit: TBitBtn;
    procedure BBtn_quitClick(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_XYZBDblClick(Sender: TObject);
    procedure DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_ghdwkccx: Tfm_ghdwkccx;

implementation

uses data;

{$R *.DFM}

procedure Tfm_ghdwkccx.BBtn_quitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_ghdwkccx.EdCodeEnter(Sender: TObject);
begin
DBGrid_XYZB.Visible:=false;
edcode.clear;
end;

procedure Tfm_ghdwkccx.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  with dm.Q_MedStore do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select inc_code,inc_name,inc_call from ghdw where inc_call like :mpym or inc_name like :mdwmc order by inc_code ');
    parambyname('mpym').AsString := '%'+EdCode.Text+'%';
    parambyname('mdwmc').AsString := '%'+EdCode.Text+'%';
    open;
    if recordcount>0 then
    begin
      if recordcount=1 then DBGrid_XYZBDblClick(sender)
      else begin DBGrid_XYZB.Visible:=true; DBGrid_XYZB.SetFocus; end;
    end
    else
    begin
      application.MessageBox('无此供货单位!','错误提示',0+mb_iconstop);
    end;
  end;
end;

procedure Tfm_ghdwkccx.DBGrid_XYZBDblClick(Sender: TObject);
var code:string;je:currency;
begin
  je:=0;
  code:= dm.Q_MedStore['inc_code'];
  EdCode.Text := dm.Q_MedStore['inc_name'];
  DBGrid_XYZB.Visible:=false;
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select 药名=a.ym,规格=a.gg,药品批号=c.ypph,库存量=b.kcl,药库单位=a.jldw,换算比=a.hsb,库存量1=b.kcl*hsb,药房单位=a.zxdw,零售价=ylsj,药房零售价=a.ylsj/a.hsb,');
    sql.add('金额=b.kcl*a.ylsj,入库时间=c.rkrq,失效日期=b.sxrq');
    sql.add('from xyzb a,xykcun b,xykr c,ghdw d where d.inc_code=:inc_code and b.ypbh=a.ypbh and b.rkxh=c.rkxh and b.kcl>0 and d.inc_code=c.ghdw order by a.ym,b.sxrq');
    parambyname('inc_code').asstring:=code;
    open;
    dbgrid1.Columns[0].width:=180;
    dbgrid1.Columns[1].width:=82;
    dbgrid1.Columns[2].width:=60;
    dbgrid1.Columns[3].width:=54;
    dbgrid1.Columns[4].width:=52;
    dbgrid1.Columns[5].width:=50;
    dbgrid1.Columns[6].width:=54;
    dbgrid1.Columns[7].width:=52;
    dbgrid1.Columns[8].width:=52;
    if RecordCount=0 then
    begin
      application.messagebox('此供货单位无库存，请再试！','提示',48);
      edcode.SetFocus;
    end
    else
    begin
      while not dm.q_comm.eof do
      begin
        je:=je+dm.q_comm['金额'];
        dm.Q_comm.next;
      end;
      ed_je.text:=currtostr(je);
      dbgrid1.SetFocus;
    end;
  end;
end;

procedure Tfm_ghdwkccx.DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_XYZBDblClick(Sender);
end;

procedure Tfm_ghdwkccx.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure Tfm_ghdwkccx.FormShow(Sender: TObject);
begin
dm.Q_comm.close;
edcode.setfocus;
end;

procedure Tfm_ghdwkccx.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i:integer;
begin
   for i:=0 to DBGrid1.Columns.Count -1 do
   begin
     DBGrid1.Columns[i].Title.Alignment :=tacenter;
   end;
end;

end.
