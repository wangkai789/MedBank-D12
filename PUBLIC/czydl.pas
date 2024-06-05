unit czydl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, Db, jpeg,
  ExtCtrls;

type
  Tfm_czydl = class(TForm)
    Ed_xm: TEdit;
    Ed_mm: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Ed_bh: TEdit;
    Ed_ksmc: TEdit;
    Image1: TImage;
    BitBtn1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ListBox1: TListBox;
    lbl_Ver: TLabel;
    procedure Ed_bhKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_mmKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ed_bhEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Ed_ksmcKeyPress(Sender: TObject; var Key: Char);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure Ed_ksmcDblClick(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure  sysksgroup_sq(itemid:smallint;bh:smallint);
  public
    { Public declarations }
    supperuser:boolean;
    level:integer;
    sysgroup:string;
  end;

var
  fm_czydl: Tfm_czydl;

implementation

uses DATA, factory, main,MD5;


{$R *.DFM}
procedure Tfm_czydl.sysksgroup_sq(itemid:smallint;bh:smallint);
begin
with dm.Q_comm do
begin
  close;
  sql.clear;
  if sysgroup='99' then
  begin
   sql.add('select a.itemid1,b.ksmc,c.updatetime From syscustomsq a,jgxx b,jg_sq c');
   sql.add('where a.itemid=c.sq and a.lvel=99 and a.itemid=:itemid and a.bh=:bh and a.itemid1=b.ksbm');
  end
  else
  begin
     sql.add('select b.itemid1,c.ksmc,d.updatetime  From zgzb a,sysgroupsq b,jgxx c,jg_sq d');
     sql.add('where b.itemid=d.sq and a.sysgroup=b.lvel and b.itemid=:itemid and a.bh=:bh and b.itemid1=c.ksbm');
  end;
  ParamByName('itemid').AsInteger:=itemid;
  ParamByName('bh').AsInteger:=bh;
  open;
  if IsEmpty then
  begin
    application.MessageBox('该用户'+#13+'1:无权使用该系统'+#13+'2:该系统下未分配使用科室','提示信息',mb_iconinformation);
    Ed_xm.Clear;
    Ed_ksmc.Clear;
    exit;
  end;
   Ed_ksmc.clear;
   Ed_ksmc.tag:=0;
   factory.sys_updatetime:=fieldbyname('updatetime').asdatetime;
   ListBox1.Items.clear;
  while not eof do
  begin
    ListBox1.Items.Add(fieldbyname('itemid1').asstring+':'+
                       fieldbyname('ksmc').asstring);
    next;
  end;
   case ListBox1.Items.Count of
   0: application.MessageBox('该用户'+#13+'1:无权使用该系统'+#13+'2:该系统下未分配使用科室','提示信息',mb_iconinformation);
   1:
   begin
     ListBox1.ItemIndex :=0;
     ListBox1DblClick(listbox1);
   end;
   else
     begin
       ListBox1.Visible:=true;
       ListBox1.Left:=ed_ksmc.Left;
       ListBox1.Top:=ed_ksmc.top+ed_ksmc.height;
       ListBox1.ItemIndex :=0;
       ListBox1.setfocus;
     end;
  end;
end;
end;

procedure Tfm_czydl.Ed_bhKeyPress(Sender: TObject; var Key: Char);
begin
if not(integer(key) in [8,13,48,49,50,51,52,53,54,55,56,57])  then key:=#27;
if key=#13 then
   begin
     with dm.q_comm do
     begin
       close;
       SQL.Clear;
       SQL.Add('select a.xm,a.zcbm,powerlevel,sysgroup,bh_country from zgzb a ,mmb c');
       sql.add('where  a.bh=:bh and a.bh=c.bh and a.ifzy=1');
       ParamByName('bh').AsInteger:=strtoint(Ed_bh.text);
       Open;
     end;
     if dm.Q_comm.IsEmpty then
     begin
       application.MessageBox('无此用户!','信息',0);
       exit;
     end;
     Ed_xm.Text:=dm.Q_comm['xm'];
     dm.sysinfo.OpidYBCode:=dm.q_comm.fieldbyname('bh_country').AsString;
     try
       Ed_xm.Tag:=dm.q_comm.fieldbyname('zcbm').asinteger;
     except
       Ed_xm.Tag:=0;
     end;
     level:=strtointdef(dm.q_comm.FieldByName('powerlevel').asstring,0);
     sysgroup:=dm.q_comm.FieldByName('sysgroup').asstring;
     if   level=1 then
       supperuser:=true
     else
       supperuser:=false;
     Ed_mm.Enabled:=true;
     Ed_ksmc.Enabled:=true;
     sysksgroup_sq(fm_main.tag,strtoint(ed_bh.text));
   end;
end;

procedure Tfm_czydl.Ed_mmKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then BitBtn1.click;
end;

procedure Tfm_czydl.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfm_czydl.FormShow(Sender: TObject);
begin
  self.Tag:=0;
  Ed_bh.SetFocus;
  dm.Fver:='VER:'+GetFileVersion(dm.FMainPath+'pyk.exe');
  Lbl_VER.Caption:=dm.Fver;
  self.Caption :=dm.sysinfo.hospitalName+'-'+'登录';
end;

procedure Tfm_czydl.Ed_bhEnter(Sender: TObject);
begin
  Ed_xm.Clear;
  Ed_mm.Clear;
  Ed_ksmc.Clear;
  ed_ksmc.Enabled:=false;
  Ed_mm.Enabled:=false;
end;

procedure Tfm_czydl.SpeedButton1Click(Sender: TObject);
var MD5Sn:string;
begin
   with dm.Q_comm do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select * from mmb where bh=:bh ');
      ParamByName('bh').AsInteger:=strtoint(Ed_bh.Text);
      Open;
   end;
   MD5Sn:=MD5Str(Trim(Ed_mm.text));
   if trim(dm.Q_comm.FieldByName('mm').asstring)<>MD5Sn then
   begin
     application.MessageBox('密码错误!','信息',0);
     self.Tag:=0;
     exit;
   end;
   Fm_main.StatusBar1.Panels[0].Text:='[部门]'+inttostr(Ed_ksmc.tag)+':'+Ed_ksmc.Text;
   Fm_main.StatusBar1.Panels[1].Text:='[用户]'+Ed_bh.Text+':'+dm.sysinfo.OpidYBCode+':'+Ed_xm.text;
   Fm_main.StatusBar1.Panels[2].Text:='[时间]：'+datetimetostr(now);
  
  self.Tag:=1;
  self.Close;
  dm.Fopid:=trim(ed_bh.Text);
  dm.Fopidname:=trim(ed_xm.Text);
  dm.Fksbm:=ed_ksmc.Tag;
end;

procedure Tfm_czydl.SpeedButton2Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tfm_czydl.Ed_ksmcKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13  then  Ed_ksmcDblClick(sender);
end;

procedure Tfm_czydl.ListBox1DblClick(Sender: TObject);
var  str:string;
     strlen:integer;
begin
  str:=listbox1.Items.Strings[listbox1.itemindex];
  ed_ksmc.text:=copy(str,Pos(':',str)+1,length(str)-Pos(':',str));
  ed_ksmc.Tag:=strtoint(copy(str, 1,pos(':',str)-1));
  ed_mm.SetFocus;
end;

procedure Tfm_czydl.ListBox1Exit(Sender: TObject);
begin
  listbox1.Visible:=false;
end;

procedure Tfm_czydl.Ed_ksmcDblClick(Sender: TObject);
begin
if supperuser then
begin
   ListBox1.Visible:=true;
   ListBox1.Left:=ed_ksmc.Left;
   ListBox1.Top:=ed_ksmc.top+ed_ksmc.height;
end;
end;

procedure Tfm_czydl.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then ListBox1DblClick(sender);
end;

end.
