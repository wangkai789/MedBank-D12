unit qldcd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  Tfm_qldcd = class(TForm)
    btn_cx: TBitBtn;
    BBtn_quit: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Ed_year: TEdit;
    Label5: TLabel;
    ed_month: TEdit;
    UpDown2: TUpDown;
    EdCode: TEdit;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure BBtn_quitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cxClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
   // procedure frReport1BeforePrint(Memo: TStringList; View: TfrView);
  private
    { Private declarations }
    procedure print_report();
  public
    { Public declarations }
  end;

var
  fm_qldcd: Tfm_qldcd;

implementation

uses data, main, Factory, reportform;

{$R *.DFM}

procedure Tfm_qldcd.FormShow(Sender: TObject);
begin
  ed_year.text:=inttostr(year);
  ed_month.text:=inttostr(month);
  EdCode.SetFocus ;
end;

procedure Tfm_qldcd.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then btn_cx.setfocus;
end;

procedure Tfm_qldcd.BBtn_quitClick(Sender: TObject);
begin
  close;
end;

procedure Tfm_qldcd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.q_comm.close;
  DM.Q_COMM.SQL.CLEAR;
end;

procedure Tfm_qldcd.print_report();
begin
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.Add('select a.qldh,b.ypbh,sfl=a.cksl,type=a.lb,a.ckh,a.lsj,c.ksmc,supplyksmc='''',fyr=e.xm,d.ym,d.gg,d.jldw,qlrq=null,fyrq=a.ckrq,');
    sql.Add('je=a.lsj*a.cksl,f.produce,f.ypph,f.sxrq,a.pfj,pfjqe=a.pfj*a.cksl,abstract='''' ');
    sql.Add('from xykchu a,xykcun b,jgxx c,xyzb d,zgzb e,xykr f');
    sql.Add('where a.rkxh=b.rkxh');
    sql.Add('and a.ksbm=c.ksbm');
    sql.Add('and b.ypbh=d.ypbh');
    sql.Add('and a.ckr=e.bh');
    sql.Add('and a.rkxh=f.rkxh');
    sql.Add('and a.ckh=:ckh ');
    sql.Add('and month(a.ckrq)=:mmonth');
    sql.Add('and year(a.ckrq)=:myear ');
    sql.add('ORDER BY b.ypbh');
    ParamByName('myear').asinteger:=strtoint(trim(ed_year.text));
    ParamByName('mmonth').asinteger:=strtoint(trim(ed_month.text));
    ParamByName('ckh').asinteger:=strtoint(trim(edcode.text));
     TRY
        open;
        if recordcount <1 then
        begin
          showmessage('没有此号，请重新查询!');
          EdCode.SetFocus;
          exit;
        end;
     EXCEPT
        showmessage('查询发生错误！！！');
        exit;
     END;
  end;
//  frReport1.clear;
 // frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\请领单.frf');
  //frReport1.ShowReport;
end;

procedure Tfm_qldcd.btn_cxClick(Sender: TObject);
begin
  print_report();
end;

procedure Tfm_qldcd.RadioGroup1Click(Sender: TObject);
begin
  EdCode.SetFocus;
end;

procedure Tfm_qldcd.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
   if ParName='type' then
   begin
     case  dm.Q_comm.FieldByName('type').AsInteger of
     1:ParValue:='西药 字';
     2:ParValue:='中草药 字';
     3:ParValue:='中成药 字';
     end;
   end;
end;

{procedure Tfm_qldcd.frReport1BeforePrint(Memo: TStringList; View: TfrView);
begin
  if View.Name='Mem_title' then memo.Text:=Trim(fm_main.Label_hospital.Caption)+'药品出库单';
end;}

end.
