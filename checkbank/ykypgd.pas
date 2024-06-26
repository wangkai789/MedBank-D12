unit ykypgd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, , FR_DBSet, FR_Class, ExtCtrls, StdCtrls, DBGrids, Grids,
  DBGridEh, Buttons, ComCtrls, Mask, DBCtrls,Excel97,OleServer,comobj,
  GridsEh, Data.DB   ;

type
  TFm_ykyppd = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Label8: TLabel;
    lab_kc: TLabel;
    bbtn_kc: TBitBtn;
    bitprint: TBitBtn;
    bbtn_out1: TBitBtn;
    Ed_yznr_kc: TEdit;
    SaveDialog1: TSaveDialog;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    bbtn_search2: TBitBtn;
    datefrom3: TDateTimePicker;
    dateto3: TDateTimePicker;
    Ed_yznr1: TEdit;
    BitBtn2: TBitBtn;
    DBGrid_xyzb1: TDBGrid;
    Label12: TLabel;
    Com_kind1: TComboBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    ed_sl: TEdit;
    ed_jldw: TEdit;
    Label13: TLabel;
    ed_price: TEdit;
    Label20: TLabel;
    ed_xh: TEdit;
    Label21: TLabel;
    ed_bm: TEdit;
    Label22: TLabel;
    ed_change: TEdit;
    Com_kind: TComboBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ed_yp: TEdit;
    Label16: TLabel;
    Ed_dh: TEdit;
    Label3: TLabel;
    edt_gg: TEdit;
    Label4: TLabel;
    cmbx_storetype: TComboBox;
    Label5: TLabel;
    pnl1: TPanel;
    bbtn_add: TBitBtn;
    BitBtn1: TBitBtn;
    bbtn_print: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_ypKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrid1DblClick(Sender: TObject);
    procedure dbgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_xkclKeyPress(Sender: TObject; var Key: Char);
    procedure ed_ypEnter(Sender: TObject);
    procedure bbtn_search2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Ed_yznr1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_xyzb1DblClick(Sender: TObject);
    procedure DBGrid_xyzb1Exit(Sender: TObject);
    procedure DBGrid_xyzb1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbtn_printClick(Sender: TObject);
    procedure frReport1BeforePrint(Memo: TStringList; View: TfrView);
    procedure ed_slChange(Sender: TObject);
    procedure ed_slKeyPress(Sender: TObject; var Key: Char);
    procedure bbtn_addClick(Sender: TObject);
    procedure ed_changeKeyPress(Sender: TObject; var Key: Char);
    procedure Com_kindKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_ykyppd: TFm_ykyppd;
  year,month,day:word;
  year1,month1,day1:word;
  FirstAlpha:string[1];

implementation

uses data, czydl, main;

{$R *.dfm}

procedure TFm_ykyppd.FormShow(Sender: TObject);
var
 icount:integer;
begin
  with dm.Q_comm do
  begin
   close;
   sql.clear;
   sql.add('select mc From pub_constant where kind=3 order by sequence');
   open;
   if isempty then exit else
   begin
     com_kind.Clear;
     Com_kind1.Clear;
     Com_kind1.items.Add('全部');
     while not eof do
     begin
      com_kind.Items.add(fieldbyname('mc').asstring);
      com_kind1.Items.add(fieldbyname('mc').asstring);
      next;
     end;
   end;
  end;
 ed_yp.Clear;
 edt_gg.Clear;
 ed_price.clear;
 ed_jldw.clear;
 ed_sl.Clear;
 ed_xh.clear;
 ed_bm.clear;
 ed_change.clear;
 com_kind.ItemIndex :=0;
 com_kind1.ItemIndex :=0;
 datefrom3.Date :=date();
 dateto3.Date :=date();
 Ed_yznr1.clear ;
 dm.Q_comm.Close;
 dm.SetStoreValue(cmbx_storetype);
end;

procedure TFm_ykyppd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.q_comm.close;
  action:=cafree ;
