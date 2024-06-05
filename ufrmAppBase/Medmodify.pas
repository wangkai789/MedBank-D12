unit Medmodify;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls,StrUtils, Buttons, jpeg, Grids,
  DBGrids, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;
type TArrayValue = array[1..45] of string;

type
  TFm_Medmodify = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label30: TLabel;
    Label1: TLabel;
    Label37: TLabel;
    Label23: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label40: TLabel;
    Edt_pym: TEdit;
    Edt_ywm: TEdit;
    Edt_ddd: TEdit;
    ComBox_jx: TComboBox;
    ComBox_ypzl: TComboBox;
    Edt_gg: TEdit;
    Edt_lsm: TEdit;
    Edt_bm: TEdit;
    ComBox_jjyp: TComboBox;
    edt_produce: TEdit;
    Edt_ypbh: TEdit;
    Edt_ym: TEdit;
    CmbBx_selfyp: TComboBox;
    CmbBx_ifzy: TComboBox;
    com_skintry: TComboBox;
    CmbBx_lb: TComboBox;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Combox_yb: TComboBox;
    edt_ybbm_country: TEdit;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edt_bankplace: TEdit;
    edt_inplace: TEdit;
    edt_outplace: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    ComBox_zxdw: TComboBox;
    ComBox_jldw: TComboBox;
    Combox_cfzxdw: TComboBox;
    Edt_hsb: TEdit;
    edt_cfhsb: TEdit;
    ComBox_kind: TComboBox;
    DBGrd_produce: TDBGrid;
    Label13: TLabel;
    Edt_lsj: TEdit;
    Lbl_dw: TLabel;
    CmbBx_basic: TComboBox;
    GroupBox5: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBGrd_UpdateLog: TDBGrid;
    edt_cjbm: TEdit;
    Label42: TLabel;
    edt_xsj: TEdit;
    Label27: TLabel;
    lbl1: TLabel;
    edt_mzlsj: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    edt_mzxsj: TEdit;
    lbl4: TLabel;
    Label43: TLabel;
    edt_dosage: TEdit;
    Label44: TLabel;
    cmbx_fplb: TComboBox;
    Cmbx_storetype: TComboBox;
    Label45: TLabel;
    Label46: TLabel;
    lbl5: TLabel;
    edt_barcode: TEdit;
    Label53: TLabel;
    edt_pwh: TEdit;
    cmb_StoreClass: TComboBox;
    edt_ybmc_country: TEdit;
    edt_ybremark: TEdit;
    Panel_title: TPanel;
    Label36: TLabel;
    BBtn_save: TBitBtn;
    BBtn_quit: TBitBtn;
    cmbx_jxdw: TComboBox;
    Label12: TLabel;
    Edt_pfj: TEdit;
    Label20: TLabel;
    Edt_ypjj: TEdit;
    cmb_basicProvince: TComboBox;
    Label41: TLabel;
    Label47: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edt_lba: TEdit;
    edt_lbb: TEdit;
    Label28: TLabel;
    ComboBox1: TComboBox;
    Image1: TImage;
    cbb_groupbuy: TComboBox;
    Label14: TLabel;
    procedure Btn_quitClick(Sender: TObject);
    procedure CmbBx_ifzyChange(Sender: TObject);
    procedure DBGrd_produceDblClick(Sender: TObject);
    procedure DBGrd_produceExit(Sender: TObject);
    procedure DBGrd_produceKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edt_cjbmKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_ymKeyPress(Sender: TObject; var Key: Char);
    procedure ComBox_jldwChange(Sender: TObject);
    procedure ComBox_zxdwChange(Sender: TObject);
    procedure Edt_hsbKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_bmKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_ywmKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_pymKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_lsmKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_ggKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_pfjKeyPress(Sender: TObject; var Key: Char);
    procedure CmbBx_lbChange(Sender: TObject);
    procedure Edt_lsjKeyPress(Sender: TObject; var Key: Char);
    procedure edt_mzlsjKeyPress(Sender: TObject; var Key: Char);
    procedure ComBox_jxChange(Sender: TObject);
    procedure edt_pwhKeyPress(Sender: TObject; var Key: Char);
    procedure BBtn_saveClick(Sender: TObject);
    procedure ComBox_jldwKeyPress(Sender: TObject; var Key: Char);
    procedure ComBox_zxdwKeyPress(Sender: TObject; var Key: Char);
    procedure Combox_cfzxdwKeyPress(Sender: TObject; var Key: Char);
    procedure edt_dosageKeyPress(Sender: TObject; var Key: Char);
    procedure ComBox_kindKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_ypjjKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_StoreClassChange(Sender: TObject);
  private
    { Private declarations }
    FCaptionValue:TArrayValue;
    FCurrValue:TArrayValue;
    FUpdateValue:TArrayValue;
    procedure GetArrayValue(ArrayValue:TArrayValue;Arraytype:byte);
    procedure GetCaptionValue();
    function CompareArrayValue(CurrValue,UpdateValue:TArrayValue):string;
  public
    { Public declarations }
    Foldhsb:string;
    Fopid:string;
    FopidName:string;
    procedure SetComboxList();
    function  FindString(CbActive:Tcombobox;s: string): Integer;
    function  GetComboxIndex(Source:tcombobox;Compstr:string):integer;
    function  GetComboxValue(Source:tcombobox;substr:string;front:boolean):string;
    function  CheckHsbModfity(ypbh:string):boolean;
  end;

