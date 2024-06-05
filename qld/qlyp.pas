unit qlyp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, ExtCtrls, Data.DB;

type
  TFm_qlyp = class(TForm)
    Panel2: TPanel;
    DBGrid_XYZB: TDBGrid;
    Panel1: TPanel;
    DBGrid_qlyp: TDBGrid;
    grp1: TGroupBox;
    cbb_yf: TComboBox;
    RdGp_type: TRadioGroup;
    RG_medlb: TRadioGroup;
    Label4: TLabel;
    pnl2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lb_kc: TLabel;
    EdCode: TEdit;
    Edit_qldh: TEdit;
    Edit_dw: TEdit;
    Ed_ym: TEdit;
    Ed_sl: TEdit;
    Ed_kcl: TEdit;
    Label5: TLabel;
    Label21: TLabel;
    cmbx_storetype: TComboBox;
    pnl3: TPanel;
    qd: TBitBtn;
    tc: TBitBtn;
    dy: TBitBtn;
    RG_Dept: TRadioGroup;
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_XYZBDblClick(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure DBGrid_XYZBExit(Sender: TObject);
    procedure Ed_slKeyPress(Sender: TObject; var Key: Char);
    procedure qdClick(Sender: TObject);
    procedure DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
    procedure tcClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_qlypDblClick(Sender: TObject);
    procedure RG_medlbClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RdGp_typeClick(Sender: TObject);
    procedure cbb_yfChange(Sender: TObject);
  private
    { Private declarations }
    FcurIndex:integer;
    function Delqldb_temp():boolean;

  public
    { Public declarations }
  end;

var
  Fm_qlyp: TFm_qlyp;
  intkey : integer;

implementation

uses data, Factory, czydl;

{$R *.DFM}

procedure TFm_qlyp.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  with dm.Q_MedStore do
  begin
    Close;
    SQL.Clear;
    case RdGp_type.ItemIndex of
    0:begin
         case self.RG_medlb.ItemIndex of
           0: SQL.Add('exec  xyzb_cx_xz :SearchCode,1,0');
           1: SQL.Add('exec  xyzb_cx_xz :SearchCode,3,0');
           2: SQL.Add('exec  xyzb_cx_xz :SearchCode,2,0');
         end;
      end;
    1:begin
          if RG_Dept.ItemIndex=0 then
          begin
            case self.RG_medlb.ItemIndex of
             0: SQL.Add('exec  xyzb_cx_xz_mzjzck :SearchCode,1,:yfbm');
             1: SQL.Add('exec  xyzb_cx_xz_mzjzck :SearchCode,3,:yfbm');
             2: SQL.Add('exec  xyzb_cx_xz_mzjzck :SearchCode,2,:yfbm');
            end;
            ParamByName('yfbm').Assmallint:=strtoint(dm.GetComboxValue(cbb_yf,':',true));
         end else
         begin
           SQL.Add('Select DISTINCT  a.ypbh,a.ym, a.gg, a.ylsj, a.jldw, a.hsb, b.jx,a.lb,kcl=9999,produce');
           SQL.Add('from XYZB  a, ypjx b');
           SQL.Add('where  a.jxbm=b.jxbm and a.lb=:lb and ylsj>0 and a.pym like :SearchCode  ');
           case RG_medlb.ItemIndex of
           0:ParamByName('lb').Assmallint:=1;
           1:ParamByName('lb').Assmallint:=3;
           2:ParamByName('lb').Assmallint:=2;
           end;
         end;
      end;
    end;
    parambyname('SearchCode').AsString := '%'+EdCode.Text+'%';

    open;
    if recordcount>0 then
    begin
       DBGrid_XYZB.Visible:=true;
       DBGrid_XYZB.SetFocus;
    end
    else
    begin
      application.MessageBox('无此药品!','错误提示',0+mb_iconstop);
    end;
  end;
end;

procedure TFm_qlyp.DBGrid_XYZBDblClick(Sender: TObject);
begin
  with dm.Q_MedStore do
  begin
    Ed_ym.Text := Fieldbyname('ym').AsString;
    EdCode.text:= Fieldbyname('ypbh').AsString;
    Edit_dw.Text:=Fieldbyname('jldw').AsString;
  end;
   with dm.q_public do
    begin
      close;
      sql.clear;

        case RdGp_type.ItemIndex of
          0:
            sql.add('select kcl=sum(kcl) from xykcun a,xykr b where a.rkxh=b.rkxh and a.ypbh=:ypbh group by a.ypbh');
          1:
          begin
            if RG_Dept.ItemIndex=0 then
            begin
              sql.add('select kcl=a.kcl/b.hsb from nkyc a,xyzb b where a.ypbh=b.ypbh and a.ypbh=:ypbh and ksbm=:ksbm');
              ParamByName('ksbm').AsInteger:=strtoint(dm.GetComboxValue(cbb_yf,':',true));
            end else
            begin
              sql.add('select kcl=9999 from xyzb  where ypbh=:ypbh ');
            end;
          end;
        end;
      parambyname('ypbh').asstring:=EdCode.text;
      open;
      if recordcount>0 then
        Ed_kcl.text:=fieldbyname('kcl').asstring
      else
        begin
          application.MessageBox ('暂时没有此药','请领',mb_ok+mb_iconquestion);
          EdCode.setfocus;
          exit;
        end;  
    end;
  Ed_sl.SetFocus;
end;

procedure TFm_qlyp.EdCodeEnter(Sender: TObject);
begin
  Edcode.Clear;
  Ed_ym.Clear;
  Edit_dw.Clear;
  Ed_sl.Clear;
  Ed_kcl.Clear;
end;

procedure TFm_qlyp.DBGrid_XYZBExit(Sender: TObject);
begin
  (sender as tdbgrid).visible:=false;
end;

procedure TFm_qlyp.Ed_slKeyPress(Sender: TObject; var Key: Char);
var sl:Currency;
begin
  if (key<>#13) then exit;
  sl:=strtocurr(ed_sl.text);
  case RdGp_type.ItemIndex of
  0:begin
      if sl<0 then
      begin
         ed_sl.clear;
         exit;
      end
      else if strtocurr(ed_kcl.text)-sl<0 then
      begin
       ed_sl.Clear;
       exit;
      end;
      end;
  1:begin
       if sl>0 then
       begin
           ed_sl.clear;
           exit;
       end
      else if strtocurr(ed_kcl.Text)+sl<0 then
       begin
         ed_sl.Clear;
         exit;
       end;
    end;
  end;


  with dm.Q_song do
  begin
    close;
    sql.clear;
    SQL.Add('exec bmly_qldnew :mopid,:mypbh,:mqll');
    ParamByName('mopid').AsInteger:=strtoint(dm.Fopid);
    ParamByName('mypbh').AsString:=trim(edcode.text);
    ParamByName('mqll').Asfloat:=strtofloat(trim(Ed_sl.text));
    try
      ExecSQL;

      if dm.SearchQlTemp(502,strtoint(dm.Fopid)) then
      begin
        qd.Enabled:=true;
        cbb_yf.Enabled:=false;
        RdGp_type.Enabled:=false;
        RG_medlb.Enabled:=false;
      end else
      begin
        cbb_yf.Enabled:=true;
        RdGp_type.Enabled:=true;
        RG_medlb.Enabled:=true;
      end;
   except
      dm.SearchQlTemp(502,strtoint(dm.Fopid));
      application.MessageBox('重复增加药品失败！','错误',0+mb_iconstop);
      exit;
    end;
  end;
      EdCode.SetFocus;

end;

procedure TFm_qlyp.qdClick(Sender: TObject);
var ayfbm:integer;
begin
   if application.messagebox('是否保存？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
   ayfbm:=strtoint(dm.GetComboxValue(cbb_yf,':',true));

    with  dm.q_song do
    begin
      close;
      sql.Clear;
      sql.add('select * from qldb_temp where opid=:opid');
      parambyname('opid').asinteger:=strtoint(dm.fopid);
      open;
      if recordcount < 1 then
       begin
         showmessage('空请领单!');
         exit;
       end;
    end;

  try
    dataset_open(dm.q_song,'exec get_new_bmly_qldh');
    Edit_qldh.text:=dm.q_song['qldh'];
    EdCode.SetFocus;
  except
    application.MessageBox('生成请领单号时出错，请重试！','错误提示',0+mb_iconstop);
    exit;
  end;

  with dm.q_song do
  begin
    close;
    sql.Clear;
    case RG_Dept.ItemIndex of
    0: SQL.Add('exec bmly_qlyf    :mqldh,:myfbm,:qlr,:type');   //药房
    1: SQL.Add('exec ks_bmly_qlyf :mqldh,:myfbm,:qlr,:type');   //科室
    end;
    ParamByName('mqldh').AsInteger:=strtoint(trim(edit_qldh.text));
    ParamByName('myfbm').asinteger:=ayfbm;
    ParamByName('qlr').Assmallint:=strtoint(dm.Fopid);
    case self.RG_medlb.ItemIndex of
      0:parambyname('type').assmallint:=1;
      1:parambyname('type').assmallint:=3;
      2:parambyname('type').assmallint:=2;
    end;
    Prepare;
    try
      try
        ExecSQL;
      finally
        unprepare;
      end;
     case RdGp_type.ItemIndex of
        0: application.messagebox('请领单已经生成','提示',0);
        1: application.messagebox('药品退库已经生成','提示',0);
      end;
    qd.Enabled:=false;
    edit_qldh.Clear ;
    except
      case RdGp_type.ItemIndex of
        0: application.messagebox('请领单生成是出错','错误提示',0+mb_iconstop);
        1: application.messagebox('退库单生成是出错','错误提示',0+mb_iconstop);
      end;
    end;
  end;
end;

procedure TFm_qlyp.DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_XYZBDblClick(Sender);
end;

procedure TFm_qlyp.tcClick(Sender: TObject);
begin
  dm.Q_public.Close;
  dm.q_song.close;
  close;
end;

procedure TFm_qlyp.FormShow(Sender: TObject);
var asqlstr:string;
begin

   dm.q_song.Close;
   dm.Q_use.Close;
  case RdGp_type.ItemIndex of
    0:begin
        Label3.Caption := '请领单号';
        self.Caption:='请领单生成';
        lb_kc.caption := '药库库存';
      end;
    1:begin
       Label3.Caption := '退库单号';
       self.Caption:='退库单生成';
       lb_kc.caption := '药房库存';
      end;
  end;

   with dm.q_song do
     begin
      close;
      sql.clear;
      SQL.Add('delete qldb_temp where opid=:opid');
      ParamByName('opid').AsInteger:=strtoint(dm.Fopid);
      execsql;
   end;

   DBGrid_XYZB.Top:=116;
   DBGrid_XYZB.Left:=65;

   asqlstr:='select ksbm,ksmc from jgxx where Ifzy=1 and lbd=5 and  ksbm not in (500)'+
            'union all select ksbm,ksmc from jgxx where Ifzy=1 and ksbm=888 '+
            'union all select ksbm,ksmc from jgxx where Ifzy=1 and lbd<>5 and ksbm<>888 ';
   dm.SetCmbxValue(cbb_yf,asqlstr,2);


   cbb_yf.ItemIndex:=dm.GetComboxIndex(cbb_yf,dm.sysinfo.yfmc);
   cbb_yfChange(sender);
   EdCode.SetFocus;
   //--2023.03.27 wk 药品类别默认
   case strtoint(dm.sysinfo.medlb) of
   1:RG_medlb.ItemIndex:=0;
   2:RG_medlb.ItemIndex:=2;
   3:RG_medlb.ItemIndex:=1;
   end;
end;

procedure TFm_qlyp.DBGrid_qlypDblClick(Sender: TObject);
var
   aypbh: string;
begin

   if DBGrid_qlyp.DataSource.DataSet.IsEmpty then exit;
                                //此处为修改界面
   if application.messagebox('是否删除？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
   aypbh:=DBGrid_qlyp.Fields[0].AsString ;
   with dm.Q_song do
     begin
      close;
      sql.clear;
      SQL.Add('exec bmly_qld_del :mopid,:mypbh');
      ParamByName('mopid').AsInteger:=strtoint(dm.Fopid);
      ParamByName('mypbh').AsString:=trim(aypbh);
      ExecSQL;
      try
       if dm.SearchQlTemp(strtoint(dm.sysinfo.yfbm),strtoint(dm.Fopid)) then
       begin
          qd.Enabled:=true;
          cbb_yf.Enabled:=false;
          RdGp_type.Enabled:=false;
          RG_medlb.Enabled:=false;
       end else
       begin
           cbb_yf.Enabled:=true;
          RdGp_type.Enabled:=true;
          RG_medlb.Enabled:=true;
       end;
      except
        dm.SearchQlTemp(strtoint(dm.sysinfo.yfbm),strtoint(dm.Fopid));
        exit;
      end;
     end;
   EdCode.SetFocus ;
end;

procedure TFm_qlyp.RG_medlbClick(Sender: TObject);
begin
 edcode.SetFocus;
end;

procedure TFm_qlyp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFm_qlyp.RdGp_typeClick(Sender: TObject);
begin

  case RdGp_type.ItemIndex of
    0:begin
        Label3.Caption := '请领单号';
        self.Caption:='药房请领单生成';
        lb_kc.caption := '药库库存';
      end;
    1:begin
       Label3.Caption := '退库单号';
       self.Caption:='药房退库单生成';
       lb_kc.caption := '药房库存';
      end;
  end;
  EdCode.SetFocus;
end;

procedure TFm_qlyp.cbb_yfChange(Sender: TObject);
begin
  case  strtoint(dm.GetComboxValue(cbb_yf,':',true)) of
  502,505:RG_medlb.ItemIndex:=0;
  503,504:RG_medlb.ItemIndex:=2;
  else
     RG_medlb.ItemIndex:=0;
  end;
end;

function TFm_qlyp.Delqldb_temp(): boolean;
begin
   with dm.q_song do
   begin
      close;
      sql.clear;
      SQL.Add('delete qldb_temp where opid=:opid');
      ParamByName('opid').AsInteger:=strtoint(dm.Fopid);
      execsql;
   end;
end;

end.