end;

procedure TFm_ykyppd.ed_ypKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  with dm.q_comm  do
  begin
    close;
    sql.clear;
    sql.add('select a.ym,c.kcl,a.ylsj,a.gg,a.produce,c.rkxh,a.ypbh,a.jldw');
    sql.add('from xyzb a,xykr b,xykcun c,ypjx d');
    sql.add('where a.ypbh=b.ypbh and b.rkxh=c.rkxh and b.ypbh=c.ypbh and a.jxbm =d.jxbm');
    sql.add('and a.ifzy=1 and a.ylsj>0 and (a.pym like :pym or a.ypbh=:ypbh) ');
    sql.add('and storetype=:storetype');
    parambyname('pym').asstring:='%'+ed_yp.text +'%';
    parambyname('ypbh').asstring:=ed_yp.text ;
    parambyname('storetype').asstring:=cmbx_storetype.Text;
    sql.add('order by b.rkxh,a.ypbh');
    open;
    if not isempty then
    begin
      dbgrid1.Visible:=true;
      dbgrid1.setfocus;
    end else   application.MessageBox('无此药品！','信息',32);

  end;
end;

procedure TFm_ykyppd.dbgrid1DblClick(Sender: TObject);
begin
   ed_price.text:=dm.q_comm.fieldbyname('ylsj').asstring;
   ed_sl.text:=dm.q_comm.fieldbyname('kcl').asstring;
   ed_jldw.text:=dm.q_comm.fieldbyname('jldw').asstring;
   ed_xh.text:=dm.q_comm.fieldbyname('rkxh').asstring;
   ed_bm.text:=dm.q_comm.fieldbyname('ypbh').asstring;
   ed_yp.Text:=dm.q_comm.fieldbyname('ym').asstring;
   edt_gg.Text:=dm.q_comm.fieldbyname('gg').asstring;
   ed_change.setfocus;
end;

procedure TFm_ykyppd.dbgrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then DBGrid1DblClick(Sender);
end;

procedure TFm_ykyppd.ed_xkclKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then com_kind.SetFocus ;
end;

procedure TFm_ykyppd.ed_ypEnter(Sender: TObject);
begin
  ed_yp.Clear;
end;

procedure TFm_ykyppd.bbtn_search2Click(Sender: TObject);
begin
 with dm.Q_public do
 begin
   close;
   sql.clear;
   sql.Add('select a.dh,a.ypbh,b.ym,b.gg,a.source,a.change,b.jldw,a.lsj,a.[time],');
   sql.Add('je=round(a.lsj*a.change,2),b.lb,a.opid,a.memo');
   sql.add('from pub_yk_pdb a,xyzb b');
   sql.add('where a.ypbh=b.ypbh');
   sql.add('and datediff(day,time,:datefrom)<=0 and  datediff(day,time,:dateto)>=0 ');
   If Trim(Ed_yznr1.text)<>'' Then
      begin
        sql.add('and a.ypbh=:ypbh');
        parambyname('ypbh').asstring := Ed_yznr1.text;
      end;
   If Com_kind1.itemindex<>0 then
     begin
       sql.add('and memo=:memo');
       parambyname('memo').asstring:=Com_kind1.text;
     end;
   parambyname('datefrom').asdate := datefrom3.Date;
   parambyname('dateto').asdate := dateto3.Date;
   sql.add('order by a.xh');
   open;
   DBGrid4.DataSource :=dm.DS_public;
   DBGrid4.Columns[0].Footer.valuetype:=fvtStaticText;
   DBGrid4.Columns[0].Footer.Value := '合计';
   DBGrid4.Columns[5].Footer.valuetype:=fvtSum;
   DBGrid4.Columns[8].Footer.valuetype:=fvtSum;
 end;
end;

procedure TFm_ykyppd.BitBtn2Click(Sender: TObject);
var
  eclApp,WorkBook:Variant;
  //声明为OLE Automation 对象
  xlsFileName:string;
  zds,i,j,k,row:integer;
  temp:variant;
