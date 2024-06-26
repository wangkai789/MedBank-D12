unit ck;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls, Menus,DateUtils,
  Data.DB;

type
  Tfm_ck = class(TForm)
    BBtn_quit: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ed_lhr: TEdit;
    Ed_ksbm: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    DBGrid_qlyp: TDBGrid;
    Ed_sfl: TEdit;
    BBtn_bmly_db: TBitBtn;
    BBtn_new: TBitBtn;
    DBGrid_dbyp: TDBGrid;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    DBGrid_qld: TDBGrid;
    BitBtn2: TBitBtn;
    Edit7: TEdit;
    bbtn_close: TBitBtn;
    StatusBar1: TStatusBar;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    ed_ckh: TEdit;
    chb_ckh: TCheckBox;
    Ed_type: TEdit;
    Label34: TLabel;
    Ed_ykkc: TEdit;
    Label36: TLabel;
    Ed_zykc: TEdit;
    Label35: TLabel;
    Ed_mzkc: TEdit;
    Rdgp_sendtype: TRadioGroup;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure bbtn_closeClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_qldDblClick(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure DBGrid_qldKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_dbypDblClick(Sender: TObject);
    procedure DBGrid_dbypKeyPress(Sender: TObject; var Key: Char);
    procedure BBtn_bmly_dbClick(Sender: TObject);
    procedure DBGrid_qlypCellClick(Column: TColumn);
    procedure Ed_sflKeyPress(Sender: TObject; var Key: Char);
    procedure BBtn_newClick(Sender: TObject);
    procedure DBGrid_dbypKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure BitBtn3Click(Sender: TObject);
    procedure chb_ckhClick(Sender: TObject);
    procedure ed_ckhKeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Change(Sender: TObject);
    //procedure frReport1BeforePrint(Memo: TStringList; View: TfrView);
    procedure Rdgp_sendtypeClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
     procedure  adjust_sfl(IFTY:boolean);
     function   DelQld(qldh:integer;qltype:integer):boolean;
     function   CheckQld(qldh:integer;qltype:integer):boolean;
     procedure init1();
     procedure init2();

  public
    { Public declarations }
  end;

var
  fm_ck: Tfm_ck;
  mbypkcl:currency;

  const
  SPELL_CODE = 100;
  PIPE_CODE = 101;
  MEDCODE_CODE = 102;
  MEDNAME_CODE = 103;
  ISENTER = 104;
  ISNOTENTER = 105;
  ISASTERISK = 106;
 implementation
 uses data,  main, Factory, czydl, reportform;

{$R *.DFM}
procedure Tfm_ck.FormShow(Sender: TObject);
begin
  if self.tag=100 then fm_ck.Caption:='药品请领出库'
  else
     fm_ck.Caption:='退药品公司';
  StatusBar1.Panels[1].text:='  状态：'+'未出库';
  StatusBar1.Panels[2].text:='  操作日期：  '+formatdatetime('yyyy-mm-dd',date());
  BBtn_bmly_db.tag:=0;
  BitBtn2.tag:=0;
  edit1.text:=fm_czydl.Ed_xm.Text;
  BitBtn2.enabled:=false;
  edit2.text:=datetostr(now);
  PageControl1.activepage:=TabSheet1;
  dm.q_comm1.close;
  dm.q_comm1.sql.clear;
  chb_ckh.Checked :=false;
  Edit6.clear;
  Ed_ykkc.clear;
  Ed_mzkc.clear;
  Ed_zykc.clear;
  
  edit6.SetFocus;
  DBGrid_qld.Left:=Edit6.Left;
  DBGrid_qld.Top:=Edit6.Top+Edit6.Height;

end;

procedure Tfm_ck.bbtn_closeClick(Sender: TObject);
begin
  Close;
end;

procedure Tfm_ck.BitBtn2Click(Sender: TObject);
begin
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.Add('select a.qldh,b.ypbh,sfl=a.cksl,type=a.lb,a.ckh,a.lsj,c.ksmc,fyr=e.xm,d.ym,d.gg,d.jldw,qlrq=null,fyrq=a.ckrq,');
    sql.Add('je=a.lsj*a.cksl,f.produce,f.ypph,f.sxrq,a.pfj,pfjqe=a.pfj*a.cksl,supplyksmc='''' ');
    sql.Add('from xykchu a,xykcun b,jgxx c,xyzb d,zgzb e,xykr f');
    sql.Add('where a.rkxh=b.rkxh and a.ksbm=c.ksbm and b.ypbh=d.ypbh and a.ckr=e.bh');
    sql.Add('and a.ckh=:ckh and month(a.ckrq)=:mmonth and year(a.ckrq)=:myear ');
    sql.Add('and a.rkxh=f.rkxh');
    sql.add('ORDER BY b.ypbh');
    parambyname('ckh').asinteger:=strtoint(trim(ed_ckh.text));
    parambyname('myear').asinteger:=YearOf(Date);
    parambyname('mmonth').asinteger:=MonthOf(Date);
     TRY
        open;
        if recordcount <1 then
        begin
          showmessage('没有此号，请重新查询!');
          ed_ckh.SetFocus;
          exit;
        end;
     EXCEPT
        showmessage('查询发生错误！！！');
        exit;
     END;
  end;
  //frReport1.clear;
  //frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\请领单.frf');
  //frReport1.ShowReport;
end;

procedure Tfm_ck.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
 ISDIGIT(KEY);
 if key<>#13 then exit;
 with dm.q_comm do
 begin
    close;
    sql.Clear;
    case Rdgp_sendtype.ItemIndex of
    0: begin
        sql.add('select 请领单号=qldh,科室名称=b.ksmc,请领人=qlr,请领日期=qlrq,科室编码=b.ksbm');
        sql.add('from qlyf a,jgxx b ');
        //sql.add('where a.yfbm=b.ksbm and fyrq is null and ifty=0 and a.yfbm<>888');
        sql.add('where a.yfbm=b.ksbm and fyrq is null and ifty=0 ');
      end;
    1:begin
       sql.add('select 请领单号=qldh,科室名称=b.ksmc,请领人=qlr,请领日期=qlrq,科室编码=b.ksbm');
       sql.add('from qlyf a,jgxx b ');
       //sql.add('where a.yfbm=b.ksbm and fyrq is null and ifty=1  and a.yfbm=888');
       sql.add('where a.yfbm=b.ksbm and fyrq is null and ifty=1');

      end;
    2: begin
        sql.add('select 请领单号=qldh,科室名称=b.ksmc,请领人=qlr,请领日期=qlrq,科室编码=b.ksbm');
        sql.add('from depqlyf a,jgxx b ');
        //sql.add('where a.yfbm=b.ksbm and fyrq is null and ifty=0 and a.yfbm<>888');
        sql.add('where a.yfbm=b.ksbm and fyrq is null and ifty=0 ');

       end;
    3:begin
       sql.add('select 请领单号=qldh,科室名称=b.ksmc,请领人=qlr,请领日期=qlrq,科室编码=b.ksbm');
       sql.add('from depqlyf a,jgxx b ');
       sql.add('where a.yfbm=b.ksbm and fyrq is null and ifty=1  and a.yfbm<>888');
      end;
   end;
    if edit6.text<>'' then
    begin
      sql.add(' and qldh=:qldh ');
      ParamByName('qldh').AsInteger:=strtoint(trim(edit6.text));
    end;
    Prepare;
    sql.add('order by qldh');
    Open;
    DBGrid_qld.datasource:=dm.ds_comm;
    case recordcount of
    0:begin
        Application.MessageBox('该部门的请领单已全部发完','操作提示！',0+mb_iconinformation);
        exit;
      end;
      1:begin
          BBtn_bmly_db.tag:=0;
          DBGrid_qldDblClick(Sender);
        end;
    else
        begin
          DBGrid_qld.Visible:=true;
          BBtn_bmly_db.tag:=0;
          DBGrid_qld.SetFocus;
        end;
    end;
  end;
end;

procedure Tfm_ck.DBGrid_qldDblClick(Sender: TObject);
begin
  edit5.text:=dm.Q_comm['科室名称'];
  Ed_lhr.Text:=dm.Q_comm['请领人'];
  edit6.text:=dm.Q_comm['请领单号'];
  ed_ksbm.text:=dm.Q_comm['科室编码'];
  case Rdgp_sendtype.ItemIndex of
  0,1:begin
      with dm.q_xyzb do
      begin
        Close;
        Sql.clear;
        Sql.Add('update qldb set sfl=0');
        Sql.Add('From pub_kchutemp a,qldb b where a.qldh=b.qldh  and a.opid=:opid');
        Sql.Add('delete pub_kchutemp where opid=:opid');
        Parambyname('opid').asinteger:=strtoint(fm_czydl.ed_bh.text);
        Execsql;
      end;
    end;
  2,3:begin
      with dm.q_xyzb do
      begin
        Close;
        Sql.clear;
        Sql.Add('update depqldb set sfl=0');
        Sql.Add('From pub_kchutemp a,depqldb b where a.qldh=b.qldh  and a.opid=:opid');
        Sql.Add('delete pub_kchutemp where opid=:opid');
        Parambyname('opid').asinteger:=strtoint(fm_czydl.ed_bh.text);
        Execsql;
      end;
      end;
  end;


  DBGrid_qld.Visible:=false;
  case Rdgp_sendtype.ItemIndex of
  0,1:begin
    with dm.q_comm1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select 编码=b.ypbh, 名称=b.ym, 规格=b.gg,请领量=a.qll,药库单位=b.jldw,实发量=a.sfl,类型=a.type,国家医保编码=b.ybbm_country,国家医保名称=b.ybmc_country');
      sql.add('From qldb a, xyzb b ');
      sql.add('where a.qldh=:mqldh and a.ypbh=b.ypbh');
      sql.add('order by a.ypbh');
      ParamByName('mqldh').AsInteger:=strtoint(trim(edit6.text));
      open;
      ed_type.text:=dm.Q_comm1.fieldbyname('类型').asstring;
    end;
    end;
  2,3:begin
    with dm.q_comm1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select 编码=b.ypbh, 名称=b.ym, 规格=b.gg,请领量=a.qll,药库单位=b.jldw,实发量=a.sfl,类型=a.zlbm,国家医保编码=b.ybbm_country,国家医保名称=b.ybmc_country');
      sql.add('From depqldb a, xyzb b ');
      sql.add('where a.qldh=:mqldh and a.ypbh=b.ypbh');
      sql.add('order by a.ypbh');
      ParamByName('mqldh').AsInteger:=strtoint(trim(edit6.text));
      open;
      ed_type.text:=dm.Q_comm1.fieldbyname('类型').asstring;
    end;
  end;
  end;
  init1();
  DBGrid_qlyp.Visible:=true;
  DBGrid_qlyp.SetFocus;
end;

procedure Tfm_ck.Edit6Enter(Sender: TObject);
begin
  Edit16.clear;
  BBtn_new.Click;
  DBGrid_qld.visible:=false;
  StatusBar1.Panels[1].text:=' 状态：'+'未出库';
end;

procedure Tfm_ck.DBGrid_qldKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_qldDblClick(Sender);
end;

procedure Tfm_ck.DBGrid_dbypDblClick(Sender: TObject);
begin
  case Rdgp_sendtype.ItemIndex of
   0,2:adjust_sfl(false);
   1,3:adjust_sfl(true);
  end;
  DBGrid_dbyp.DataSource :=nil;
end;

procedure Tfm_ck.DBGrid_dbypKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_dbypDblClick(Sender);
end;

procedure Tfm_ck.BBtn_bmly_dbClick(Sender: TObject);
begin
  if  trim(edit6.text)='' then
      begin
         application.MessageBox('无请领单号，无法出库','提示信息',32);
         edit6.SetFocus;
         exit;
      end;
  if chb_ckh.Checked then
  begin
      if trim(ed_ckh.text)='' then
      begin
         application.MessageBox('请输入手工编号','提示信息',0);
         exit;
      end;
      with dm.Q_comm do
      begin
        close;
        sql.clear;
        SQL.Add('select ckh From xykchu where datediff(month,ckrq,:ckrq)=0 and opid=:opid and ckh=:ckh');
        parambyname('ckrq').asdate:=date();
        parambyname('opid').asinteger:=strtoint(fm_czydl.Ed_bh.text);
        parambyname('ckh').asstring:=trim(ed_ckh.text);
        try
          open;
          if recordcount>0 then
          begin
             application.MessageBox('本月该操作员该号已使用过','提示信息',0);
             exit;
          end;
        except
          application.MessageBox('数据查询错误','提示信息',0);
          exit;
        end;
      end;
  end
  else
  begin
    with dm.Q_comm do
    begin
      close;
      sql.clear;
      Sql.Add('exec get_new_bmly_ckh :lb ');
      ParamByName('lb').asinteger:=strtoint(Ed_type.text);
      try
        open;
        ed_ckh.text:=dm.Q_comm.fieldbyname('ckh').asstring;
      except
        application.MessageBox('生成出库号出错，请重试！','错误提示',0);
        exit;
      end;
    end;
  end;

  with dm.Q_comm do
  begin
    close;
    Sql.clear;
    Sql.Add('exec pub_ypck :lb,:ckh,:qldh,:ksbm,:lyr,:opid,:oper,:sendtype');
    ParamByName('lb').asinteger:=strtointdef(Ed_type.Text,1);
    ParamByName('ckh').asstring:=trim(ed_ckh.text);
    ParamByName('qldh').asinteger:=strtoint(trim(edit6.text));
    ParamByName('ksbm').assmallint:=strtoint(trim(ed_ksbm.text));
    ParamByName('lyr').asinteger:=strtoint(trim(Ed_lhr.text));
    ParamByName('opid').asinteger:=strtoint(trim(fm_czydl.Ed_bh.text));
    ParamByName('oper').asstring:=trim(fm_czydl.Ed_xm.text);
    case Rdgp_sendtype.ItemIndex of
      0,1:ParamByName('sendtype').asinteger:=0;
      2,3:ParamByName('sendtype').asinteger:=2;
    end;
    try
      ExecSQL;
      application.MessageBox('药品出库成功','提示',0);
      StatusBar1.Panels[1].text:='  状态：'+'已出库';
      BBtn_bmly_db.tag:=1;
      BBtn_bmly_db.Enabled:=false;
      BitBtn2.Enabled:=true;
      BitBtn2.setfocus;
      BitBtn2Click(sender);
    except
       on E: Exception do
       begin
         application.MessageBox(pchar('药品出库发生错误'+e.Message),'提示信息',32);
         exit;
       end;
    end;
      Edit6.SetFocus ;
  end;
end;

procedure Tfm_ck.DBGrid_qlypCellClick(Column: TColumn);
var ykkc:currency;
    mzkc:currency ;
    zykc:currency;
begin
  DBGrid_dbyp.visible:=true;
  with dm.Q_public1 do
  begin
    close;
    sql.Clear;
    sql.add('exec pub_ypckcx :mypbh,:opid,:sendtype');
    ParamByName('mypbh').AsString:=DBGrid_qlyp.Fields[0].asstring;
    Parambyname('opid').asinteger:=strtoint(fm_czydl.ed_bh.text);
    case Rdgp_sendtype.ItemIndex of
      0,2:ParamByName('sendtype').asinteger:=0;
      1,3:ParamByName('sendtype').asinteger:=2;
    end;
    Open;
    case Rdgp_sendtype.ItemIndex of
    0,2:begin
          if FieldByName('nojl').asinteger=1 then
          begin
            DBGrid_dbyp.Enabled:=false ;
            DBGrid_qlyp.SetFocus;
            application.MessageBox('没有库存记录或库存为0！','提示信息',32);
            exit;
          end;
        end;
    1,3:begin
        //
        end;
    end;

    if dm.Q_public1.RecordCount=0 then
    begin
       if  (Rdgp_sendtype.ItemIndex=1) or  (Rdgp_sendtype.ItemIndex=3) then
       begin
         if application.messagebox('该编号的药品无库存！是否增加此药品？','信息',
                        mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idyes  then
           begin
             DM.AddMedBackInfo(DBGrid_qlyp.Fields[0].asstring);
             DBGrid_qlypCellClick(DBGrid_qlyp.Columns[0]);
             DBGrid_qlyp.SetFocus;
             Exit;
           end
         else
           begin
             Exit ;
           end;
       end;

       DBGrid_dbyp.Enabled :=false ;
       DBGrid_qlyp.SetFocus;
       Exit;
    end;
    DBGrid_dbyp.DataSource :=dm.ds_public1;
    DBGrid_dbyp.Enabled :=True ;
    edit7.text:=dm.q_public1['编码'];
    edit8.text:=dm.q_public1['名称'];
    edit9.text:=dm.q_public1['规格'];
    init2();
    dm.searchkc(dm.q_use,edit7.text,ykkc,mzkc,zykc);
    Ed_ykkc.text:=currtostr(ykkc)+dm.q_public1.fieldbyname('药库单位').asstring;
    Ed_mzkc.text:=currtostr(mzkc)+dm.q_public1.fieldbyname('药房单位').asstring;
    Ed_zykc.text:=currtostr(zykc)+dm.q_public1.fieldbyname('药房单位').asstring;
    DBGrid_dbyp.SetFocus;
  end;
end;

procedure Tfm_ck.Ed_sflKeyPress(Sender: TObject; var Key: Char);
begin
  if  trim(edit6.text)='' then
      begin
        application.MessageBox('无请领单号，无法加入','提示信息',32);
        edit6.SetFocus;
        exit;
      end;
  if trim(Ed_sfl.text)='' then exit;


  if key=#13 then
  begin
    if  BBtn_bmly_db.tag=1 then
      begin
        application.MessageBox('该请领单已经发过，请重新输入请领单！','提示',0);
        exit;
      end;

     if (Rdgp_sendtype.ItemIndex=0) or (Rdgp_sendtype.ItemIndex=2) then
     begin
       if strtofloat(trim(Ed_sfl.text))<=0 then
       begin
         application.MessageBox('实发量不能为负数或零！','提示',0);
         exit;
       end;
     end;

  with  dm.q_zd do
  begin
    close;
    sql.clear;
    sql.add('declare @result int execute @result=pub_ypck_inspect ');
    sql.add(':opid,:partbm,:rkxh  select result=@result');
    ParamByName('rkxh').asinteger:=dm.Q_public1.FieldByName('入库序号').asinteger;
    ParamByName('partbm').assmallint:=strtoint(trim(ed_ksbm.text));
    ParamByName('opid').asinteger:=strtoint(trim(fm_czydl.Ed_bh.text));
    open;
    if fieldbyname('result').asstring='1' then
      begin
        application.messagebox('出库单不能有相同序号的药品','提示信息',mb_iconinformation);
        exit;
      end
    else if fieldbyname('result').asstring<>'0' then
      begin
        if  application.messagebox(
         pchar('有请领单已出库但未有出库号，请领单号是：'+fieldbyname('result').asstring
         +#13+'您确实要出库吗？'),'提示信息',
        mb_iconinformation+mb_yesno+mb_defbutton2)=idyes then
        begin
           edit6.text:=fieldbyname('result').asstring;
           DBGrid_qlyp.visible:=false;
           DBGrid_dbyp.visible:=false;
           edit6.Font.color:=clred;
           BBtn_bmly_dbClick(Sender);
        end;
         exit;
      end;
  end;
  try
    if strtocurr(trim(Ed_sfl.text))>mbypkcl then
    begin
       application.MessageBox('实发量>所选库存量，请重输！！','错误提示',0+mb_iconstop);
       exit;
    end
  except
    application.MessageBox('判断错误！','错误提示',0+mb_iconerror);
    exit;
  end;
  with dm.Q_comm do
  begin
    close;
    sql.clear;
    Sql.Add('Exec pub_ypksck :qldh,:rkxh,:code,:qll,:opid,:sendtype');
    ParamByName('qldh').asinteger:=strtoint(trim(edit6.text));
    ParamByName('rkxh').asinteger:=dm.Q_public1.FieldByName('入库序号').asinteger;
    ParamByName('code').Asstring:=dm.Q_public1.FieldByName('编码').asstring;
    ParamByName('qll').asfloat:=strtocurr(Ed_sfl.text);
    ParamByName('opid').asinteger:=strtoint(trim(fm_czydl.Ed_bh.text));
    case Rdgp_sendtype.ItemIndex of
    0,1:ParamByName('sendtype').asinteger:=0;
    2,3:ParamByName('sendtype').asinteger:=2;
    end;
    try
      ExecSQL;
      showmessage('该药品加入成功!');
      BBtn_bmly_db.Enabled := True;
      Ed_sfl.Clear;
    except
      on E: Exception do
       begin
         application.MessageBox(pchar('该药品加入错误'+e.Message),'提示信息',mb_iconinformation);
         exit;
       end;
    end;
  end;
  case Rdgp_sendtype.ItemIndex of
  0,1:begin
    with dm.Q_comm1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select 编码=b.ypbh, 药名=b.ym, 规格=b.gg,请领量=a.qll,药库单位=b.jldw,实发量=a.sfl,类型=a.type ');
      SQl.add('from qldb a, xyzb b ');
      sql.add('where a.qldh=:mqldh and b.ypbh=a.ypbh  and a.sfl<>a.qll ');
      sql.add('ORDER BY a.ypbh');
      ParamByName('mqldh').AsInteger:=strtointdef(trim(edit6.text),0);
      open;
      If Recordcount<=0   THEN
      begin
         DBGrid_dbyp.DataSource:=nil;
         Exit;
      end;
    end;
  end;
  2,3:begin
        with dm.Q_comm1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select 编码=b.ypbh, 药名=b.ym, 规格=b.gg,请领量=a.qll,药库单位=b.jldw,实发量=a.sfl,类型=a.zlbm ');
          SQl.add('FROM depqldb a, xyzb b ');
          sql.add('where a.qldh=:mqldh and b.ypbh=a.ypbh and a.sfl<>a.qll');
          sql.add('ORDER BY a.ypbh');
          ParamByName('mqldh').AsInteger:=strtointdef(trim(edit6.text),0);
          open;
          If Recordcount<=0 THEN
          begin
            DBGrid_dbyp.DataSource:=nil;
            Exit;
          end;
        end;
      end;
  end;
  end;
  
  init1();
  init2();
  DBGrid_qlyp.Visible:=true;
  DBGrid_qlyp.SetFocus;
end;

procedure Tfm_ck.BBtn_newClick(Sender: TObject);
begin
  DBGrid_qld.left:=70;
  DBGrid_qlyp.Visible:=false;
  DBGrid_dbyp.Visible:=false;
  Ed_lhr.Clear;
  Ed_ksbm.Clear;
  edit15.clear;
  ed_sfl.clear;
  edit5.clear;
  Edit6.clear;
  edit7.clear;
  edit8.clear;
  edit9.clear;
  ed_ckh.clear;
  Ed_ykkc.Clear;
  Ed_zykc.Clear;
  Ed_mzkc.Clear;
  edit6.SetFocus;
end;

procedure Tfm_ck.DBGrid_dbypKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=word(vk_f12) then
  ed_sfl.enabled:=true;
  ed_sfl.SetFocus;
end;

procedure Tfm_ck.RadioGroup1Click(Sender: TObject);
begin
 edit6.SetFocus;
end;

procedure Tfm_ck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.q_zb2.close;
  dm.Q_comm1.close;
  dm.Q_comm.close;
  dm.Q_public1.close;
end;

procedure Tfm_ck.frReport1GetValue(const ParName: String;
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

procedure Tfm_ck.BitBtn3Click(Sender: TObject);
begin
   //frReport1.clear;
   //frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\请领单.frf');
   //frReport1.DesignReport;
end;

procedure Tfm_ck.chb_ckhClick(Sender: TObject);
begin
  if chb_ckh.Checked then
  begin
     ed_ckh.Enabled :=true;
     ed_ckh.Clear;
     ed_ckh.setfocus;
  end
  else
  begin
     ed_ckh.Enabled :=false;
     ed_ckh.Clear;
  end
end;

procedure Tfm_ck.ed_ckhKeyPress(Sender: TObject; var Key: Char);
begin
if not(integer(key) in [8,13,48,49,50,51,52,53,54,55,56,57])  then key:=#27;
end;

procedure Tfm_ck.Edit6Change(Sender: TObject);
begin
 if edit6.text<>'' then ed_sfl.enabled:=true else  ed_sfl.enabled:=false;
end;

{procedure Tfm_ck.frReport1BeforePrint(Memo: TStringList; View: TfrView);
begin
  if View.Name='Mem_title' then memo.Text:=Trim(fm_main.Label_hospital.Caption)+'药品出库单';
end;}

procedure Tfm_ck.adjust_sfl(IFTY: boolean);
begin
 if  DBGrid_dbyp.DataSource=nil then exit;
 if  DBGrid_dbyp.DataSource.DataSet.IsEmpty then exit;
 edit16.text:=DBGrid_dbyp.Fields[3].asstring;

 if not ifty then
 begin
   if (DBGrid_qlyp.Fields[3].ascurrency-DBGrid_qlyp.Fields[5].ascurrency)>0 then
   if DBGrid_dbyp.Fields[2].ascurrency>=DBGrid_qlyp.Fields[3].ascurrency-DBGrid_qlyp.Fields[5].ascurrency then
   begin
     ed_sfl.text:=currtostr(DBGrid_qlyp.Fields[3].ascurrency-DBGrid_qlyp.Fields[5].ascurrency);
     try
       ed_sfl.SetFocus;
     except
       application.MessageBox ('没有批号的药品无法出库!','信使',mb_ok);
     end;
   end  else
   begin
       ed_sfl.text:=DBGrid_dbyp.Fields[2].asstring;
       ed_sfl.SetFocus;
   end else
   begin
     ed_sfl.text:='0';
     if application.MessageBox('现在实发量已经大于或等于请领量，继续发这种药么？',
     '提示',MB_yesno + MB_DEFBUTTON1+mb_iconquestion)=Id_yes then  ed_sfl.SetFocus
     else  DBGrid_qlyp.SetFocus;
   end;
 end else
 begin
   if (DBGrid_qlyp.Fields[3].ascurrency-DBGrid_qlyp.Fields[5].ascurrency)>0 then exit   else
   begin
       ed_sfl.text:=currtostr(DBGrid_qlyp.Fields[3].ascurrency-DBGrid_qlyp.Fields[5].ascurrency);
       try
          ed_sfl.SetFocus;
       except
         application.MessageBox ('没有批号的药品无法出库!','信使',mb_ok);
       end;
   end;
 end;
  edit15.text:=DBGrid_dbyp.Fields[2].asstring;
  edit16.text:=DBGrid_dbyp.Fields[3].asstring;
  mbypkcl:=DBGrid_dbyp.Fields[2].ascurrency;  //某笔药品库存量
end;

procedure Tfm_ck.Rdgp_sendtypeClick(Sender: TObject);
begin
   Edit6.SetFocus;
end;

function Tfm_ck.DelQld(qldh, qltype: integer): boolean;
begin
    Result:=false ;
    with dm.Q_comm do
    begin
      close;
      sql.Clear;
      case  qltype of
      0,1:begin
           sql.Add('delete qlyf where qldh=:qldh ');
           sql.Add('delete qldb where qldh=:qldh ');
          end;
      2,3:begin
           sql.Add('delete depqlyf where qldh=:qldh ');
           sql.Add('delete depqldb where qldh=:qldh ');
          end;
      end;
      ParamByName('qldh').AsInteger:=qldh;
      try
        execsql;
        application.MessageBox('删除成功！','信使',mb_ok);
      except
        application.MessageBox('删除失败！','信使',mb_ok);
        exit;
      end;
    end;
    Result:=true ;
end;

function Tfm_ck.CheckQld(qldh, qltype: integer): boolean;
begin
    Result:=false;
    with dm.Q_comm do
    begin
      close;
      sql.Clear;
      case  qltype of
      0,1:begin
          sql.Add('select qldh from qlyf where qldh=:qldh ');
         end;
      2,3:begin
          sql.Add('select qldh from depqlyf where qldh=:qldh ');
          end;
      end;
      ParamByName('qldh').AsInteger:=qldh;
    try
      open;
     if isempty then exit;
    except
     on E: Exception do
        begin
          application.MessageBox(pchar('删除失败！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
        end;
     end;
  end;
    result:=true;
end;

procedure Tfm_ck.init1();
begin
  DBGrid_qlyp.Columns[0].Width:=80;
  DBGrid_qlyp.Columns[1].Width:=120;
  DBGrid_qlyp.Columns[2].Width:=120;
  DBGrid_qlyp.Columns[3].Width:=50;
  DBGrid_qlyp.Columns[4].Width:=40;
  DBGrid_qlyp.Columns[5].Width:=50;
  DBGrid_qlyp.Columns[6].Width:=50;
end;

procedure Tfm_ck.init2();
begin
  if DBGrid_dbyp.DataSource<>nil then
  begin
    DBGrid_dbyp.columns[0].width:=50;
    DBGrid_dbyp.columns[1].width:=100;
    DBGrid_dbyp.columns[2].width:=60;
    DBGrid_dbyp.columns[3].width:=50;
    DBGrid_dbyp.columns[4].width:=50;
    DBGrid_dbyp.columns[5].width:=80;
    DBGrid_dbyp.columns[6].width:=50;
    DBGrid_dbyp.columns[7].width:=50;
    DBGrid_dbyp.columns[8].width:=100;
    DBGrid_dbyp.columns[9].width:=40;
    DBGrid_dbyp.columns[10].width:=30;
  end ;
end;

procedure Tfm_ck.N1Click(Sender: TObject);
var aqldh:integer;
    aksmc,MsgDelete:string;
begin
   aqldh:=DBGrid_qld.DataSource.DataSet.fieldbyname('请领单号').AsInteger;
   aksmc:=DBGrid_qld.DataSource.DataSet.fieldbyname('科室名称').AsString;
   MsgDelete:=aksmc+'【'+ inttostr(aqldh)+'】号申请的内容？';
   if Application.MessageBox(pchar(MsgDelete),'提示',mb_yesno+MB_ICONQUESTION+MB_DEFBUTTON2)=IDNO  then exit;
   if CheckQld(aqldh,Rdgp_sendtype.ItemIndex) then
   begin
     delqld(aqldh,Rdgp_sendtype.ItemIndex);
     Edit6.SetFocus; //Get_QldInfo(Rdgp_sendtype.ItemIndex);
   end   else messagedlg('已经发药不能删除此请领单的内容！',mtConfirmation,[mbOk],0);

end;

end.



