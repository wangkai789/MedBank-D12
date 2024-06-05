unit rkdzf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Data.DB;

type
  Tfm_rkdzf = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edt_lsh: TEdit;
    btn_cancel: TBitBtn;
    Panel2: TPanel;
    BBtn_quit: TBitBtn;
    btn_save: TBitBtn;
    dt_inbankdate: TDateTimePicker;
    Label3: TLabel;
    Btn_SearInbank: TBitBtn;
    BBtn_print: TBitBtn;
    Pnl_list: TPanel;
    DBGrd_xm: TDBGrid;
    edt_code: TEdit;
    edt_name: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBGrd_InBankInfo: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBtn_quitClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure Btn_SearInbankClick(Sender: TObject);
    procedure BBtn_printClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure Edt_lshKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrd_InBankInfoColumns12EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Pnl_listExit(Sender: TObject);
    procedure DBGrd_InBankInfoColumns13EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edt_codeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrd_xmDblClick(Sender: TObject);
    procedure DBGrd_xmKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Fopid:integer;
    function  CheckOutBankStatus():boolean;
  public
    { Public declarations }
  end;

var
  fm_rkdzf: Tfm_rkdzf;
  intRow,intCol:integer;
implementation

uses data, czydl,main, rkdcd;

{$R *.DFM}

procedure Tfm_rkdzf.FormShow(Sender: TObject);
begin
  edt_lsh.setfocus;
  dm.q_comm.close;
  dm.Q_MXYZB.Close;
  dm.Q_MXYZB.CachedUpdates:=true;
  dm.Q_MXYZB.UpdateObject:=dm.UpdateSQL;
  dm.UpdateSQL.ModifySQL.Clear;
  dm.UpdateSQL.ModifySQL.Add('update xykr set  jhj=:jhj,pfj=:jhj,lsj=:lsj,rksl=:rksl  where rkxh=:rkxh ');
  dm.UpdateSQL.ModifySQL.Add('update xykcun set  kcl=:rksl  where rkxh=:rkxh ');
  btn_save.Enabled:=true;
  btn_cancel.Enabled:=true;
  dt_inbankdate.DateTime:=now;
  Fopid:=strtoint(trim(fm_czydl.Ed_bh.text));
  Pnl_list.Visible:=false;
  edt_code.Clear;
  edt_name.Clear;

end;

procedure Tfm_rkdzf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.q_comm.close;
  dm.Q_MXYZB.Close;
  dm.Q_MXYZB.CachedUpdates:=false;
  DBGrd_InBankInfo.DataSource:=nil;
end;