var
  Fm_Medmodify: TFm_Medmodify;

implementation

uses data, ypxg,factory,pyproc;

{$R *.dfm}

{ TFm_Medmodify }
function TFm_Medmodify.FindString(CbActive:Tcombobox;s: string): Integer;
var
  i: Integer;
  searchresult:boolean;
begin
  i := 0;
  searchresult:=false ;
  while (i < CbActive.Items.Count)  do
     begin
       if   (copy(CbActive.Items[i],1,pos(':',CbActive.Items[i])-1)= trim(s)) then
       begin
         searchresult:=true;
         Result := i;
         CbActive.text:=CbActive.Items[i];
         break;
       end;
       inc(i);
       if searchresult=false then Result := -1;
     end;
end;

function TFm_Medmodify.GetComboxIndex(Source: tcombobox;Compstr:string): integer;
var icount,index:integer;
    astr:string;
begin
  for icount:=0 to Source.Items.Count-1 do
  begin
    index:=pos(':',Source.Items[icount]);
    astr:=copy(Source.Items[icount],index+1,50);
    if  astr='' then astr:=Source.Items[icount];
     if trim(Compstr)=trim(astr) then
     begin
       result:=icount;
       exit;
     end else
     begin
       if icount=Source.Items.Count-1 then result:=-1;
     end;
  end;
end;

procedure TFm_Medmodify.SetComboxList;
var aSqlStr:string;
begin
  aSqlStr:='select zjdw from zjdw';
  dm.SetCmbxValue(ComBox_zxdw,asqlstr,1);
  dm.SetCmbxValue(ComBox_jldw,asqlstr,1);
  dm.SetCmbxValue(ComBox_cfzxdw,asqlstr,1);

  aSqlStr:='select jxbm,jx from ypjx';
  dm.SetCmbxValue(ComBox_jx,asqlstr,2);

  aSqlStr:='select zlbm,zlm from ypzl';
  dm.SetCmbxValue(ComBox_ypzl,asqlstr,2);

  aSqlStr:='select bh,lbmc from ypzl_yb';
  dm.SetCmbxValue(ComBox_yb,asqlstr,2);

  aSqlStr:='select fplb,lbmc from cwsf_fplb';
  dm.SetCmbxValue(Cmbx_fplb,asqlstr,2);

  aSqlStr:='select bh,mc from pub_constant where kind=68 ';
  dm.SetCmbxValue(cmb_StoreClass,asqlstr,2);
end;

procedure TFm_Medmodify.Btn_quitClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFm_Medmodify.CmbBx_ifzyChange(Sender: TObject);
begin
  if   CmbBx_ifzy.ItemIndex=0 then Image1.Visible:=false
  else Image1.Visible:=true;
end;

procedure TFm_Medmodify.DBGrd_produceDblClick(Sender: TObject);
begin
   case DBGrd_produce.Tag of
   8:begin
      edt_cjbm.Text:=DBGrd_produce.Fields[0].AsString;
      edt_produce.Text:=DBGrd_produce.Fields[1].AsString;
      //edt_lba.SetFocus;
      edt_produce.SetFocus;
     end;
  15:begin
      edt_lba.Text:=DBGrd_produce.Fields[1].AsString;
     // edt_lbb.SetFocus;
    end;
  16:begin
      edt_lbb.Text:=DBGrd_produce.Fields[1].AsString;
      //com_skintry.SetFocus;
    end;
   end;
end;

procedure TFm_Medmodify.DBGrd_produceExit(Sender: TObject);
begin
  DBGrd_produce.Visible:=false;
end;

procedure TFm_Medmodify.DBGrd_produceKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then   DBGrd_produceDblClick(sender);
end;

procedure TFm_Medmodify.Btn_saveClick(Sender: TObject);
var  Medinfo:txyzb;
     aMsg:string;
