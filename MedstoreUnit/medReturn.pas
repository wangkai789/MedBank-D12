unit medReturn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, Menus, ToolWin,
  ActnList, ImgList, ExtCtrls, Data.DB, System.ImageList, System.Actions;

type
  Tfm_medReturn = class(TForm)
    pgc_return: TPageControl;
    TabSheet1: TTabSheet;
    grp2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edt_xmmc: TEdit;
    edt_gg: TEdit;
    Edt_usenum: TEdit;
    Edt_useunit: TEdit;
    chk_all_yp: TCheckBox;
    Edt_sendnum: TEdit;
    ToolBar1: TToolBar;
    grp1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Lab_qe: TLabel;
    Label16: TLabel;
    Lab_ycfqe: TLabel;
    Label18: TLabel;
    Lab_czfqe: TLabel;
    Label32: TLabel;
    lb_ssqe: TLabel;
    Label17: TLabel;
    Lab_jsqe: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Lab_cashzf: TLabel;
    Label34: TLabel;
    lb_discount: TLabel;
    lab_gwybzzf: TLabel;
    Label14: TLabel;
    lab_dbjzjzf: TLabel;
    c: TLabel;
    Lab_tczf: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    Edt_no: TEdit;
    edt_name: TEdit;
    edt_ksmc: TEdit;
    Edt_mzh: TEdit;
    ed_zhzf: TEdit;
    Edt_yjj_cash: TEdit;
    Edt_yjj_bank: TEdit;
    Edt_yjj_wechat: TEdit;
    Edt_yjj_alipay: TEdit;
    Edt_checkdate: TEdit;
    edt_sflb: TEdit;
    TabSheet2: TTabSheet;
    grp3: TGroupBox;
    Label12: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    cbb_return: TComboBox;
    Edt_zyh1: TEdit;
    dtp_from: TDateTimePicker;
    dtp_to: TDateTimePicker;
    btn_search: TBitBtn;
    dbgrd_return: TDBGrid;
    dbgrd_detail: TDBGrid;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    btn_SearchBill: TToolButton;
    actlst1: TActionList;
    act_SearchBill: TAction;
    act_AllReturn: TAction;
    act_audit: TAction;
    act_clear: TAction;
    act_close: TAction;
    il1: TImageList;
    btn_AllReturn: TToolButton;
    btn_audit: TToolButton;
    btnadd: TToolButton;
    btnclear: TToolButton;
    btnclose: TToolButton;
    act_add: TAction;
    act_save: TAction;
    act_SearchReturnTemp: TAction;
    btnSearchReturnTemp: TToolButton;
    Label4: TLabel;
    edt_xh: TEdit;
    edt_mryl: TEdit;
    edt_qe: TEdit;
    edt_sfbz: TEdit;
    Panel1: TPanel;
    dbgrd_yp_ty: TDBGrid;
    Panel2: TPanel;
    dbgrd_yp: TDBGrid;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    Act_print: TAction;
    procedure Edt_noEnter(Sender: TObject);
    procedure Edt_noKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgrd_ypDblClick(Sender: TObject);
    procedure dbgrd_yp_tyDblClick(Sender: TObject);
    procedure Edt_usenumKeyPress(Sender: TObject; var Key: Char);
    procedure btn_searchClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure dbgrd_returnCellClick(Column: TColumn);
    procedure N1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_SearchBillClick(Sender: TObject);
    procedure act_SearchBillExecute(Sender: TObject);
    procedure act_AllReturnExecute(Sender: TObject);
    procedure act_auditExecute(Sender: TObject);
    procedure act_clearExecute(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure act_addExecute(Sender: TObject);
    procedure act_SearchReturnTempExecute(Sender: TObject);
  private
    { Private declarations }
    procedure del_return_temp;
    procedure add_return_temp() ;
    procedure Update_return_temp();
    procedure clearyz_temp;
    function checkapply(no:integer):boolean;
    procedure searchmzyp(no:integer);
    function Search_bill(no:integer):boolean;
    function SearchReturnTemp(opid,no:integer):boolean;
    function create_Returnapply(applykind,tykind:byte):boolean;
    function search_apply(temp: boolean;applyID:integer):boolean ;
    //2023.11.12 wk撤销退药申请
    function Cancel_apply(applyID,yfbm:integer):boolean ;
    function search_applydetail(temp: boolean;applyID,DetailID:integer):boolean ;

  public
    { Public declarations }
    Fyfbm:integer;
  end;

var
  fm_medReturn: Tfm_medReturn;

implementation

uses data,factory,czydl;

{$R *.dfm}
function Tfm_medReturn.search_apply(temp: boolean;applyID:integer):boolean ;
begin
  with dm.Q_yzzl do
  begin
    Close;
    SqL.Clear;
    if temp then
    begin
    {  恢复库存
      sql.Add('update nkyc set kcl=kcl-b.summryl');
      sql.Add('from nkyc a,');
      sql.Add('(');
      sql.Add('select c.ypbh,b.yfbm,summryl=sum(b.mryl)');
      sql.Add('from medstore_Return a,medstore_ReturnDetail b,nkyc c');
      sql.Add('where a.ID=b.applyID and b.xmbm=c.ypbh and b.yfbm=c.ksbm and a.ID=:applyID');
      sql.Add('and a.affirmopid is null');
      sql.Add('group by c.ypbh,b.yfbm');
      sql.Add(') b');
      sql.Add('where a.ypbh=b.ypbh and a.ksbm=b.yfbm');
      sql.Add('delete medstore_Return where ID=:applyID and affirmopid is null');
      parambyname('applyID').asinteger:=applyID ;}
    end;
      sql.Add('select a.*,byxm=b.name ,b.ksmc') ;
      sql.Add('from medstore_Return a ,deppatientinfo b ')  ;
      sql.Add('where a.zyh=b.mzh and a.[type]=1 ');
      if trim(Edt_zyh1.text)<>'' then
      begin
        sql.Add('and a.jsdh=:jsdh ');
        parambyname('jsdh').asinteger:=StrToInt(Edt_zyh1.text);
      end  else
      begin
        sql.Add('and datediff(day,a.applydate,:datefrom)<=0');
        sql.Add('and datediff(day,a.applydate,:dateto)>=0');
        parambyname('datefrom').AsDateTime:=dtp_from.Date ;
        parambyname('dateto').AsDateTime:=dtp_to.Date;
        case  cbb_return.ItemIndex of
          0:sql.Add('and a.affirmopid is null');
          1:sql.Add('and a.affirmopid is not null');
        end ;
      end ;
    Open;
    dbgrd_return.DataSource:=dm.ds_yzzl ;
  end;
  if dm.q_yzzl.recordcount=0 then dbgrd_detail.DataSource:=nil ;
  dbgrd_returnCellClick(dbgrd_return.Columns[0]);
end;

function Tfm_medReturn.search_applydetail(temp: boolean;applyID,DetailID:integer):boolean ;
begin
  with dm.Q_use do
  begin
    Close;
    SqL.Clear;
    if temp then
    begin
        {恢复库存}
        sql.Add('update nkyc set kcl=kcl-b.summryl');
        sql.Add('from nkyc a,');
        sql.Add('(');
        sql.Add('select c.ypbh,b.yfbm,summryl=sum(b.mryl)');
        sql.Add('from medstore_Return a,medstore_ReturnDetail b,nkyc c');
        sql.Add('where a.ID=b.applyID and b.xmbm=c.ypbh and b.yfbm=c.ksbm and b.ID=:DetailID');
        sql.Add('and a.affirmopid is null');
        sql.Add('group by c.ypbh,b.yfbm');
        sql.Add(') b');
        sql.Add('where a.ypbh=b.ypbh and a.ksbm=b.yfbm');

        sql.Add('delete medstore_ReturnDetail');
        sql.Add('from medstore_Return a,medstore_ReturnDetail b');
        sql.Add('where a.ID=b.applyID and b.ID=:DetailID and a.affirmopid is null');
        parambyname('DetailID').asinteger:=DetailID;
    end;
    sql.Add('select a.*,b.ypbh,b.ym,b.gg,b.zxdw  ') ;
    sql.Add('from medstore_ReturnDetail a,xyzb b')  ;
    sql.Add('where a.xmbm=b.ypbh and a.applyID=:applyID');
    parambyname('applyID').asinteger:=applyID;
    open;
    dbgrd_detail.DataSource:=dm.ds_use ;
  end;
end;

function Tfm_medReturn.checkapply(no:integer):boolean;
begin
  Result:=false;
  with dm.Q_comm do
  begin
    Close;
    Sql.Clear ;
    Sql.Add('select jsdh From medstore_Return where [type]=1 and jsdh=:no');
    Parambyname('no').asinteger:=no;
    Open ;
    if recordcount >0 then Exit ;
  end;
  Result:=true;
end;

procedure Tfm_medReturn.searchmzyp(no:integer);
begin
  with dm.Q_xyzb do
  begin
      Close;
      SqL.Clear;
      Sql.add('select b.ypbh,yznr=b.ym,ym=b.ym,c.gg,grdchar=null,b.usenum,b.useunit,b.zsl,c.zxdw');
      Sql.add(',yl=''每次量:''+rtrim(ltrim(convert(char(10),b.mryl)))+c.cfzxdw,a.cfrq,a.fyrq,b.cfdh,b.xh,b.qe');
      Sql.add(',mcsl=b.mryl,rcs=null,yf=null,yzlb=case b.yplb when 2 then 2 else 1 end ,');
      Sql.add('groupid=null,admindoctor=null,team=null');
      Sql.add(',cfys=null,byksbm=null,ksbm=null,roomid=null,fplb =b.yplb,a.yfbm,b.yzxh');
      Sql.add('from mzcfdb a(nolock),mzcfyb b(nolock),xyzb c(nolock)');
      Sql.add('where a.cfdh=b.cfdh and b.zsl>0 and b.ypbh=c.ypbh');
      sql.add('and a.no=:no and a.yfbm=:yfbm and a.fyr is not null ');
      parambyname('no').asinteger:=strtoint(Edt_no.text);
      parambyname('yfbm').asinteger:=Fyfbm;
      Open;
      dbgrd_yp.DataSource:=dm.DS_xyzb;
  end;
end;

function Tfm_medReturn.create_Returnapply(applykind,tykind:byte):boolean;
begin
  Result:=false;
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.Add('exec medreturn_apply :opid,:type,:jsdh,:zyh,:applykind,:tykind');
    parambyname('opid').asinteger:=strtoint(dm.Fopid);
    parambyname('type').assmallint:=1;
    parambyname('jsdh').asinteger:=strtoint(edt_no.text);
    parambyname('zyh').asinteger:=strtoint(edt_mzh.text);
    parambyname('applykind').assmallint:=applykind;
    parambyname('tykind').assmallint:=tykind;
    try
      ExecSQL ;
      application.MessageBox('退费申请成功!','提示信息',64);
      Edt_no.SetFocus ;
    except
       on E: Exception do
       begin
         application.MessageBox(pchar('退费申请失败：'+e.Message),'错误提示',mb_iconstop);
         exit;
       end;
    end;
  end;

  Result:=true;
end;

procedure Tfm_medReturn.Edt_noEnter(Sender: TObject);
begin
  act_clear.Execute;
end;

procedure Tfm_medReturn.Edt_noKeyPress(Sender: TObject; var Key: Char);
begin
  //ISDIGITAL(key);
  if key=#13 then btn_SearchBill.Click
end;

procedure Tfm_medReturn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  clearyz_temp();
  close;
end;

procedure Tfm_medReturn.FormShow(Sender: TObject);
begin
  pgc_return.ActivePageIndex :=0 ;
  chk_all_yp.Checked :=True ;
  clearyz_temp();
  Edt_zyh1.Clear ;
  cbb_return.ItemIndex:=0;
  dbgrd_return.DataSource:=nil;
  dbgrd_detail.DataSource:=nil;
  dtp_from.DateTime:=Now();
  dtp_to.DateTime:=Now();
  pgc_return.ActivePageIndex :=0 ;
  act_clear.Execute;
  //Edt_no.Clear ;
  Edt_no.SetFocus ;
  btn_SearchBill.Click;
  panel2.Visible:=false;
end;

procedure Tfm_medReturn.del_return_temp();
var aint_ID,flag:Integer ;
begin
  aint_ID:=dm.Q_yztemp.fieldbyname('ID').asinteger ;
  with dm.Q_yztemp do
  begin
    close;
    Sql.Clear;
    sql.Add('delete medstore_Return_temp where ID=:ID and opid=:opid ');
    parambyname('ID').AsInteger:=aint_ID;
    parambyname('opid').AsInteger:=StrToInt(dm.Fopid);
    try
      execsql;
    except
      exit;
    end;
  end;
end;

procedure Tfm_medReturn.add_return_temp();
var cfdh,xh,cfys,byksbm,ksbm,yzlb,fplb,yfbm,yzxh,admindoctor :integer ;
    roomid,groupid,team,xmbm,xmmc,gg,aUseUnit,azxdw:string;
    azsl,qe,sfbz,aUseNum,aSendNum:currency;
begin
  cfdh:=dm.Q_xyzb.fieldbyname('cfdh').asinteger ;
  xh:=dm.Q_xyzb.fieldbyname('xh').asinteger ;
  xmbm:=dm.Q_xyzb.fieldbyname('ypbh').asstring ;
  xmmc:=dm.Q_xyzb.fieldbyname('ym').asstring ;
  gg:=dm.Q_xyzb.fieldbyname('gg').asstring ;
  azsl:=dm.Q_xyzb.fieldbyname('zsl').ascurrency ;
  aUseNum:=dm.Q_xyzb.fieldbyname('usenum').ascurrency;
  aUseUnit:=dm.Q_xyzb.fieldbyname('useunit').asstring;
  aSendNum:=dm.Q_xyzb.fieldbyname('usenum').ascurrency;

  sfbz:=dm.Q_xyzb.fieldbyname('qe').ascurrency/aUseNum;
  cfys:=dm.Q_xyzb.fieldbyname('cfys').asinteger ;
  byksbm:=dm.Q_xyzb.fieldbyname('byksbm').asinteger ;
  ksbm:=dm.Q_xyzb.fieldbyname('ksbm').asinteger ;
  yzlb:=dm.Q_xyzb.fieldbyname('yzlb').asinteger ;
  fplb:=dm.Q_xyzb.fieldbyname('fplb').asinteger ;
  yfbm:=dm.Q_xyzb.fieldbyname('yfbm').asinteger ;
  yzxh:=dm.Q_xyzb.fieldbyname('yzxh').asinteger ;
  groupid:=dm.Q_xyzb.fieldbyname('groupid').asstring ;
  roomid:=dm.Q_xyzb.fieldbyname('roomid').asstring ;
  team:=dm.Q_xyzb.fieldbyname('team').asstring ;
  admindoctor:=dm.Q_xyzb.fieldbyname('admindoctor').asinteger ;

  with dm.Q_yztemp do
  begin
    close;
    sql.Clear;
    sql.add('insert medstore_Return_temp(jsdh,zyh,xh,xmbm,xmmc,gg,usenum,useunit,mryl,mcsl,rcs,groupid,roomid,team');
    sql.add(',yf,yzlb,sfbz,qe,admindoctor,cfys,byksbm,ksbm,cfdh,fplb,yfbm,yzxh,opid,SendNum)');
    sql.add(' values(:jsdh,:zyh,:xh,:xmbm,:xmmc,:gg');
    sql.add(',:usenum,:useunit,:mryl,1,1');
    sql.add(',:groupid,:roomid,:team');
    sql.add(',6');
    sql.add(',:yzlb,:sfbz,:qe,:admindoctor,:cfys,:byksbm,:ksbm,:cfdh,:fplb,:yfbm,:yzxh,:opid,:SendNum)');
    parambyname('jsdh').asinteger:=strtoint(edt_no.Text) ;
    parambyname('zyh').asinteger:=0 ;
    parambyname('xh').asinteger:=xh ;
    parambyname('xmbm').asstring:=xmbm;
    parambyname('xmmc').asstring:=xmmc;
    parambyname('gg').asstring:=gg;
    parambyname('yzlb').asinteger:=yzlb;
    parambyname('usenum').ascurrency:=aUseNum;
    parambyname('useunit').asstring:=aUseUnit;
    parambyname('mryl').ascurrency:=aUseNum*(azsl/aSendNum) ;

    //parambyname('usenum').ascurrency:=0;
   // parambyname('useunit').asstring:=aUseUnit;
    //parambyname('mryl').ascurrency:=0;

    parambyname('sfbz').ascurrency:=sfbz;
    parambyname('qe').ascurrency:=aUseNum*sfbz;
    parambyname('groupid').asstring:=groupid ;
    parambyname('roomid').asstring:=roomid  ;
    parambyname('team').asstring:=team  ;
    parambyname('admindoctor').asinteger:=admindoctor  ;
    parambyname('fplb').asinteger:=fplb   ;
    parambyname('cfys').asinteger:=cfys ;
    parambyname('byksbm').asinteger:= byksbm  ;
    parambyname('ksbm').asinteger  := ksbm    ;
    parambyname('cfdh').AsInteger :=cfdh;
    parambyname('yfbm').asinteger:=yfbm;
    parambyname('yzxh').asinteger:=yzxh;
    parambyname('opid').asinteger:=StrToInt(dm.Fopid);
    parambyname('SendNum').ascurrency:=aSendNum;
    try
      ExecSQL;
    except
       on E: Exception do
       begin
          application.MessageBox(pchar('加入失败:'+e.Message),'提示信息',64);
          exit;
       end;
    end;

    //chk_all_yp.Checked :=true ;
 end;
end;

procedure Tfm_medReturn.dbgrd_yp_tyDblClick(Sender: TObject);
begin
{  if application.messagebox('确认取消此条退费申请吗？','提示信息',mb_yesno+mb_iconwarning+mb_defbutton2)=idno then
  Exit;
  del_return_temp(true);}
  if dbgrd_yp_ty.DataSource=nil then exit;
  if dbgrd_yp_ty.DataSource.DataSet.IsEmpty then exit;

  edt_xh.Text         :=dm.Q_yztemp.fieldbyname('xh').asstring ;
  Edt_xmmc.Text       :=dm.Q_yztemp.fieldbyname('xmmc').asstring ;
  edt_gg.Text         :=dm.Q_yztemp.fieldbyname('gg').asstring ;
  Edt_usenum.Text     :=dm.Q_yztemp.fieldbyname('usenum').asstring ;
  Edt_sendnum.Text :=dm.Q_yztemp.fieldbyname('sendnum').asstring ;
  Edt_useunit.Text :=dm.Q_yztemp.fieldbyname('useunit').asstring ;
  edt_mryl.Text :=dm.Q_yztemp.fieldbyname('mryl').asstring ;
  edt_qe.Text :=dm.Q_yztemp.fieldbyname('qe').asstring ;
  edt_sfbz.Text :=dm.Q_yztemp.fieldbyname('sfbz').asstring ;
  Edt_usenum.SetFocus;
end;

procedure Tfm_medReturn.dbgrd_ypDblClick(Sender: TObject);
begin
  if dbgrd_yp.DataSource=Nil then Exit ;
  if not dbgrd_yp.DataSource.DataSet.Active then Exit;
  if not dbgrd_yp.DataSource.DataSet.RecordCount=0 then Exit;
  Edt_xmmc.Text :=dm.Q_xyzb.fieldbyname('ym').asstring ;
  edt_gg.Text :=dm.Q_xyzb.fieldbyname('gg').asstring ;
  Edt_usenum.Text :=dm.Q_xyzb.fieldbyname('usenum').asstring ;
  Edt_sendnum.Text :=dm.Q_xyzb.fieldbyname('usenum').asstring ;
  Edt_useunit.Text :=dm.Q_xyzb.fieldbyname('useunit').asstring ;
  if chk_all_yp.Checked then
    add_return_temp()
  else
    Edt_usenum.SetFocus ;
end;

procedure Tfm_medReturn.clearyz_temp;
begin
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.Add('delete medstore_Return_temp where opid=:opid');
    parambyname('opid').asinteger:=strtoint(fm_czydl.Ed_bh.text);
    execsql;
  end;
end;


procedure Tfm_medReturn.Edt_usenumKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key=#13) and (trim(Edt_xmmc.Text)<>'')) then
  begin
    if abs(strtocurr(Edt_usenum.Text))> abs(strtocurr(Edt_sendnum.Text)) then
    begin
       Application.MessageBox('退药数量不能大于发药数量！','提示信息',MB_ICONWARNING);
       Edt_usenum.Clear;
       Exit;
    end;
    IF strtocurr(Edt_usenum.Text)<0 THEN
    BEGIN
      Application.MessageBox('退要数量不能小于0！','提示信息',MB_ICONWARNING);
      exit;
    end;
     //add_return_temp();
     Update_return_temp();
     act_SearchReturnTemp.Execute;
     dbgrd_yp_ty.SetFocus;
  end ;
end;

procedure Tfm_medReturn.btn_searchClick(Sender: TObject);
begin
  search_apply(False,0) ;
end;

procedure Tfm_medReturn.N2Click(Sender: TObject);
var applyID,DetailID:Integer;
begin
  if not dbgrd_detail.DataSource.DataSet.Active then Exit;
  if dbgrd_detail.DataSource.DataSet.RecordCount < 1 then Exit;
  if application.MessageBox('您确实要删除该条退费申请吗？ ','提示信息', MB_YESNO + MB_DEFBUTTON2+MB_ICONQUESTION)=id_NO then exit;
  applyID:=dbgrd_detail.DataSource.DataSet.fieldbyname('applyID').AsInteger ;
  DetailID:=dbgrd_detail.DataSource.DataSet.fieldbyname('ID').AsInteger ;
  search_applydetail(true,applyID,DetailID) ;
end;

procedure Tfm_medReturn.dbgrd_returnCellClick(Column: TColumn);
var ID:Integer;
begin
  if not dbgrd_return.DataSource.DataSet.Active then Exit;
  if dbgrd_return.DataSource.DataSet.RecordCount < 1 then Exit;
  ID:=dbgrd_return.DataSource.DataSet.fieldbyname('ID').AsInteger ;
  search_applydetail(false,ID,0) ;
end;

procedure Tfm_medReturn.N1Click(Sender: TObject);
var applyID,ayfbm:Integer;
begin
  ayfbm:=dm.Fksbm;
  if not dbgrd_return.DataSource.DataSet.Active then Exit;
  if dbgrd_return.DataSource.DataSet.RecordCount < 1 then Exit;

  if not dbgrd_return.DataSource.DataSet.FieldByName('affirmopid').IsNull then
  begin
    application.MessageBox('已经退费不能撤销！','信息',32);
    exit;
  end;

  if application.MessageBox('您确实要删除整个退费申请单吗？ ','提示信息', MB_YESNO + MB_DEFBUTTON2+MB_ICONQUESTION)=id_NO then exit;
  applyID:=dbgrd_return.DataSource.DataSet.fieldbyname('ID').AsInteger ;
  Cancel_apply(applyID,ayfbm);
  search_apply(true,applyID);
end;

procedure Tfm_medReturn.Button2Click(Sender: TObject);
begin
  Close ;
end;

function Tfm_medReturn.search_bill(no: integer): boolean;
begin
 with dm.Q_ksby do
  begin
    close;
    sql.Clear;
    sql.add('select a.mzh,a.name,a.sflb,a.ksmc,c.xm,a.icnumber,d.ID,d.qe,d.ycfqe,d.czfqe,d.checkdate,d.ssqe,d.discount,d.ownfee,');
    sql.add('zhzf=isnull(d.zhzf,0),tczf=isnull(d.tczf,0),dbjzjzf=isnull(d.dbjzjzf,0),');
    sql.add('gwybzzf=isnull(d.gwybzzf,0),cashzf=isnull(d.cashzf,0),');
    sql.add('yjj_cash=isnull(d.yjj_cash,0),yjj_bank=isnull(d.yjj_bank,0),');
    sql.add('zhzf=isnull(d.zhzf,0),yjj_alipay=isnull(d.yjj_alipay,0),');
    sql.add('yjj_wechat=isnull(d.yjj_wechat,0),yjj_account=isnull(d.yjj_account,0)');
    sql.add('from deppatientinfo a(nolock),zgzb c(nolock) ,depcheck d (nolock)');
    sql.add('where a.ysbm=c.bh and a.mzh=d.mzh and a.ifjz=0');
    sql.add('and d.no=:no and d.no_zf is null and d.qe>0');
    ParamByName('no').Asinteger:=no;
    open;
  end;
  if dm.Q_ksby.RecordCount<1 then
  begin
    application.MessageBox('无此发票或此发票已作废！'+#13+'请确认后从新输入！','提示',mb_ok+mb_iconerror);    //或已经日结过
    exit;
  end;

  edt_name.Text:=dm.Q_ksby.fieldbyname('name').asstring;
  edt_ksmc.Text:=dm.Q_ksby.fieldbyname('ksmc').asstring;
  //Label7.Caption:=dm.Q_ksby.fieldbyname('xm').asstring;
  edt_mzh.Text:=dm.Q_ksby.fieldbyname('mzh').asstring;
  edt_sflb.Text:=dm.Q_ksby.fieldbyname('sflb').asstring;
  Lab_qe.Caption:=dm.Q_ksby.fieldbyname('qe').asstring;
  Lab_ycfqe.Caption:=dm.Q_ksby.fieldbyname('ycfqe').asstring;
  Lab_czfqe.Caption:=dm.Q_ksby.fieldbyname('czfqe').asstring;
  Ed_zhzf.Text:=formatcurr('0.00',dm.Q_ksby.fieldbyname('zhzf').ascurrency);
  Lab_tczf.Caption:=formatcurr('0.00',dm.Q_ksby.fieldbyname('tczf').ascurrency);
  lab_dbjzjzf.Caption:=formatcurr('0.00',dm.Q_ksby.fieldbyname('dbjzjzf').ascurrency);
  lab_gwybzzf.Caption:=formatcurr('0.00',dm.Q_ksby.fieldbyname('gwybzzf').ascurrency);
  Lab_cashzf.Caption:=formatcurr('0.00',dm.Q_ksby.fieldbyname('cashzf').ascurrency);
  //edt_ID.Text:=inttostr(dm.Q_ksby.fieldbyname('ID').asinteger);
  Edt_yjj_cash.Text:=formatcurr('0.00',dm.Q_ksby.fieldbyname('yjj_cash').ascurrency);
  Edt_yjj_bank.Text:=formatcurr('0.00',dm.Q_ksby.fieldbyname('yjj_bank').ascurrency);
  Edt_yjj_alipay.Text:=formatcurr('0.00',dm.Q_ksby.fieldbyname('yjj_alipay').ascurrency);
  Edt_yjj_wechat.Text:=formatcurr('0.00',dm.Q_ksby.fieldbyname('yjj_wechat').ascurrency);
  //Edt_yjj_account.Text:=formatcurr('0.00',dm.Q_ksby.fieldbyname('yjj_account').ascurrency);
  Edt_Checkdate.Text:=FormatDateTime('yyyy-MM-dd hh:mm:ss',dm.Q_ksby.fieldbyname('checkdate').AsDateTime) ;
end;

procedure Tfm_medReturn.btn_SearchBillClick(Sender: TObject);
var ano:integer;
begin
  ano:=strtoint(Edt_no.text);
  search_bill(ano);
  searchmzyp(ano);
  if not checkapply(ano) then
  begin
    application.MessageBox('该发票号已有退药申请单,不能保存！！！','提示信息',64);
    btn_AllReturn.Enabled :=false ;
    btn_audit.Enabled :=false ;
  end
  else
  begin
    btn_AllReturn.Enabled :=true ;
    btn_audit.Enabled :=true ;
  end;
end;

procedure Tfm_medReturn.act_SearchBillExecute(Sender: TObject);
var ano:integer;
begin
  ano:=strtoint(Edt_no.text);
  search_bill(ano);
  searchmzyp(ano);
  if not checkapply(ano) then
  begin
    application.MessageBox('该发票号已有退药申请单,不能保存！！！','提示信息',64);
    btn_AllReturn.Enabled :=false ;
    btn_audit.Enabled :=false ;
    btnadd.Enabled:=false;
  end
  else
  begin
    if  SearchReturnTemp(strtoint(dm.Fopid),strtoint(Edt_no.text)) then  exit;
    btn_AllReturn.Enabled :=true ;
    btn_audit.Enabled :=true ;
    btnadd.Enabled:=false;
    act_add.Execute;
    act_SearchReturnTemp.Execute;
  end;

end;

procedure Tfm_medReturn.act_AllReturnExecute(Sender: TObject);
begin
  if trim(Edt_mzh.Text)='' then
  begin
    application.MessageBox('门诊号不能为空！！！','提示信息',64);
    Exit ;
  end;
  if dbgrd_yp_ty.DataSource<>nil then
  begin
    if dbgrd_yp_ty.DataSource.DataSet.RecordCount >0 then
    begin
      application.MessageBox('已退药品列表有记录，不能点击全退按钮！！！','提示信息',64);
      Exit;
    end ;
  end ;

  If  application.messagebox('您确实要退费审核吗？','提问信息',mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=idno then exit;
  Edt_mzh.setfocus;
  chk_all_yp.Checked :=true ;
  dbgrd_yp.DataSource.DataSet.First;
  while not dbgrd_yp.DataSource.DataSet.eof do
  begin
    dbgrd_ypDblClick(dbgrd_yp);
    dbgrd_yp.DataSource.DataSet.next;
  end;

  btn_AllReturn.Enabled:=False;
  if create_Returnapply(1,1) then
    btn_AllReturn.Enabled:=false
  else
    btn_AllReturn.Enabled:=true;
  Edt_no.SetFocus ;
end;

procedure Tfm_medReturn.act_auditExecute(Sender: TObject);
var no:Integer ;
begin
  if trim(Edt_mzh.Text)='' then
  begin
    application.MessageBox('门诊号不能为空！！！','提示信息',64);
    Exit ;
  end;
  If  application.messagebox('您确实要退费审核吗？','提问信息',mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=idno then exit;
  btn_audit.Enabled:=False;

  if dbgrd_yp_ty.DataSource<>nil then
  begin
    if dbgrd_yp_ty.DataSource.DataSet.RecordCount >0 then
    begin
      if not create_Returnapply(1,0) then
      begin
        btn_audit.Enabled:=true;
        Edt_no.SetFocus ;
      end
      else
      begin
        btn_audit.Enabled:=false
      end;
    end ;
  end ;
  del_return_temp();
  act_SearchReturnTemp.Execute;
end;

procedure Tfm_medReturn.act_clearExecute(Sender: TObject);
begin
//  Edt_no.Clear;
  edt_name.Clear;
  edt_ksmc.Clear ;
  //label7.Caption:='';
  edt_mzh.Clear;
  edt_sflb.Clear;
  Lab_jsqe.Caption:='';
  Ed_zhzf.Clear;
  Lab_tczf.Caption:='';
  lab_dbjzjzf.Caption:='';
  lab_gwybzzf.Caption:='';
  Lab_cashzf.Caption:='';
  Lab_qe.Caption:='';
  Lab_ycfqe.Caption:='';
  Lab_czfqe.Caption:='';
  Edt_Checkdate.Clear;
  Edt_Checkdate.tag:=0;
  lb_ssqe.Caption:='';
  lb_discount.Caption:='';
  Edt_yjj_cash.Clear ;
  Edt_yjj_bank.Clear ;
  Edt_yjj_alipay.Clear ;
  Edt_yjj_wechat.Clear ;
  Edt_xmmc.Clear ;
  edt_gg.Clear ;
  Edt_usenum.Clear ;
  edt_useunit.Clear ;
  Edt_sendnum.Clear ;
  dbgrd_yp.DataSource :=nil ;
  dbgrd_yp_ty.DataSource :=nil ;
end;

procedure Tfm_medReturn.act_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfm_medReturn.act_addExecute(Sender: TObject);
begin
  if dbgrd_yp.DataSource=Nil then Exit ;
  with dbgrd_yp.DataSource.DataSet do
  begin
     if  IsEmpty then exit;
     First;
     while not eof do
     begin
       add_return_temp();
       next;
     end;
  end;
  dbgrd_yp_ty.SetFocus;
  

end;

function Tfm_medReturn.SearchReturnTemp(opid, no: integer): boolean;
begin
 result:=false;
 with dm.Q_yztemp do
  begin
    close;
    sql.clear;
    sql.Add('select *') ;
    sql.Add('from medstore_Return_temp ')  ;
    sql.Add('where opid=:opid and jsdh=:jsdh');
    sql.Add('order by ID');
    parambyname('opid').asinteger:=opid;
    parambyname('jsdh').asinteger:=no;
    open;
    if not isempty then
      dbgrd_yp_ty.DataSource:=dm.ds_yztemp
    else
    begin
      dbgrd_yp_ty.DataSource:=nil;
      exit;
    end;
  end;
  result:=true;
end;

procedure Tfm_medReturn.act_SearchReturnTempExecute(Sender: TObject);
begin
  SearchReturnTemp(strtoint(dm.Fopid),strtoint(Edt_no.text))
end;

procedure Tfm_medReturn.Update_return_temp;
var  aUseNum,asfbz,amryl,aSendNum:currency;
     axh:integer;
begin
 axh :=strtoint(edt_xh.text);
 aUseNum :=strtocurr(edt_UseNum.text); //退药数量
 aSendNum:=strtocurr(edt_SendNum.text); //发药数量
 asfbz   :=strtocurr(edt_sfbz.text);
 amryl   :=strtocurr(edt_mryl.text);
 with dm.Q_yztemp do
  begin
    close;
    sql.Clear;
    sql.add('update medstore_Return_temp set UseNum=:UseNum,qe=:qe,mryl=:mryl where xh=:xh ');
    parambyname('UseNum').ascurrency:=aUseNum;
    parambyname('qe').ascurrency:=aUseNum*asfbz;
    parambyname('mryl').ascurrency:=aUseNum*(amryl/aSendNum) ;
    parambyname('xh').asinteger:=axh;
    try
      ExecSQL;
    except
       on E: Exception do
       begin
          application.MessageBox(pchar('修改错误:'+e.Message),'提示信息',64);
          exit;
       end;
    end;
    //chk_all_yp.Checked :=true ;
 end;
end;

function Tfm_medReturn.Cancel_apply(applyID, yfbm: integer): boolean;
begin
  result:=false;
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('exec Medstore_returnCancel :applyID,:yfbm');
    parambyname('applyID').asinteger:=applyID;
    parambyname('yfbm').asinteger:=Fyfbm;
    try
      ExecSQL;
    except
       on E: Exception do
       begin
          application.MessageBox(pchar('修改错误:'+e.Message),'提示信息',64);
          exit;
       end;
    end;
 end;
   result:=true;
end;

end.




