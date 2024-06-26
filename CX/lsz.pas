unit lsz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, ComCtrls, DBGridEh, GridsEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  EhLibVCL, DBAxisGridsEh;
type
  TFm_lsz = class(TForm)
    Panel2: TPanel;
    EdCode: TEdit;
    Label1: TLabel;
    DaTe_from: TDateTimePicker;
    DaTe_to: TDateTimePicker;
    BBtn_search: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGridEh;
    DBGrid2: TDBGridEh;
    DBGrid3: TDBGridEh;
    DBGrid_XYZB: TDBGrid;
    StatusBar1: TStatusBar;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    Label4: TLabel;
    Label6: TLabel;
    lab_rkxh: TLabel;
    Ed_rkxh: TEdit;
    Splitter3: TSplitter;
    DBGrid4: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid_XYZBDblClick(Sender: TObject);
    procedure DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
    procedure BBtn_searchClick(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DaTe_fromKeyPress(Sender: TObject; var Key: Char);
    procedure DaTe_toKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid_XYZBExit(Sender: TObject);
  private
    { Private declarations }
    Frk:currency;
    Fck1:currency;
    Fck2:currency;
    Fck3:currency;
    Fkcun:currency;
    procedure seek_rk(ypbh:string;rkxh:integer);
    procedure seek_ck(ypbh:string;rkxh:integer);
    procedure seek_kcun(ypbh:string;rkxh:integer);

    procedure seeksum_rk(ypbh:string;rkxh:integer);
    procedure seeksum_ck(ypbh:string;rkxh:integer);
    procedure seeksum_kcun(ypbh:string);


  public
    { Public declarations }
  end;

var
  Fm_lsz: TFm_lsz;

implementation

uses data,czydl;

{$R *.DFM}

procedure TFm_lsz.FormShow(Sender: TObject);
begin
  edcode.SetFocus;
  dm.Q_public1.close;
  dm.Q_public2.close;
  If self.tag=1 Then
     begin
        DaTe_from.DateTime:=date();
        DaTe_to.DateTime:=date();
     end
  Else
     begin
        SendMessage(EdCode.Handle, WM_CHAR, wparam(#13),  0);
        BBtn_searchClick(Sender);
     end;
end;

procedure TFm_lsz.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  with dm.Q_MedStore do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select a.lsm, a.ym, a.gg,a.pfj, a.ylsj, a.jjyp, a.gf, a.ypbh, a.zxdw, a.jldw, a.hsb, b.jx,a.lb');
    SQL.Add('from xyzb  a, ypjx b');
    SQL.Add('where (pym  like :pym or a.ypbh=:ypbh) and a.jxbm=b.jxbm');
    SQL.Add('and ifzy=1');
    parambyname('pym').AsString := '%'+EdCode.Text+'%';
    parambyname('ypbh').AsString :=EdCode.Text;
    open;
    if recordcount>0 then
    begin
      if recordcount=1 then DBGrid_XYZBDblClick(sender)
      else begin DBGrid_XYZB.Visible:=true; DBGrid_XYZB.SetFocus; end;
    end
    else
    begin
      application.MessageBox('无此药品!','提示提示',0+mb_iconinformation);
      Exit;
    end;
 end;
end;

procedure TFm_lsz.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFm_lsz.DBGrid_XYZBDblClick(Sender: TObject);
begin
  EdCode.Text := dm.Q_MedStore['ypbh'];
  StatusBar1.Panels[0].text:='药品名称：'+dm.Q_MedStore['ym'];
  DBGrid_XYZB.Visible:=false;
  DaTe_from.SetFocus;
end;

procedure TFm_lsz.DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_XYZBDblClick(Sender);
end;

procedure TFm_lsz.BBtn_searchClick(Sender: TObject);
var str1,str2,str3,str4,str5,str:string;
begin
 //入库
  seek_rk(edcode.text,0);
 //出库
  seek_ck(edcode.text,0);
 //库存
  seek_kcun(trim(EdCode.text),0);
  seeksum_rk(edcode.text,0);
  seeksum_ck(edcode.text,0);
  seeksum_kcun(edcode.text);

  str1:=currtostr(Frk)+'(入库)';
  str2:=currtostr(Fck1+Fck2+Fck3)+'(出库)';
  str3:=currtostr(Fkcun)+'(库存)';
  str4:=currtostr(Frk-(Fck1+Fck2+Fck3))+'(差值)';
  str5:=currtostr(Frk-(Fck1+Fck2+Fck3)-Fkcun);
  str:=str1+'-'+str2+'='+str4+'-'+str3+'='+str5;
  StatusBar1.Panels[1].text:=str;

  if str5='0' then StatusBar1.Panels[1].text:=str+'(入出平衡)'
  else StatusBar1.Panels[1].text:=str+'(入出不平衡)';
end;

procedure TFm_lsz.EdCodeEnter(Sender: TObject);
begin
  If self.tag=1 Then edcode.clear;
end;

procedure TFm_lsz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DBGrid1.DataSource:=nil;
   DBGrid2.DataSource:=nil;
   DBGrid3.DataSource:=nil;
   DBGrid4.DataSource:=nil;
end;
procedure TFm_lsz.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var i:integer;
begin
   for i:=0 to DBGrid1.Columns.Count -1 do
   begin
     DBGrid1.Columns[i].Title.Alignment :=tacenter;
   end;
end;

procedure TFm_lsz.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var i:integer;
begin
   for i:=0 to DBGrid2.Columns.Count -1 do
   begin
     DBGrid2.Columns[i].Title.Alignment :=tacenter;
   end;
end;

procedure TFm_lsz.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var i:integer;
begin
   for i:=0 to DBGrid2.Columns.Count -1 do
   begin
     DBGrid2.Columns[i].Title.Alignment :=tacenter;
   end;
end;

procedure TFm_lsz.DaTe_fromKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then DaTe_to.SetFocus;
end;

procedure TFm_lsz.DaTe_toKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then BBtn_search.SetFocus;
end;

procedure TFm_lsz.seek_ck(ypbh: string; rkxh: integer);
begin
  with dm.Q_public1 do
  begin
    close;
    sql.clear;
    SQL.add('select 入库序号=c.rkxh,流水号=c.lsh,请领单号=a.qldh,药品编号=b.ypbh,');
    SQL.add('药名=d.ym,规格=d.gg,计量单位=d.jldw,');
    SQL.add('出库数量=a.cksl,出库日期=a.ckrq,科室=a.ksbm');
    SQL.add('from xykchu a,qldb b,xykr c,xyzb d');
    SQL.add('where a.qldh=b.qldh and b.ypbh=c.ypbh and c.rkxh=a.rkxh');
    SQL.add('and d.ypbh=b.ypbh ');
    If Trim(Ed_rkxh.text)<>'' Then
      begin
        SQL.add('and a.rkxh=:rkxh ');
        ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
      end
    Else
      begin
        SQL.add('and a.ckrq between :tt1 and :tt2 ');
        ParamByName('tt1').asdate:=DaTe_from.Date;
        ParamByName('tt2').asdate:=DaTe_to.Date+1;
      end;
    if trim(ypbh)<>'' then
    begin
      SQL.add('and b.ypbh=:ypbh ');
      if rkxh<>0 then  SQL.add('and c.rkxh=:rkxh ');
    end ;
    SQL.add('union all');
    SQL.add('select 入库序号=c.rkxh,流水号=c.lsh,请领单号=a.qldh,药品编号=b.ypbh,');
    SQL.add('药名=d.ym,规格=d.gg,计量单位=d.jldw,');
    SQL.add('出库数量=a.cksl,出库日期=a.ckrq,科室=a.ksbm');
    SQL.add('from xykchu a,qldb b,xykr_zf c,xyzb d');
    SQL.add('where a.qldh=b.qldh and b.ypbh=c.ypbh and c.rkxh=a.rkxh');
    SQL.add('and d.ypbh=b.ypbh ');
    If Trim(Ed_rkxh.text)<>'' Then
      begin
        SQL.add('and a.rkxh=:rkxh ');
        ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
      end
    Else
      begin
        SQL.add('and a.ckrq between :tt1 and :tt2 ');
        ParamByName('tt1').asdate:=DaTe_from.Date;
        ParamByName('tt2').asdate:=DaTe_to.Date+1;
      end;
    if trim(ypbh)<>'' then
    begin
      SQL.add('and b.ypbh=:ypbh ');
      if rkxh<>0 then
      begin
          SQL.add('and c.rkxh=:rkxh ');
          ParamByName('rkxh').asinteger:=rkxh;
      end;
      SQL.add('order by a.qldh desc');
      ParamByName('ypbh').asstring:=trim(ypbh);
    end
    else  SQL.add('order by a.qldh desc');
    open;
    DBGrid2.DataSource:=dm.ds_public1;
  end;

  with dm.Q_public2 do
  begin
    close;
    sql.clear;
    SQL.add('select 入库序号=c.rkxh,流水号=c.lsh,请领单号=a.qldh,药品编号=b.ypbh,');
    SQL.add('药名=d.ym,规格=d.gg,计量单位=d.jldw,');
    SQL.add('出库数量=a.cksl,出库日期=a.ckrq,科室=a.ksbm');
    SQL.add('from xykchu a,depqldb b,xykr c,xyzb d');
    SQL.add('where a.qldh=b.qldh and b.ypbh=c.ypbh and c.rkxh=a.rkxh');
    SQL.add('and d.ypbh=b.ypbh ');
    If Trim(Ed_rkxh.text)<>'' Then
      begin
        SQL.add('and a.rkxh=:rkxh ');
        ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
      end
    Else
      begin
        SQL.add('and a.ckrq between :tt1 and :tt2 ');
        ParamByName('tt1').asdate:=DaTe_from.Date;
        ParamByName('tt2').asdate:=DaTe_to.Date+1;
      end;
    if trim(ypbh)<>'' then
    begin
      SQL.add('and b.ypbh=:ypbh ');
      if rkxh<>0 then
      begin
          SQL.add('and c.rkxh=:rkxh ');
          ParamByName('rkxh').asinteger:=rkxh;
      end;
      SQL.add('order by a.qldh desc');
      ParamByName('ypbh').asstring:=trim(ypbh);
    end
    else  SQL.add('order by a.qldh desc');
    open;
    DBGrid3.DataSource:=dm.ds_public2;
  end;
end;
procedure TFm_lsz.seek_kcun(ypbh:string;rkxh:integer);
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    SQL.add('select a.rkxh,c.kcl,b.ym,b.gg,b.jldw,c.ypbh');
    SQL.add('from xykr a,xyzb b,xykcun c  where a.ypbh=b.ypbh and a.rkxh=c.rkxh');
    SQL.add('and a.rkrq between :tt1 and :tt2 ');
    If Trim(Ed_rkxh.text)<>'' Then
    begin
      SQL.add('and a.rkxh=:rkxh ');
      ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
    end;
    SQL.add('and a.ypbh=:ypbh ');
    ParamByName('ypbh').asstring:=ypbh;
    if rkxh<>0 then
    begin
       SQL.add('and a.rkxh=:rkxh ');
       ParamByName('rkxh').asinteger:=rkxh;
    end;
    SQL.add('order by a.rkxh desc');
    ParamByName('tt1').asdate:=DaTe_from.Date;
    ParamByName('tt2').asdate:=DaTe_to.Date+1;
    open;
    DBGrid4.DataSource :=dm.DS_comm ;
  end;
end;
procedure TFm_lsz.seek_rk(ypbh: string; rkxh: integer);
begin
  with dm.Q_use do
  begin
    close;
    sql.clear;
    SQL.add('select a.rkxh,a.lsh,a.ypbh');
    SQL.add(',b.ym,b.gg,b.jldw,a.pfj,lsj,');
    SQL.add('a.rksl,a.rkrq');
    SQL.add('from xykr a,xyzb b where a.ypbh=b.ypbh and ');
    SQL.add('a.rkrq between :tt1 and :tt2 ');
    If Trim(Ed_rkxh.text)<>'' Then
    begin
      SQL.add('and a.rkxh=:rkxh ');
      ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
    end;
    if trim(ypbh)<>''  then
    begin
      SQL.add('and a.ypbh=:ypbh ');
      SQL.add('order by a.rkxh desc');
      ParamByName('ypbh').asstring:=trim(ypbh);
    end
    else
      SQL.add('order by a.rkxh desc');
    ParamByName('tt1').asdate:=DaTe_from.Date;
    ParamByName('tt2').asdate:=DaTe_to.Date+1;
    open;
    DBGrid1.DataSource:=dm.ds_use;
  end;
end;

procedure TFm_lsz.DBGrid1DblClick(Sender: TObject);
var arkxh:integer;
    str,str1,str2,str3,str4,str5:string;
begin
    if DBGrid1.DataSource=nil then exit;
    arkxh:=DBGrid1.Fields[0].asinteger;
    seek_ck(edcode.text,arkxh);

    str1:=DBGrid1.fields[7].asstring ;
   // str2:=DBGrid2.GetFooterValue(1,DBGrid2.Columns[6]);
    //str3:=DBGrid3.GetFooterValue(1,DBGrid3.Columns[6]);

    Frk:=strtocurr(str1);
    Fck1:=strtocurr(str2);
    Fck2:=strtocurr(str3);

    str4:=currtostr(Fck1+Fck2);
    str5:=currtostr(Frk-(Fck1+Fck2));
    str:=str1+'-'+str4+'='+str5;

    StatusBar1.Panels[2].text:=str;
end;

procedure TFm_lsz.seeksum_ck(ypbh: string; rkxh: integer);
begin
  with dm.Q_sumck1 do
  begin
    close;
    sql.clear;
    SQL.add('select cksl=sum(a.cksl)');
    SQL.add('from xykchu a,qldb b,xykr c,xyzb d');
    SQL.add('where a.qldh=b.qldh and b.ypbh=c.ypbh and c.rkxh=a.rkxh');
    SQL.add('and d.ypbh=b.ypbh ');
    If Trim(Ed_rkxh.text)<>'' Then
    begin
      SQL.add('and a.rkxh=:rkxh ');
      ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
    end
    Else
      begin
         SQL.add('and a.ckrq between :tt1 and :tt2 ');
         ParamByName('tt1').asdatetime:=DaTe_from.Date;
         ParamByName('tt2').asdatetime:=DaTe_to.Date+1;
      end;
    if trim(ypbh)<>'' then
    begin
      SQL.add('and b.ypbh=:ypbh ');
      ParamByName('ypbh').asstring:=trim(ypbh);
    end ;
    if rkxh<>0 then
    begin
      SQL.add('and c.rkxh=:rkxh ');
      ParamByName('rkxh').asinteger:=rkxh;
    end;
    open;
    Fck1:=fieldbyname('cksl').ascurrency;
  end;

  with dm.Q_sumck2 do
  begin
    close;
    sql.clear;
    SQL.add('select cksl=sum(a.cksl)');
    SQL.add('from xykchu a,qldb b,xykr_zf c,xyzb d');
    SQL.add('where a.qldh=b.qldh and b.ypbh=c.ypbh and c.rkxh=a.rkxh');
    SQL.add('and d.ypbh=b.ypbh ');
    If Trim(Ed_rkxh.text)<>'' Then
       begin
         SQL.add('and a.rkxh=:rkxh ');
         ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
       end
    Else
       begin
          SQL.add('and a.ckrq between :tt1 and :tt2 ');
          ParamByName('tt1').asdatetime:=DaTe_from.Date;
          ParamByName('tt2').asdatetime:=DaTe_to.Date+1;
       end;
    if trim(ypbh)<>'' then
    begin
      SQL.add('and b.ypbh=:ypbh ');
      ParamByName('ypbh').asstring:=trim(ypbh);
    end ;
    if rkxh<>0 then
    begin
      SQL.add('and c.rkxh=:rkxh ');
      ParamByName('rkxh').asinteger:=rkxh;
     end;
    open;
    Fck2:=fieldbyname('cksl').ascurrency;
  end;
  with dm.Q_sumck3 do
  begin
    close;
    sql.clear;
    SQL.add('select cksl=sum(a.cksl)');
    SQL.add('from xykchu a,depqldb b,xykr c,xyzb d');
    SQL.add('where a.qldh=b.qldh and b.ypbh=c.ypbh and c.rkxh=a.rkxh');
    SQL.add('and d.ypbh=b.ypbh ');
    If Trim(Ed_rkxh.text)<>'' Then
       begin
         SQL.add('and a.rkxh=:rkxh ');
         ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
       end
    Else
       begin
         SQL.add('and a.ckrq between :tt1 and :tt2 ');
         ParamByName('tt1').asdatetime:=DaTe_from.Date;
         ParamByName('tt2').asdatetime:=DaTe_to.Date+1;
       end;
    if trim(ypbh)<>'' then
    begin
      SQL.add('and b.ypbh=:ypbh ');
      ParamByName('ypbh').asstring:=trim(ypbh);
    end;
    if rkxh<>0 then
    begin
        SQL.add('and c.rkxh=:rkxh ');
        ParamByName('rkxh').asinteger:=rkxh;
    end;
    open;
    Fck3:=fieldbyname('cksl').ascurrency;
  end;
end;

procedure TFm_lsz.seeksum_rk(ypbh: string; rkxh: integer);
begin
 with dm.Q_sumrk do
  begin
    close;
    sql.clear;
    SQL.add('select rksl=sum(a.rksl)');
    SQL.add('from xykr a,xyzb b where a.ypbh=b.ypbh and ');
    SQL.add('a.rkrq between :tt1 and :tt2 ');
    If Trim(Ed_rkxh.text)<>'' Then
    begin
      SQL.add('and a.rkxh=:rkxh ');
      ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
    end;
    if trim(ypbh)<>''  then
    begin
      SQL.add('and a.ypbh=:ypbh ');
      ParamByName('ypbh').asstring:=trim(ypbh);
    end;
    ParamByName('tt1').asdatetime:=DaTe_from.Date;
    ParamByName('tt2').asdatetime:=DaTe_to.Date+1;
    open;
    Frk:=fieldbyname('rksl').ascurrency;
  end;
end;

procedure TFm_lsz.seeksum_kcun(ypbh: string);
begin
  with dm.q_kcun do
  begin
    close;
    sql.clear;
    sql.add('select kcl=sum(a.kcl)');
    sql.add('from xykcun a,xykr b  where  a.ypbh=:ypbh and a.rkxh=b.rkxh ');
    If Trim(Ed_rkxh.text)<>'' Then
    begin
      SQL.add('and a.rkxh=:rkxh ');
      ParamByName('rkxh').asinteger:=strtoint(Ed_rkxh.text);
    end;
    parambyname('ypbh').asstring:=ypbh;
    open;
    Fkcun:=fieldbyname('kcl').ascurrency;
  end;
end;

procedure TFm_lsz.DBGrid_XYZBExit(Sender: TObject);
begin
  DBGrid_xyzb.Visible :=False;
end;

end.