begin
    try
      if  foldhsb<>trim(edt_hsb.text) then
      begin
         if CheckHsbModfity(Edt_ypbh.Text) then
         edt_xsj.Text:=currtostr(strtocurr(Edt_lsj.text) /strtoint(edt_hsb.text))
         else begin
           Edt_hsb.text:=foldhsb;
           application.MessageBox('不能修改核算比信息！','信息',32);
           exit;
         end;
      end;
    except
       exit;
    end;
    if strtoint(GetComboxValue(CmbBx_lb,':',true))=2 then
    begin
      if strtoint(GetComboxValue(ComBox_kind,':',true))<>98 then
      begin
        application.MessageBox('类别为草药拆分类别必须选择【98:可拆分】！！','信息',32);
        Exit;
      end;
    end ;
    Medinfo.ypbh:=Edt_ypbh.Text;
    Medinfo.ym:=Edt_ym.TEXT;
    Medinfo.pym:=edt_pym.Text;
    Medinfo.lsm:=edt_lsm.Text;
    Medinfo.zlbm:=strtoint(GetComboxValue(ComBox_ypzl,':',true));
    Medinfo.zlm:=GetComboxValue(ComBox_ypzl,':',false);
    try
      Medinfo.jxbm:=strtoint(GetComboxValue(ComBox_jx,':',true));
    except
      Application.MessageBox('剂型没有选择 ！','提示信息',64) ;
      Exit;
    end ;
    Medinfo.jx:=GetComboxValue(ComBox_jx,':',false);
    Medinfo.gg:=Edt_gg.Text;
    Medinfo.zxdw:=ComBox_zxdw.Text;
    Medinfo.hsb:=strtoint(Edt_hsb.text);
    Medinfo.jldw:=ComBox_jldw.text;
    Medinfo.pfj:=strtocurr(Edt_pfj.text);
    Medinfo.ypj:=strtocurr(Edt_ypjj.text);
    Medinfo.ylsj:=strtocurr(Edt_lsj.text);
    Medinfo.mzylsj:=strtocurr(Edt_mzlsj.text);
    Medinfo.bm:=Edt_bm.text;
    Medinfo.ywm:=Edt_ywm.text;
    Medinfo.lb:=strtoint(GetComboxValue(CmbBx_lb,':',true));
    Medinfo.lbm:=GetComboxValue(CmbBx_lb,':',false);
    try
      Medinfo.checklb:=strtoint(GetComboxValue(cmbx_fplb,':',true));
    except
       Application.MessageBox('发票类别没有选择 ！','提示信息',64) ;
       Exit;
    end ;
    Medinfo.checklbm:=GetComboxValue(cmbx_fplb,':',false);
    Medinfo.ddd:=strtoint(Edt_ddd.Text);
    if ComBox_jjyp.ItemIndex=0 then     Medinfo.jjyp:=true else Medinfo.jjyp:=false;
    Medinfo.cfhsb:=strtoint(edt_cfhsb.text);
    Medinfo.cfzxdw:=Combox_cfzxdw.text;
    if CmbBx_ifzy.ItemIndex=0 then Medinfo.ifzy:=true else Medinfo.ifzy:=false;
    if CmbBx_selfyp.ItemIndex=0 then Medinfo.selfyp:='1' else Medinfo.selfyp:='0';

    Medinfo.oper_date:=now();
    Medinfo.operbh:=strtoint(dm.Fopid);
    Medinfo.up_date:=now();
    Medinfo.upbh:=strtoint(dm.Fopid);
    Medinfo.skintry:=com_skintry.ItemIndex;
    Medinfo.atype:=strtoint(GetComboxValue(ComBox_kind,':',true));
    Medinfo.Inp_Place:=edt_inplace.text;
    Medinfo.Outp_Place:=edt_outplace.text;
    Medinfo.bank_place:=edt_bankplace.text;
    //Medinfo.xnhbm:=edt_xnhbm.text;
    //Medinfo.xnhkind:=CmbBx_xnhkind.Text;
    //Medinfo.xnhbl:=strtofloatdef(edt_xnhbl.text,0);
    Medinfo.gf:=strtointdef(GetComboxValue(Combox_yb,':',true),0);
    Medinfo.ybkind:=GetComboxValue(Combox_yb,':',false);
    //Medinfo.ybbm:=edt_ybbm.text;
    Medinfo.lbA:=edt_lba.text;
    Medinfo.lbB:=edt_lbb.text;
    Medinfo.produce:=edt_produce.text;
    try
      Medinfo.cjbm:=strtoint(edt_cjbm.text);
    except
      Application.MessageBox('8:生产厂家没有选择 ！','提示信息',64) ;
      Exit;
    end ;
    Medinfo.storetype:=trim(Cmbx_storetype.Text);
    Medinfo.dosage:=StrToCurrdef(edt_dosage.Text,0);
    Medinfo.barcode:=trim(edt_barcode.Text);
    Medinfo.pwh:=trim(edt_pwh.Text);
    Medinfo.ypkind:=strtoint(GetComboxValue(cmb_StoreClass,':',true));
    if CmbBx_basic.ItemIndex=0   then Medinfo.basic:=true    else Medinfo.basic:=false;
    if cbb_groupbuy.ItemIndex=0  then Medinfo.groupbuy:=true else Medinfo.groupbuy:=false;
    GetArrayValue(FUpdateValue,2);
    aMsg:=CompareArrayValue(FCurrValue,FUpdateValue);
    if trim(aMsg)<>'' then
    begin
      if application.messagebox('是否修改记录？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
      dm.AddMedLog(dm.Fopid,dm.FopidName,amsg);
      dm.UpdateMed(Medinfo,dm.Fopid);
      Fm_ypchange.btn_serach.Click();
    end else
    begin
      application.MessageBox('没有修改任何信息，不能保存记录！','信息',32);
    end;
end;

function TFm_Medmodify.GetComboxValue(Source: tcombobox; substr: string;
  front: boolean): string;
begin
 if  front then
   begin
     result:=copy(Source.Text,1,pos(substr,Source.Text)-1)
   end
 else
   begin
     result:=copy(Source.Text,Pos(substr,Source.Text)+1,length(Source.Text)-Pos(':',Source.Text));
   end ;
end;

procedure TFm_Medmodify.GetArrayValue(ArrayValue:TArrayValue;Arraytype:byte);
begin
  ArrayValue[1]:=trim(Edt_ypbh.Text);
  ArrayValue[2]:=trim(edt_barcode.text);
  ArrayValue[3]:=trim(Edt_ym.Text);
  ArrayValue[4]:=trim(Edt_bm.Text);
  ArrayValue[5]:=trim(Edt_ywm.Text);
  ArrayValue[6]:=trim(Edt_pym.Text);
  ArrayValue[7]:=trim(Edt_lsm.Text);
  ArrayValue[8]:=trim(Edt_gg.Text);
  ArrayValue[9]:=trim(edt_cjbm.Text)+trim(edt_produce.Text);
  ArrayValue[10]:=trim(edt_pwh.text);
  ArrayValue[11]:=trim(Edt_ddd.Text);
  ArrayValue[12]:=trim(ComBox_jx.Text);
  ArrayValue[13]:=trim(ComBox_ypzl.Text);
  ArrayValue[14]:=trim(cmb_StoreClass.text);
  ArrayValue[15]:=trim(CmbBx_lb.Text);
  ArrayValue[16]:=trim(cmbx_fplb.text);
  ArrayValue[17]:=trim(CmbBx_basic.Text);
  ArrayValue[18]:=trim(cmb_basicProvince.Text);
  ArrayValue[19]:=trim(CmbBx_selfyp.Text);
  ArrayValue[20]:=trim(ComBox_jjyp.Text);
  ArrayValue[21]:=trim(com_skintry.Text);
  ArrayValue[22]:=trim(CmbBx_ifzy.Text);
  ArrayValue[23]:=trim(ComBox_jldw.Text);
  ArrayValue[24]:=trim(Edt_hsb.Text);
  ArrayValue[25]:=trim(ComBox_zxdw.Text);
  ArrayValue[26]:=trim(Combox_cfzxdw.Text);
  ArrayValue[27]:=trim(edt_dosage.text);
  ArrayValue[28]:=trim(ComBox_kind.Text);
  ArrayValue[29]:=trim(Edt_pfj.Text);
  ArrayValue[30]:=trim(Edt_ypjj.Text);
  ArrayValue[31]:=trim(Edt_lsj.Text);
  ArrayValue[32]:=trim(edt_mzlsj.text);
  ArrayValue[33]:=trim(edt_xsj.Text);
  ArrayValue[34]:=trim(edt_mzxsj.Text);
  ArrayValue[35]:=trim(edt_cfhsb.Text);
  ArrayValue[36]:=trim(Combox_yb.Text);
  ArrayValue[37]:=trim(edt_ybbm_country.Text);
  ArrayValue[38]:=trim(edt_ybmc_country.Text);
  ArrayValue[39]:=trim(edt_ybremark.Text);
  ArrayValue[40]:=trim(edt_bankplace.Text);
  ArrayValue[41]:=trim(edt_inplace.Text);
  ArrayValue[42]:=trim(edt_outplace.Text);
  ArrayValue[43]:=trim(cbb_groupbuy.Text);

  if Arraytype=1 then
    FCurrValue:=ArrayValue
  else
    FUpdateValue:=ArrayValue;
end;

procedure TFm_Medmodify.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  GetArrayValue(FcurrValue,1);
  GetCaptionValue();
  DateTimePicker1.Date:=now;
  DateTimePicker2.date:=now;
  DM.SetAdditionRateValue(ComboBox1);
  CmbBx_lbChange(sender);
  
  DBGrd_produce.Left:=116;
  DBGrd_produce.top:=239;
end;

function TFm_Medmodify.CompareArrayValue(CurrValue,UpdateValue: TArrayValue):string;
var icount:integer;
    Msgstr:string;
begin
   for icount:=1 to 44 do
   begin
     if CurrValue[icount]=UpdateValue[icount] then continue
     else begin
      Msgstr:=Msgstr+FCaptionValue[icount]+' 原值为【'+CurrValue[icount]+'】修改为【'+UpdateValue[icount]+'】'+#13;
     end;
   end;
   if trim(Msgstr)<>'' then
   begin
     result:=CurrValue[1]+':'+CurrValue[2]+' '+Msgstr;
     showmessage(result);
   end else    result:='';
end;

procedure TFm_Medmodify.GetCaptionValue;
begin
   FCaptionValue[1]:='药品编号';
   FCaptionValue[2]:='条码号';
   FCaptionValue[3]:='药品名称';
   FCaptionValue[4]:='别名';
   FCaptionValue[5]:='英文名';
   FCaptionValue[6]:='拼音码';
   FCaptionValue[7]:='流水码';
   FCaptionValue[8]:='规 格';
   FCaptionValue[9]:='生产厂家';
   FCaptionValue[10]:='批准文号';
   FCaptionValue[11]:='DDD值';
   FCaptionValue[12]:='剂型';
   FCaptionValue[13]:='药品性质';
   FCaptionValue[14]:='库存分类';
   FCaptionValue[15]:='药品分类';
   FCaptionValue[16]:='发票类别';
   FCaptionValue[17]:='国家基药';
   FCaptionValue[18]:='省级基药';
   FCaptionValue[19]:='自制药品';
   FCaptionValue[20]:='紧急药品';
   FCaptionValue[21]:='是否皮试';
   FCaptionValue[22]:='停用';
   FCaptionValue[23]:='包装单位';
   FCaptionValue[24]:='包装数量';
   FCaptionValue[25]:='最小单位';
   FCaptionValue[26]:='剂量单位';
   FCaptionValue[27]:='基本剂量';
   FCaptionValue[28]:='拆分类别';
   FCaptionValue[29]:='批发价';
   FCaptionValue[30]:='进价';
   FCaptionValue[31]:='住院零售价';
   FCaptionValue[32]:='门诊零售价';
   FCaptionValue[33]:='住院零售价(最小单位)';
   FCaptionValue[34]:='门诊零售价(最小单位)';
   FCaptionValue[35]:='处方比';
   FCaptionValue[36]:='医保类别';
   FCaptionValue[37]:='医保代码';
   FCaptionValue[38]:='医保名称';
   FCaptionValue[39]:='医保备注';
   FCaptionValue[40]:='药库位置';
   FCaptionValue[41]:='门诊位置';
   FCaptionValue[42]:='门诊位置';
   FCaptionValue[43]:='集采采购';
end;

procedure TFm_Medmodify.Button1Click(Sender: TObject);
begin
  DBGrd_UpdateLog.DataSource:= dm.SearchMedLog(DateTimePicker1.Date,DateTimePicker2.date);
end;

procedure TFm_Medmodify.edt_cjbmKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    DBGrd_produce.DataSource:=dm.listProduce(trim(edt_cjbm.Text));
    if DBGrd_produce.DataSource<>nil then
    begin
      DBGrd_produce.Visible:=true;
      DBGrd_produce.tag:=tedit(sender).Tag;
      DBGrd_produce.SetFocus;
    end;
  end;
end;

procedure TFm_Medmodify.Edt_ymKeyPress(Sender: TObject; var Key: Char);
begin
  If (key=#13) and  (trim(Edt_ym.text)<>'') Then
  begin
   Edt_pym.Text:=makespellcode(Edt_ym.text,2,255);
   Edt_bm.SetFocus ;
  end;
end;

procedure TFm_Medmodify.ComBox_jldwChange(Sender: TObject);
begin
  Lbl_dw.caption:='元/'+ComBox_jldw.Text;
  lbl2.caption:='元/'+ComBox_jldw.Text;
end;

procedure TFm_Medmodify.ComBox_zxdwChange(Sender: TObject);
begin
  Label27.Caption:=ComBox_zxdw.text;
end;

procedure TFm_Medmodify.Edt_hsbKeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13) and  (trim(Edt_hsb.Text)<>'') then
 begin
   ComBox_zxdw.SetFocus;
 end;
end;

function TFm_Medmodify.CheckHsbModfity(ypbh: string): boolean;
begin
  result:=false;
  with dm.q_comm do
  begin
    close;
    Sql.clear;
    sql.Add('select ypbh from xykr a,xykchu b where a.rkxh=b.rkxh and a.ypbh=:ypbh');
    parambyname('ypbh').AsString:=trim(ypbh);
    open;
    if  isempty then  result:=true;
  end;
end;

procedure TFm_Medmodify.Edt_bmKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then Edt_ywm.SetFocus ;
end;

procedure TFm_Medmodify.Edt_ywmKeyPress(Sender: TObject; var Key: Char);
begin
   If key=#13 Then Edt_pym.SetFocus 
end;

procedure TFm_Medmodify.Edt_pymKeyPress(Sender: TObject; var Key: Char);
begin
 If (key=#13)  and  (trim(Edt_pym.text)<>'') Then Edt_lsm.SetFocus ;
end;

procedure TFm_Medmodify.Edt_lsmKeyPress(Sender: TObject; var Key: Char);
begin
 If (key=#13)  Then Edt_gg.SetFocus ;
end;

procedure TFm_Medmodify.Edt_ggKeyPress(Sender: TObject; var Key: Char);
begin
  If (key=#13) and (trim(Edt_gg.text)<>'')  Then edt_pwh.SetFocus ;
end;

procedure TFm_Medmodify.Edt_pfjKeyPress(Sender: TObject; var Key: Char);
var aylsj:string;
begin
   if (key=#13)   and (trim(Edt_pfj.Text)<>'') then
  begin
   Edt_ypjj.Text:=Edt_pfj.Text;
   case CmbBx_lb.ItemIndex of
   0,2:aylsj:=formatcurr('#.##',(strtocurr(Edt_pfj.Text)*strtocurr(ComboBox1.Text)));
   1:aylsj:=formatcurr('#.####',(strtocurr(Edt_pfj.Text)*strtocurr(ComboBox1.Text)));
   end;
     Edt_lsj.Text:=aylsj;
     Edt_lsj.SetFocus;
  end;
end;

procedure TFm_Medmodify.CmbBx_lbChange(Sender: TObject);
begin
  case CmbBx_lb.ItemIndex of
  0:
  begin
    ComboBox1.ItemIndex:=1;
//    cmbx_fplb.ItemIndex:=0;
//    cmb_StoreClass.ItemIndex:=0;
  end;
  1:
  begin
    ComboBox1.ItemIndex:=2;
//    cmbx_fplb.ItemIndex:=1;
//    cmb_StoreClass.ItemIndex:=1;
   end;
  2:begin
    ComboBox1.ItemIndex:=1;
//    cmbx_fplb.ItemIndex:=2;
//    cmb_StoreClass.ItemIndex:=2;
  end;
  end;
end;

procedure TFm_Medmodify.Edt_lsjKeyPress(Sender: TObject; var Key: Char);
var aylsj:string;
begin
  if (key=#13) and  (trim(Edt_lsj.Text)<>'') then
  begin
    edt_mzlsj.Text:=Edt_lsj.Text;
    edt_mzlsj.SetFocus;
  try
     case CmbBx_lb.ItemIndex of
      0,2:
      aylsj:=formatcurr('#.##',(strtocurr(Edt_lsj.Text)/strtoint(Edt_hsb.Text)));
      1:
      aylsj:=formatcurr('#.####',(strtocurr(Edt_lsj.Text)/strtoint(Edt_hsb.Text)));
    end;
     edt_xsj.Text:= aylsj;
     //edt_mzxsj.Text:=aylsj;
    except
      exit;
    end;
  end;
end;

procedure TFm_Medmodify.edt_mzlsjKeyPress(Sender: TObject; var Key: Char);
var aylsj:string;
begin
  if (key=#13) and  (trim(Edt_lsj.Text)<>'') then
  begin
  try
     case CmbBx_lb.ItemIndex of
      0,2:
      aylsj:=formatcurr('#.##',(strtocurr(Edt_lsj.Text)/strtoint(Edt_hsb.Text)));
      1:
      aylsj:=formatcurr('#.####',(strtocurr(Edt_lsj.Text)/strtoint(Edt_hsb.Text)));
    end;
     edt_mzxsj.Text:=aylsj;
     BBtn_save.SetFocus;
    except
      exit;
    end;
  end;
end;

procedure TFm_Medmodify.ComBox_jxChange(Sender: TObject);
begin
  CmBx_jxdw.ItemIndex:=ComBox_jx.ItemIndex;
end;

procedure TFm_Medmodify.edt_pwhKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then edt_cjbm.SetFocus ;
end;

procedure TFm_Medmodify.BBtn_saveClick(Sender: TObject);
var  Medinfo:txyzb;
     aMsg:string;
begin
    try
      if  foldhsb<>trim(edt_hsb.text) then
      begin
         if CheckHsbModfity(Edt_ypbh.Text) then
         edt_xsj.Text:=currtostr(strtocurr(Edt_lsj.text) /strtoint(edt_hsb.text))
         else begin
           Edt_hsb.text:=foldhsb;
           application.MessageBox('不能修改核算比信息！','信息',32);
           exit;
         end;
      end;
    except
       exit;
    end;
    if strtoint(GetComboxValue(CmbBx_lb,':',true))=2 then
    begin
      if strtoint(GetComboxValue(ComBox_kind,':',true))<>98 then
      begin
        application.MessageBox('类别为草药拆分类别必须选择【98:可拆分】！！','信息',32);
        Exit;
      end;
    end ;


    if trim(ComBox_jldw.text)='' then
    begin
      application.MessageBox('包装单位不能为空！','信息',32);
      Exit;
    end ;

    if trim(ComBox_zxdw.text)='' then
    begin
      application.MessageBox('最小单位不能为空！','信息',32);
      Exit;
    end ;

    if trim(Combox_cfzxdw.text)='' then
    begin
      application.MessageBox('剂量单位不能为空！','信息',32);
      Exit;
    end ;


    Medinfo.ypbh:=Edt_ypbh.Text;
    Medinfo.ym:=Edt_ym.TEXT;
    Medinfo.pym:=edt_pym.Text;
    Medinfo.lsm:=edt_lsm.Text;
    Medinfo.zlbm:=strtoint(GetComboxValue(ComBox_ypzl,':',true));
    Medinfo.zlm:=GetComboxValue(ComBox_ypzl,':',false);
    try
      Medinfo.jxbm:=strtoint(GetComboxValue(ComBox_jx,':',true));
    except
      Application.MessageBox('剂型没有选择 ！','提示信息',64) ;
      Exit;
    end ;
    Medinfo.jx:=GetComboxValue(ComBox_jx,':',false);
    Medinfo.gg:=Edt_gg.Text;
    Medinfo.zxdw:=ComBox_zxdw.Text;
    Medinfo.hsb:=strtoint(Edt_hsb.text);
    Medinfo.jldw:=ComBox_jldw.text;
    Medinfo.pfj:=strtocurr(Edt_pfj.text);
    Medinfo.ypj:=strtocurr(Edt_ypjj.text);
    Medinfo.ylsj:=strtocurr(Edt_lsj.text);
    Medinfo.mzylsj:=strtocurr(Edt_mzlsj.text);
    Medinfo.bm:=Edt_bm.text;
    Medinfo.ywm:=Edt_ywm.text;
    Medinfo.lb:=strtoint(GetComboxValue(CmbBx_lb,':',true));
    Medinfo.lbm:=GetComboxValue(CmbBx_lb,':',false);
    try
      Medinfo.checklb:=strtoint(GetComboxValue(cmbx_fplb,':',true));
    except
       Application.MessageBox('41:发票类别没有选择 ！','提示信息',64) ;
       Exit;
    end ;
    Medinfo.checklbm:=GetComboxValue(cmbx_fplb,':',false);
    Medinfo.ddd:=strtoint(Edt_ddd.Text);
    if ComBox_jjyp.ItemIndex=0 then     Medinfo.jjyp:=true else Medinfo.jjyp:=false;
    Medinfo.cfhsb:=strtoint(edt_cfhsb.text);
    Medinfo.cfzxdw:=Combox_cfzxdw.text;
    if CmbBx_ifzy.ItemIndex=0 then Medinfo.ifzy:=true else Medinfo.ifzy:=false;
    if CmbBx_selfyp.ItemIndex=0 then Medinfo.selfyp:='1' else Medinfo.selfyp:='0';

    Medinfo.oper_date:=now();
    Medinfo.operbh:=strtoint(dm.Fopid);
    Medinfo.up_date:=now();
    Medinfo.upbh:=strtoint(dm.Fopid);
    Medinfo.skintry:=com_skintry.ItemIndex;
    Medinfo.atype:=strtoint(GetComboxValue(ComBox_kind,':',true));
    Medinfo.Inp_Place:=edt_inplace.text;
    Medinfo.Outp_Place:=edt_outplace.text;
    Medinfo.bank_place:=edt_bankplace.text;
    //Medinfo.xnhbm:=edt_xnhbm.text;
    //Medinfo.xnhkind:=CmbBx_xnhkind.Text;
    //Medinfo.xnhbl:=strtofloatdef(edt_xnhbl.text,0);
    Medinfo.gf:=strtointdef(GetComboxValue(Combox_yb,':',true),0);
    Medinfo.ybkind:=GetComboxValue(Combox_yb,':',false);
    //Medinfo.ybbm:=edt_ybbm.text;
    Medinfo.lbA:=edt_lba.text;
    Medinfo.lbB:=edt_lbb.text;
    Medinfo.produce:=edt_produce.text;
    try
      Medinfo.cjbm:=strtoint(edt_cjbm.text);
    except
      Application.MessageBox('生产厂家没有选择 ！','提示信息',64) ;
      Exit;
    end ;
    Medinfo.storetype:=trim(Cmbx_storetype.Text);
    Medinfo.dosage:=StrToCurrdef(edt_dosage.Text,0);
    Medinfo.barcode:=trim(edt_barcode.Text);
    Medinfo.pwh:=trim(edt_pwh.Text);
    Medinfo.ypkind:=strtoint(GetComboxValue(cmb_StoreClass,':',true));
    if CmbBx_basic.ItemIndex=0 then Medinfo.basic:=true else Medinfo.basic:=false;
    if cmb_basicProvince.ItemIndex=0 then Medinfo.basicProvince:=true else Medinfo.basicProvince:=false;
    if cbb_groupbuy.ItemIndex=0      then Medinfo.groupbuy:=true else Medinfo.groupbuy:=false;
    GetArrayValue(FUpdateValue,2);
    aMsg:=CompareArrayValue(FCurrValue,FUpdateValue);
    if trim(aMsg)<>'' then
    begin
      if application.messagebox('是否修改记录？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
      dm.AddMedLog(dm.Fopid,dm.FopidName,amsg);
      dm.UpdateMed(Medinfo,dm.Fopid);
      Fm_ypchange.btn_serach.Click();
    end else
    begin
      application.MessageBox('没有修改任何信息，不能保存记录！','信息',32);
    end;

end;

procedure TFm_Medmodify.ComBox_jldwKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key=#13) and  (trim(ComBox_jldw.Text)<>'')  then
  begin
   ComBox_zxdw.ItemIndex:=ComBox_jldw.ItemIndex;
   Edt_hsb.SetFocus;
  end;
end;

procedure TFm_Medmodify.ComBox_zxdwKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key=#13) and  (trim(ComBox_zxdw.Text)<>'')  then
  begin
    Combox_cfzxdw.SetFocus;
  end;
end;

procedure TFm_Medmodify.Combox_cfzxdwKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key=#13) and (trim(Combox_cfzxdw.text)<>'') then
  begin
    //Lbl_cfzxdw1.Caption:=Combox_cfzxdw.Text;
    edt_dosage.SetFocus;
  end;
end;

procedure TFm_Medmodify.edt_dosageKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (trim(edt_dosage.text)<>'') then
  begin
    ComBox_kind.SetFocus;
  end;
end;

procedure TFm_Medmodify.ComBox_kindKeyPress(Sender: TObject;
  var Key: Char);
begin
 If key=#13 Then Edt_pfj.SetFocus;
end;

procedure TFm_Medmodify.Edt_ypjjKeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13)  and (trim(Edt_ypjj.Text)<>'')  then Edt_lsj.SetFocus;
end;

procedure TFm_Medmodify.cmb_StoreClassChange(Sender: TObject);
begin
  case strtoint(dm.GetComboxValue(cmb_StoreClass,':',true)) of
  1,6:
  begin
    CmbBx_lb.ItemIndex:=0;
    cmbx_fplb.ItemIndex:=0;
      //cbb_AddRate.ItemIndex:=1;
  end;
  2,7:
  begin
    CmbBx_lb.ItemIndex:=1;
    cmbx_fplb.ItemIndex:=1;
    //cbb_AddRate.ItemIndex:=2;
  end;
  3:
  begin
    CmbBx_lb.ItemIndex:=2;
    cmbx_fplb.ItemIndex:=2;
    //cbb_AddRate.ItemIndex:=1;
  end;
  4:
  begin
    CmbBx_lb.ItemIndex:=0;
    cmbx_fplb.ItemIndex:=17;
    //cbb_AddRate.ItemIndex:=1;
  end;
  5:
  begin
    CmbBx_lb.ItemIndex:=0;
      //wk 2023.09.18凯东社区默认疫苗费
      if dm.SysInfo.HospitalYBCode='H41030300339'    then
        cmbx_fplb.ItemIndex:=GetComboxIndex(cmbx_fplb,'疫苗费')
      else
        cmbx_fplb.ItemIndex:=0;
      //cbb_AddRate.ItemIndex:=1;
  end;
  end;
end;

end.
