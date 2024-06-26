unit fkcl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, ImgList, Data.DB,
  System.ImageList;

type
  Tfm_fkcl = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBGrid_fkyp: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    DBGrid_ghdw: TDBGrid;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    Panel6: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Panel1: TPanel;
    DBGrid_xzghdw: TDBGrid;
    DBGrid_xszm: TDBGrid;
    Timer1: TTimer;
    Label20: TLabel;
    ImageList1: TImageList;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ghdwDblClick(Sender: TObject);
    procedure DBGrid_ghdwKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_fkypDblClick(Sender: TObject);
    procedure DBGrid_fkypKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure datefromKeyPress(Sender: TObject; var Key: Char);
    procedure datetoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_xzghdwCellClick(Column: TColumn);
    procedure BitBtn6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit9Enter(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
  private
    { Private declarations }
  public
  i,mmrkxh: integer;
    { Public declarations }
  end;

var
  fm_fkcl: Tfm_fkcl;

implementation                                    

uses data, czydl, Factory;

{$R *.DFM}

procedure Tfm_fkcl.Edit1Change(Sender: TObject);
begin
//BitBtn1.Enabled:=true;
end;

procedure Tfm_fkcl.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select * from ghdw ');
    if edit1.text<>'' then
    begin
    sql.add('where inc_call like :mpym or inc_name like :mdwmc');
    ParamByName('mpym').asstring:='%'+edit1.text+'%';
    ParamByName('mdwmc').asstring:='%'+edit1.text+'%';
    end;
    open;
    if dm.q_comm.IsEmpty then
    begin
      Application.MessageBox('无此供货单位!！','提示',16);
      Exit;
    end;
  end;
DBGrid_ghdw.Visible:=true;
DBGrid_ghdw.SetFocus;
end;
end;

procedure Tfm_fkcl.DBGrid_ghdwDblClick(Sender: TObject);

begin
 edit1.text:=dbgrid_ghdw.Fields[1].asstring;
 edit10.text:=dbgrid_ghdw.Fields[0].Asstring;
 dbgrid_ghdw.Visible:=false;
 with dm.Q_public do
 begin
   Close;
   SQL.Clear;
   SQL.Add('select rkrq, b.ym,b.gg, cm, a.rksl,a.jldw,');
   SQL.Add('jhj, yfje=jhj*rksl,  sfje=isnull(yfke,0), rkxh, already_pay=isnull(yfke,0),sxrq');
   SQL.Add('from xykr a, xyzb b, sccj c ');
   SQL.Add(' where (rksl*jhj-yfke>0.1) and a.ghdw=:mghdw and ');
   SQL.Add('a.ypbh=b.ypbh  and a.cjbm=c.cjbm');
   ParamByName('mghdw').AsInteger:=strtoint(trim(edit10.text));
   Prepare;
   try
    open;
    except
     ExecSQL;
    end;
   end;
   if dm.Q_public.IsEmpty then
   begin
     Application.MessageBox('此供货单位没有未付款的药品！','提示',48);
     edit1.setfocus;
   end
   else   begin
     DBGrid_fkyp.Visible:=true;
     DBGrid_fkyp.SetFocus;
   end;
end;

procedure Tfm_fkcl.DBGrid_ghdwKeyPress(Sender: TObject; var Key: Char);
begin
DBGrid_ghdwDblClick(Sender);
end;

procedure Tfm_fkcl.DBGrid_fkypDblClick(Sender: TObject);
begin
//  BitBtn1.Enabled:=false;
//  BitBtn2.Enabled:=true;
  edit4.text:=dbgrid_fkyp.Fields[1].asstring;
  edit5.text:=dbgrid_fkyp.Fields[2].Asstring;
  edit6.text:=dbgrid_fkyp.Fields[0].asstring;
  edit7.text:=dbgrid_fkyp.Fields[7].asstring;
  mmrkxh:=dbgrid_fkyp.Fields[9].AsInteger;
   with dm.Q_comm do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select fkje=isnull(sum(fkje),0),rkxh from xykr_fk where rkxh=:mrkxh  group by rkxh');
     ParamByName('mrkxh').AsInteger:=mmrkxh;
     Prepare;
     Open;
   if recordcount>0 then
   begin
   edit8.text:=dbgrid_fkyp.Fields[8].Asstring+dm.Q_comm['fkje'];
    //dBGrid_llfk.Visible:=true;
    edit9.SetFocus;
   end
   else
   begin
   edit8.text:=dbgrid_fkyp.Fields[8].Asstring;
   edit9.SetFocus;
   end;
   end;   
end;

procedure Tfm_fkcl.DBGrid_fkypKeyPress(Sender: TObject; var Key: Char);
begin
  DBGrid_fkypDblClick(Sender);
end;

procedure Tfm_fkcl.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tfm_fkcl.Timer1Timer(Sender: TObject);
begin
{label19.left:=label19.left-10;
label20.left:=label20.left-10;
if label19.left<-799 then
begin
label19.left:=799;
end;
if label20.left<-799 then
begin
label20.left:=799;
end;}
end;

procedure Tfm_fkcl.FormShow(Sender: TObject);
begin
datefrom.date:=now;
dateto.date:=now;
dm.q_public1.close;
dm.q_comm.close;
dm.q_public.close;
//label19.left:=0;
//label20.left:=-799;
PageControl1Change(Sender);
end;

procedure Tfm_fkcl.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  ISDIGIT(KEY);
 if key=#13 then
   begin
   if edit9.text='' then
   begin
     Application.MessageBox('现付款额不能为空，请重输！','提示',16);
     edit9.setfocus;
     exit;
   end;
    if (StrToCurr(trim(edit9.text))+StrToCurr(trim(edit8.text)))>(StrToCurr(trim(edit7.text))) then
       begin
        Application.MessageBox('付款金额超出应付金额！','提示',16);
        edit9.Clear;
        edit9.setfocus;
       end
    else
       begin
        BitBtn2.Enabled:=true;
        BitBtn2.SetFocus;
       end;
   end;
end;

procedure Tfm_fkcl.BitBtn2Click(Sender: TObject);
begin
with dm.q_public1 do
begin
  close;
  sql.Clear;
  sql.add('exec  xykr_fkcl :mrkxh,:mfkje,:mopid,:mopid_name');
  ParamByName('mrkxh').AsInteger :=mmrkxh;
  ParamByName('mfkje').AsCurrency :=StrToCurr(trim(edit9.text));
  ParamByName('mopid').AssmallInt :=strtoint(trim(fm_czydl.ed_bh.text));
  ParamByName('mopid_name').Asstring :=trim(fm_czydl.ed_xm.text);
  try
    execsql;
    Application.MessageBox('付款成功！','信息提示',48);
    edit8.text:=CurrToStr(StrToCurr(trim(edit8.text))+StrToCurr(trim(edit9.text)));
    BitBtn2.Enabled:=false;BitBtn3.Enabled:=true;
  except
    Application.MessageBox('网络意外，数据丢失，请重新对该笔付款操作！','错误提示',16);
    exit;
  end;
end;
  with dm.q_public1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select a.rkrq, b.ym,b.gg, cm, a.rksl,a.jldw,d.fkje,');
    SQL.Add('a.jhj, yfje=a.jhj*a.rksl,  sfje=a.yfke, a.rkxh, already_pay=a.yfke,a.sxrq');
    SQL.Add('from xykr a, xyzb b, sccj c,xykr_fk d ');
    SQL.Add(' where (rksl*jhj-yfke>0.1) and a.ghdw=:mghdw and d.rkxh=a.rkxh and');
    SQL.Add('a.ypbh=b.ypbh and b.lb<>2 and a.cjbm=c.cjbm');
    ParamByName('mghdw').AsInteger:=strtoint(trim(edit10.text));
    Prepare;
    try
      open;
    except
      ExecSQL;
    end;
  end;
  {if StrToCurr(trim(edit8.text))>0 then
  begin
    with dm.q_comm do
      begin
      Close;
      SQL.Clear;
      SQL.Add('select fkje,fkrq,opid_name from xykr_fk where rkxh=:mrkxh');
      ParamByName('mrkxh').AsInteger:=mmrkxh;
      Prepare;
      Open;
    end;
    //dBGrid_llfk.Visible:=true;
  end; }
DBGrid_fkyp.SetFocus;
end;

procedure Tfm_fkcl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_public1.close;
dm.q_comm.close;
dm.q_public.close;
action:=cafree;
end;

procedure Tfm_fkcl.BitBtn3Click(Sender: TObject);
begin
if edit1.text<>'' then
       begin
        //qr_fkcl.Preview;
       end
    else
       begin
         Application.MessageBox('请先选出需要打印的药品！','错误提示',48);
         edit1.SetFocus;
       end;
end;

procedure Tfm_fkcl.Edit1Enter(Sender: TObject);
begin
edit1.Clear;
edit10.clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;
edit7.Clear;
edit8.Clear;
edit9.Clear;
DBGrid_fkyp.visible:=false;
//DBGrid_llfk.visible:=false;
end;

procedure Tfm_fkcl.BitBtn5Click(Sender: TObject);
begin
with dm.q_comm do
begin
  Close;
  SQL.Clear;
  SQL.Add('select bh=b.inc_code, cm=b.inc_name, zje=convert(float(12),str(sum(a.rksl*a.jhj),12,2)), ');
  SQL.Add('yfje=sum(a.yfke),ce=str(sum(a.rksl*a.jhj)-sum(a.yfke),12,2) from xykr a, ghdw b, xyzb c ,xykr_fk d');
  SQL.Add('where d.fkrq>=:qstime and d.fkrq<=:jztime');
  SQL.Add(' and a.ypbh=c.ypbh and c.lb<>2 and a.ghdw=b.inc_code and a.rkxh=d.rkxh');
  SQL.Add('group by b.inc_code,inc_name order by zje DESC');
  ParamByName('qstime').AsDateTime:=datefrom.Date;
  ParamByName('jztime').AsDateTime:=dateto.Date;
  Prepare;
   try
     open;
   except
     ExecSQL;
   end;
end;   
   DBGrid_xzghdw.Visible:=true;
   Panel1.Visible:=false;
end;

procedure Tfm_fkcl.BitBtn7Click(Sender: TObject);
begin
close;
end;

procedure Tfm_fkcl.datefromKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then dateto.setfocus;
end;

procedure Tfm_fkcl.datetoKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then BitBtn5.setfocus;
end;

procedure Tfm_fkcl.DBGrid_xzghdwCellClick(Column: TColumn);
begin
with dm.q_public do
begin
  Close;
  SQL.Clear;
  SQL.Add('select b.ym,b.gg,a.rkrq, c.fkje, c.fkrq,c.opid_name from xykr a, xyzb b,xykr_fk c');
  SQL.Add('where a.ghdw=:mghdw and c.fkrq>=:qstime and c.fkrq<=:jztime');
  SQL.Add('and a.ypbh=b.ypbh and b.lb<>2  and a.rkxh=c.rkxh order by rkrq');
  ParamByName('mghdw').AsInteger:=strtoint(DBGrid_xzghdw.Fields[0].asstring);;
  ParamByName('qstime').AsDateTime:=datefrom.Date;
  ParamByName('jztime').AsDateTime:=dateto.Date;
  Prepare;
   try
    Open;
   except
    ExecSQL;
   end;
end;
 DBGrid_xszm.Visible:=true;
end;

procedure Tfm_fkcl.BitBtn6Click(Sender: TObject);
begin
//qr_fkclcx.preview;
end;

procedure Tfm_fkcl.PageControl1Change(Sender: TObject);
begin
if PageControl1.activepage=TabSheet1  then  Edit1.SetFocus;
if PageControl1.activepage=TabSheet2  then  datefrom.SetFocus;
end;

procedure Tfm_fkcl.Edit4Change(Sender: TObject);
begin
if edit4.text<>'' then edit9.enabled:=true else  edit9.enabled:=false;
end;

procedure Tfm_fkcl.Edit9Enter(Sender: TObject);
begin
edit9.clear;
end;

procedure Tfm_fkcl.Edit10Change(Sender: TObject);
begin
bitbtn3.Enabled:=false;
end;

end.