begin
  SaveDialog1.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  IF (SaveDialog1.Execute) and (trim(SaveDialog1.filename)<>'')   then
  begin
    xlsFileName:=SaveDialog1.filename;
  end
  else exit;
  try
//创建OLE对象Excel Application与 WorkBook
   decodedate(Datefrom3.date,year,month,day);
   decodedate(Dateto3.date,year1,month1,day1);
   eclApp:=CreateOleObject('Excel.Application');
   WorkBook:=CreateOleobject('Excel.Sheet');
  except
    ShowMessage('您的机器里未安装Microsoft Excel。');
    Exit;
  end;
 try
   workBook:=eclApp.workBooks.Add;
   zds:=dm.Q_public.FieldCount;
   row:=Dm.Q_Public.recordcount+2;

   eclApp.range['A1:'+chr(zds+64)+'1'].Merge(True);
   eclApp.range['A1:'+chr(zds+64)+'1'].HorizontalAlignment :=  xlCenter;
   eclApp.range['A1:'+chr(zds+64)+'1'].VerticalAlignment :=  xlBottom;
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Name := '宋体';
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Size := 14;

   eclApp.range['A2:'+chr(zds+64)+'2'].font.bold:=true;
   eclApp.range['A2:'+chr(zds+64)+'2'].Font.Size := 10;
   eclApp.cells[1,1]:=
       inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)+
                       '日-----'+inttostr(year1)+'年'+inttostr(month1)+'月'+inttostr(day1)+'日'
        +'药库盘点变化量';
   eclApp.cells[2,1]:='盘点号';
   eclApp.cells[2,2]:='药品编码';
   eclApp.cells[2,3]:='药名';
   eclApp.cells[2,4]:='规格';
   eclApp.cells[2,5]:='改变前';
   eclApp.cells[2,6]:='变化量';
   eclApp.cells[2,7]:='药库单位';
   eclApp.cells[2,8]:='药库单价';
   eclApp.cells[2,9]:='变化日期';
   eclApp.cells[2,10]:='变化金额';
   eclApp.cells[2,11]:='药品类别';
   eclApp.cells[2,12]:='操作员';
   eclApp.cells[2,13]:='备注';
    for J:=9 to  zds do
    eclApp.cells[row+1,J]:='=SUM('+chr(J+64)+'3'+':'+chr(J+64)+inttostr(row) + ')';
  J:=3;
  Dm.Q_Public.first;
  while not Dm.Q_Public.eof do
  begin
    for k:=1 to zds do
    begin
      temp:=Dm.Q_Public.Fields[k-1].Value ;
      eclApp.cells[j,k]:=temp;
    end;
    Dm.Q_Public.next;
    j:=j+1;
  end;

   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].HorizontalAlignment := xlRight;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].VerticalAlignment :=xlBottom;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].Font.size := 10;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].RowHeight := 14;

   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Borders.LineStyle := 1;//加边界
   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Columns.AutoFit;//列自适应

   WorkBook.saveas(xlsFileName);
   application.MessageBox('数据导出到excel成功','提示信息',mb_iconinformation);
   WorkBook.close;
   eclApp.Quit;
except
  ShowMessage('不能正确操作Excel文件。可能是该文件已被其他程序打开,或系统错误。');
  WorkBook.close;
  eclApp.Quit;
end;
end;