procedure Tfm_rkdzf.BBtn_quitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_rkdzf.btn_saveClick(Sender: TObject);
begin
  try
    if application.messagebox('是保存修改？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
    dm.Q_MXYZB.ApplyUpdates;
    dm.UpdateInBankInfo(strtoint(edt_lsh.text),dt_inbankdate.Date);
    Btn_SearInbank.Click;
    application.messagebox('修改成功！','提示',48);
  except
    application.messagebox('修改出错,请重试！','提示',48);
    exit;
  end;
end;

function Tfm_rkdzf.CheckOutBankStatus(): boolean;
begin
//  dm.CheckOutBankStatus(Frkxh);
end;

procedure Tfm_rkdzf.Btn_SearInbankClick(Sender: TObject);
var alsh:integer;
    ainbankdate:TDateTime;
begin
  alsh:=strtoint(edt_lsh.text);
  ainbankdate:=dt_inbankdate.DateTime;
  DBGrd_InBankInfo.DataSource:=dm.SearchInBankInfo(alsh,ainbankdate);
  if DBGrd_InBankInfo.DataSource=nil then
  begin
    application.messagebox('无此入库单或此入库单已经作废！','提示',48);
    btn_save.Enabled:=false;
    btn_cancel.Enabled:=false;
    edt_lsh.setfocus;
    exit;
  end;

  if dm.CheckOutBankStatus(alsh,ainbankdate)=true then
  begin
   application.messagebox('此入库单已经出库，不能修改或作废！','提示',48);
   DBGrd_InBankInfo.Columns[5].ReadOnly:=true;
   DBGrd_InBankInfo.Columns[6].ReadOnly:=true;
   DBGrd_InBankInfo.Columns[7].ReadOnly:=true;
   btn_save.Enabled:=false;
   btn_cancel.Enabled:=false;

   exit;
  end else
  begin
    DBGrd_InBankInfo.Columns[5].ReadOnly:=false;
    DBGrd_InBankInfo.Columns[6].ReadOnly:=false;
    DBGrd_InBankInfo.Columns[7].ReadOnly:=false;
    btn_save.Enabled:=true;
    btn_cancel.Enabled:=true;
  end;

end;

procedure Tfm_rkdzf.BBtn_printClick(Sender: TObject);
var ayear,amonth,aday:word;
begin
  DecodeDate(dt_inbankdate.Date, aYear, aMonth, aDay);
  with fm_rkdcd do
  begin
    tag:=0;
    RadioGroup1.ItemIndex:=0;
    EdCode.text:=trim(Edt_lsh.text);
    Ed_year.text:=inttostr(ayear);
    ed_month.text:=inttostr(aMonth);
    showmodal;
  end;
end;

procedure Tfm_rkdzf.btn_cancelClick(Sender: TObject);
var alsh:integer;
    ainbankdate:TDateTime;
begin
  alsh:=strtoint(Edt_lsh.text);
  ainbankdate:=dt_inbankdate.DateTime;
  if dm.CheckOutBankStatus(alsh,ainbankdate)=true then
  begin
   application.messagebox('此入库单已经出库，不能修改或作废！','提示',48);
   exit;
  end else
  begin
    if application.messagebox('是否作废入库单？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
    try
      dm.CancelInBankInfo(alsh,ainbankdate,Fopid);
      Btn_SearInbank.Click;
    except
      application.messagebox('作废失败！','提示',48);
    end;
  end;
end;

procedure Tfm_rkdzf.Edt_lshKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (trim(Edt_lsh.text)<>'') then Btn_SearInbank.Click;
end;

procedure Tfm_rkdzf.DBGrd_InBankInfoColumns12EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  Pnl_list.Tag:=100;
  Pnl_list.Visible:=true;
  edt_code.Clear;
  edt_code.SetFocus;
  edt_name.Clear;
  DBGrd_xm.DataSource:=nil;
end;

procedure Tfm_rkdzf.Pnl_listExit(Sender: TObject);
begin

   Pnl_list.Visible:=false;
end;

procedure Tfm_rkdzf.DBGrd_InBankInfoColumns13EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  Pnl_list.Tag:=101;
  Pnl_list.Visible:=true;
  edt_code.Clear;
  edt_code.SetFocus;
  edt_name.Clear;
  DBGrd_xm.DataSource:=nil;
end;

procedure Tfm_rkdzf.edt_codeKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    case Pnl_list.Tag of
    100:DBGrd_xm.DataSource:=dm.listSupply(edt_code.Text);
    101:DBGrd_xm.DataSource:=dm.listProduce(edt_code.Text);
    end;
    DBGrd_xm.SetFocus;
  end;
end;

procedure Tfm_rkdzf.DBGrd_xmDblClick(Sender: TObject);
var StrMsg:string;
begin

 if DBGrd_xm.DataSource=nil then exit;
 if DBGrd_xm.DataSource.DataSet.IsEmpty then exit;

  edt_code.Text:=DBGrd_xm.Fields[0].AsString;
  edt_name.Text:=DBGrd_xm.Fields[1].AsString;

  case  Pnl_list.Tag of
  100:StrMsg:='是否把供货单位【'+DBGrd_InBankInfo.Fields[12].AsString+'】修改为【'+edt_name.Text+'】？';
  101:StrMsg:='是否把厂家【'+DBGrd_InBankInfo.Fields[13].AsString+'】修改为【'+edt_name.Text+'】？';
  end;
  
  if application.messagebox(pchar(StrMsg),'信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;

  case  Pnl_list.Tag of
  100:dm.Updatesupply(DBGrd_InBankInfo.Fields[0].asinteger,strtoint(edt_code.text));
  101:dm.UpdateProduce(DBGrd_InBankInfo.Fields[0].asinteger,strtoint(edt_code.text));
  end;
  Pnl_list.Visible:=false;
  Btn_SearInbank.Click;
end;

procedure Tfm_rkdzf.DBGrd_xmKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  DBGrd_xmDblClick(sender);
end;

end.