procedure TFm_ykyppd.Ed_yznr1KeyPress(Sender: TObject; var Key: Char);
var    codelen,searchway:integer;
begin
  If key<>#13 Then Exit;
  with dm.Q_xyzb do
  begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.YPBH,a.ym,a.gg,a.jldw,YLSJ=round(a.ylsj/a.hsb,4),a.hsb,a.cfhsb,a.type,a.skintry');
      SQL.Add('from xyzb a');
      CodeLen := Ed_yznr1.GetTextLen;
      FirstAlpha := copy(Ed_yznr1.Text,1,1);
      SearchWay := 4;
      try
        FirstAlpha := FirstAlpha[1];
      except
        FirstAlpha :='';
        Searchway:=5;
      end;
      if (UpperCase(FirstAlpha) <= 'Z') and (UpperCase(FirstAlpha) >= 'A')  then
        SearchWay := 1;
      if (UpperCase(FirstAlpha)<= '9') and (UpperCase(FirstAlpha) >= '0') and (CodeLen <= 4) then
        SearchWay := 2;
      if (UpperCase(FirstAlpha)<= '9') and (UpperCase(FirstAlpha) >= '0') and (CodeLen > 4) then
        SearchWay := 3;
      case SearchWay of
      1:             //拼音码
        begin
         SQL.Add(' WHERE a.pym like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr1.Text+'%';
        end;
      2:              //流水码
        begin
         SQL.Add(' WHERE a.lsm like :SearchCode');
         ParamByName('SearchCode').AsString := trim(Ed_yznr1.Text);
        end;
      3:           //药品编码
        begin
         SQL.Add(' WHERE a.ypbh like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr1.Text+'%';
        end;
      4:            //药名
        begin
         SQL.Add(' WHERE a.ym like :SearchCode ');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr1.Text+'%';
        end;
      end;
     sql.Add('and a.ylsj>0  and a.ifzy=1 ');
     Open;
      if RecordCount = 1 then  DBGrid_xyzb1DblClick(sender)
      else
      if RecordCount > 1 then //多条记录时可以USE KEYBORAD OR MOUSE 定位
      begin
        DBGrid_XYZB1.Visible := True;
        DBGrid_XYZB1.SetFocus;
      end
      else  Application.MessageBox('无此编码药品或库存量不足','错误信息',mb_iconerror);
  end;
end;

procedure TFm_ykyppd.DBGrid_xyzb1DblClick(Sender: TObject);
begin
   Label19.caption:=dm.Q_xyzb.fieldbyname('ym').asstring+':'+dm.Q_xyzb.fieldbyname('gg').asstring;
   Ed_yznr1.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
   bbtn_search2.SetFocus ;
end;

procedure TFm_ykyppd.DBGrid_xyzb1Exit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFm_ykyppd.DBGrid_xyzb1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_xyzb1DblClick(Sender);
end;

procedure TFm_ykyppd.BitBtn1Click(Sender: TObject);
begin
  with dm.q_use do
  begin
    close;
    sql.clear;
    sql.add('declare @maxdh int');
    sql.Add('select @maxdh=isnull(max(dh),0)+1 From pub_yk_pdb where dh is not null');
    sql.Add('update pub_yk_pdb set dh=@maxdh where dh is null ');
    try
      execsql;
      bbtn_print.setfocus ;
    except
      application.messagebox(pchar('修改库存失败'),'提示信息',mb_iconerror);
      exit;
    end;
  end;
  with dm.Q_comm1 do
  begin
     close;
     sql.clear;
     sql.Add('select maxdh=isnull(max(dh),0) from pub_yk_pdb where dh is not null ');
     open;
     Ed_dh.Text:=fieldbyname('maxdh').asstring;
  end;
end;

procedure TFm_ykyppd.bbtn_printClick(Sender: TObject);
begin
  with dm.Q_comm1 do
  begin
     close;
     sql.clear;
     sql.add('select a.dh,a.ypbh,b.ym,b.gg,a.source,a.change,b.jldw,a.lsj,je=a.Change*a.lsj,a.memo,a.time ');
     sql.add('from pub_yk_pdb a,xyzb b  ');
     sql.add('where  a.ypbh=b.ypbh and dh=:dh');
     sql.add('order by a.xh');
     parambyname('dh').asinteger:=strtoint(ed_dh.text);
     open;
     frReport1.clear;
     frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'ykreport\药库盘点单.frf');
     frReport1.ShowReport ;
  end;
end;

procedure TFm_ykyppd.frReport1BeforePrint(Memo: TStringList; View: TfrView);
begin
  if view.Name='QRLab_title' then
     memo.text:=fm_main.Label_hospital.caption+'药品盘点单';
  if view.Name='QRLab_yfbm' then  memo.text:='盘点科室：药库';
end;


procedure TFm_ykyppd.ed_slChange(Sender: TObject);
begin
   BBtn_add.Enabled :=trim(ed_sl.text)<>'';
end;

procedure TFm_ykyppd.ed_slKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then bbtn_add.setfocus;
end;

procedure TFm_ykyppd.bbtn_addClick(Sender: TObject);
Var ckl:currency;
    bsl:currency;
begin
   WITH dm.q_comm DO
   BEGIN
     CLOSE;
     SQL.CLEAR;
     SQL.ADD('select bsl=isnull(sum(bsl),0) from ypbsxb');
     sql.add('where rkxh=:rkxh and spr_no is not null');
     parambyname('rkxh').asinteger:=strtoint(ed_xh.text);
     OPEN;
   END;
   bsl:=dm.q_comm.FIELDBYNAME('bsl').ASCURRENCY;
   WITH dm.q_comm DO
   BEGIN
     CLOSE;
     SQL.CLEAR;
     SQL.ADD(' SELECT CKSL=ISNULL(SUM(CKSL),0)  FROM  xykchu WHERE RKXH=:RKXH');
     parambyname('rkxh').asinteger:=strtoint(ed_xh.text);
     OPEN;
   END;
   ckl:=dm.q_comm.FIELDBYNAME('CKSL').ASCURRENCY;
   with dm.q_comm do
   begin
      close;
      sql.clear;
      sql.add('update xykcun set kcl=isnull(kcl,0)+:change where ypbh=:ypbh and rkxh=:rkxh');
      sql.add('insert into pub_yk_pdb(rkxh,ypbh,source,change,lsj,memo,opid,[time])');
      sql.add('values (:rkxh,:ypbh,:oldrksl,:change,:lsj,:memo,:opid,getdate())');
      sql.add('select b.ylsj,a.*, b.ym from xykcun a,xyzb b,xykr c ');
      sql.add('where  a.rkxh=c.rkxh and b.ypbh=c.ypbh and a.ypbh=b.ypbh and a.rkxh=:rkxh ');
      parambyname('rkxh').asinteger:=strtoint(ed_xh.text);
      parambyname('ypbh').asstring:=ed_bm.text;
      parambyname('oldrksl').ascurrency:=strtocurr(Ed_sl.text);
      parambyname('change').ascurrency:=strtocurr(ed_change.text);
      parambyname('lsj').asstring:=Ed_price.text;
      parambyname('memo').asstring:=com_kind.text;
      parambyname('opid').assmallint:=strtoint(fm_czydl.ed_bh.text);
      open;
   end;
   with dm.Q_use do
   begin
      close;
      sql.clear;
      sql.add('select a.dh,a.ypbh,b.ym,b.gg,a.source,a.change,b.jldw,a.lsj,a.memo,b.produce');
      sql.add('From pub_yk_pdb a,xyzb b  where  a.ypbh=b.ypbh and a.dh is null');
      sql.add('order by a.xh');
      open;
   end;
   ed_yp.Clear;
   edt_gg.Clear;
   ed_price.clear;
   Ed_jldw.clear;
   ed_sl.Clear;
   ed_xh.clear;
   ed_bm.clear;
   ed_change.clear;
   ed_yp.setfocus;
end;

procedure TFm_ykyppd.ed_changeKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then Com_kind.SetFocus ;
end;

procedure TFm_ykyppd.Com_kindKeyPress(Sender: TObject; var Key: Char);
begin
   If key=#13 Then  bbtn_add.SetFocus ;
end;

procedure TFm_ykyppd.DBGrid1Exit(Sender: TObject);
begin
   DBGrid1.Visible:=false;
end;

end.
