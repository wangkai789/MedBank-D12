unit qxwh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ComCtrls, ExtCtrls, StdCtrls, Buttons, CheckLst, Menus,
  System.ImageList;

type
  Tfrm_wh = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Lsbx_type: TListBox;
    GroupBox2: TGroupBox;
    RG_power: TRadioGroup;
    ed_input: TEdit;
    Lsbx_user: TListBox;
    Lsbx_bh: TListBox;
    SpeedButton4: TSpeedButton;
    ComboBox2: TComboBox;
    Image1: TImage;
    ImageList1: TImageList;
    ListView1: TListView;
    ImageList2: TImageList;
    clsbx_add: TCheckListBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_inputKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Lsbx_typeClick(Sender: TObject);
    procedure Lsbx_userClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    partId:integer;
    Modify_flag:integer;
    listItem:tstringlist;
    procedure AddPowerType(PartId:integer);
    procedure AddPowerTypeDB(PartId:integer);
    procedure AddMenuItem(PartId:integer;PowerType:integer=0);
    procedure AddMember(PartId:integer);
    procedure MovePrivilege(seed:integer);
    procedure ListPowerType(PartId:integer);
    procedure UpdatePowerType(PartId:integer;PowerType:integer=0);
    procedure DeletePowerType(PartId:integer);
    procedure Initializtion(Id:integer);
    procedure AddPowerList;

  end;
  const MODI_UPDATE_SELECT=3;
        MODI_UPDATE_USER_POWER=4;
var
  frm_wh: Tfrm_wh;

implementation

uses data, main;

{$R *.DFM}

procedure Tfrm_wh.MovePrivilege(seed:integer);
begin
//移动优先级别
  if seed >0 then
    try
      Lsbx_type.Items.Exchange(Lsbx_type.Itemindex,Lsbx_type.Itemindex-1)
    except
      Lsbx_type.ItemIndex:=0;
    end
  else
    try
      Lsbx_type.Items.Exchange(Lsbx_type.Itemindex,Lsbx_type.Itemindex+1)
    except
      Lsbx_type.ItemIndex:=Lsbx_type.Items.Count;
    end
end;

procedure Tfrm_wh.AddMember(PartId: integer);
var i:integer;
begin
//
  Lsbx_bh.Clear;
  Lsbx_user.Clear;
  with dm.Q_public do
   begin
     close;
     sql.Clear;
     //sql.add('  select a.bh,b.xm  from mmb a,zgzb b where a.bh=b.bh '
     //      +' and a.sq=:partid');
     sql.add('select distinct a.bh,b.xm from syscustomsq a,zgzb b');
     sql.add('where a.bh=b.bh and a.itemid=:partid and a.itemid1<>0');
     parambyname('PartId').asinteger:=PartId;
     open;
     if recordcount > 0 then
         for i:=0 to recordcount-1 do
           begin
             Lsbx_user.Items.Add(fieldbyname('xm').asstring);
             Lsbx_bh.Items.Add(fieldbyname('bh').asstring);
             next;
           end;
   end;
end;

procedure Tfrm_wh.AddMenuItem(PartId: integer;PowerType:integer=0);
var i,icount:integer;
    ListItems: TListItem;
    NewColumn: TListColumn;
begin
//
clsbx_add.Clear;
listItem.Clear;
listview1.Items.Clear;
if PowerType=0 then
else
   begin
     with dm.Q_public do
       begin
         close;
         sql.Clear;
         sql.add('select ItemID,itemname,[select] from '
               +' permission where partid=:partid and Powerlevel=:Powerlevel');
         parambyname('PartId').asinteger:=PartId;
         parambyname('Powerlevel').asinteger:=PowerType;
         open;
         if recordcount > 0 then
             for i:=0 to recordcount-1 do
             begin
               ListItems:=listview1.Items.Add;
               listitems.Caption:=fields[0].AsString;
               listitems.Checked:=fields[2].asboolean;
               begin
               for  icount:=1 to fields.Count-1 do
               listitems.SubItems.Add(fields[icount].asstring);
               next;
             end;
            end;
       end;
   end;
end;

procedure Tfrm_wh.AddPowerType(PartId: integer);
var i:integer;
begin
  if PartId=0 then
    begin
      if ed_input.Text ='' then exit;
      if Lsbx_type.Items.IndexOf(ed_input.Text)>-1 then
        begin
          showmessage('权限名称不能重复');
          ed_input.clear ;
          exit;
        end;
      Lsbx_type.Items.Add(ed_input.Text);
      ed_input.SelectAll ;
    end
  else
     begin
       Lsbx_type.Clear;
       with dm.Q_public do
         begin
           close;
           sql.Clear;
           sql.Add('select PartId,Lvel,Pnsmr from powerl '
                 +' where PartId=:PartId order by Lvel');
           parambyname('PartId').asinteger:=PartId;
           open;
           if recordcount > 0 then
             for i:=0 to recordcount-1 do
               begin
                 Lsbx_type.Items.Add(fieldbyname('Pnsmr').asstring);
                 next;
               end
         end;
     end;
end;

procedure Tfrm_wh.SpeedButton5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_wh.FormShow(Sender: TObject);
begin
 AddPowerList;
 Initializtion(strtoint(ComboBox2.Items[ComboBox1.ItemIndex]));
end;

procedure Tfrm_wh.ed_inputKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      AddPowerType(0);
      AddPowerTypeDB(PartId);
    end;
end;

procedure Tfrm_wh.SpeedButton1Click(Sender: TObject);
begin
MovePrivilege(1);
end;

procedure Tfrm_wh.SpeedButton2Click(Sender: TObject);
begin
MovePrivilege(-1);
end;

procedure Tfrm_wh.ListPowerType(PartId: integer);
var i:integer;
begin
 RG_power.Items.Clear;
 with dm.Q_public do
         begin
           close;
           sql.Clear;
           sql.Add('select PartId,Lvel,Pnsmr from powerl '
                 +' where PartId=:PartId order by Lvel');
           parambyname('PartId').asinteger:=PartId;
           open;
           if recordcount > 0 then
             for i:=0 to recordcount-1 do
               begin
                 RG_power.Items.Add(fieldbyname('Pnsmr').asstring);
                 next;
               end;
         end;
end;

procedure Tfrm_wh.UpdatePowerType(PartId, PowerType: integer);
var i:integer;
begin
  try

     for i:=0 to ListView1.Items.Count -1 do
      begin
         dm.Q_public.Close;
         dm.Q_public.sql.clear;
         if ListView1.Items[i].Checked then

         dm.Q_public.sql.Add(' update permission set [select]=1 where partid=:partid '
                        +' and powerlevel=:powerlevel and itemid=:itemid')
         else
          dm.Q_public.sql.Add(' update permission set [select]=0 where partid=:partid '
                        +' and powerlevel=:powerlevel and itemid=:itemid');
         dm.Q_public.parambyname('PartId').asinteger:=PartId;
         dm.Q_public.parambyname('powerlevel').asinteger:=PowerType;
         dm.Q_public.parambyname('itemid').asinteger:=strtoint(ListView1.Items[i].Caption);
         dm.Q_public.execsql;

      end;
      showmessage('权限分类设置成功!');
  except
    showmessage('权限分类设置失败!');
  end;

end;

procedure Tfrm_wh.AddPowerTypeDB(PartId: integer);
begin
//
with dm.Q_public do
  begin
    close;
    sql.clear;
    sql.add('insert powerl(PartId ,Lvel,Pnsmr) '
           +' values(:PartId,:Lvel,:Pnsmr)');
    sql.add('insert permission(PartID,Powerlevel,ItemID,ItemName) '
           +' select distinct(PartID),Powerlevel=:Lvel,ItemID,ItemName '
           +' from permission where partid=:partid');
    parambyname('PartId').asinteger:=PartId;
    parambyname('Lvel').asinteger:=Lsbx_type.Items.count+5;
    parambyname('Pnsmr').asstring:=Lsbx_type.Items[Lsbx_type.Items.Count-1];
    try
      execsql;
    except
      showmessage('发生错误!');
      exit;
    end;
  end;

end;

procedure Tfrm_wh.SpeedButton3Click(Sender: TObject);
begin
  case Modify_flag of
    MODI_UPDATE_SELECT:
      begin
        UpdatePowerType(PartId,Lsbx_type.ItemIndex+6);
      end;
    MODI_UPDATE_USER_POWER:
       begin
        dm.Q_public.Close;
       dm.Q_public.sql.clear;
       dm.Q_public.sql.Add(' update mmb set Powerlevel=:Powerlevel where bh=:bh');
       dm.Q_public.parambyname('bh').asinteger:=strtoint(Lsbx_bh.Items[Lsbx_user.ItemIndex]) ;
       dm.Q_public.parambyname('powerlevel').asinteger:=RG_power.ItemIndex+6;
       try
         dm.Q_public.execsql;
         showmessage('人员权限分配成功!');
       except
         showmessage('人员权限分配失败!');
       end;
       end;
  end;
end;

procedure Tfrm_wh.Lsbx_typeClick(Sender: TObject);
begin
  AddMenuItem(PartId,Lsbx_type.ItemIndex+6);
  Modify_flag:= MODI_UPDATE_SELECT;
end;

procedure Tfrm_wh.Lsbx_userClick(Sender: TObject);
begin
 Modify_flag:= MODI_UPDATE_USER_POWER;
  with dm.Q_public do
    begin
      close;
      sql.Clear ;
      sql.add(' select powerlevel from mmb where bh=:bh ');
      parambyname('bh').asinteger:=strtoint(Lsbx_bh.Items[Lsbx_user.ItemIndex]);
      open;
      try
        RG_power.ItemIndex:=fieldbyname('powerlevel').asinteger-6;
      except
        exit;
      end;
    end;
end;

procedure Tfrm_wh.DeletePowerType(PartId: integer);
begin
///
with dm.Q_public do
  begin
    close;
    sql.clear;
    sql.add('delete powerl '
           +' where PartId=:PartId and Lvel=:Lvel ');
    sql.add(' delete '
           +' from permission where partid=:partid and Powerlevel=:Lvel');
    parambyname('PartId').asinteger:=PartId;
    parambyname('Lvel').asinteger:=Lsbx_type.Items.count+5;
    //parambyname('Pnsmr').asstring:=Lsbx_type.Items[Lsbx_type.Items.Count-1];
    try
      execsql;
      Lsbx_type.Items.Delete(Lsbx_type.Items.Count-1);
    except
      showmessage('发生错误!');
      exit;
    end;
end;
end;
procedure Tfrm_wh.SpeedButton4Click(Sender: TObject);
begin
DeletePowerType(PartId);
AddMenuItem(PartId,6);
end;

procedure Tfrm_wh.TabSheet2Show(Sender: TObject);
begin
ListPowerType(PartId);
end;

procedure Tfrm_wh.Initializtion(Id:integer);
begin
//
  partId:=Id;
  clsbx_add.Clear;
  RG_power.Items.Clear;
  Lsbx_user.Clear;
  Lsbx_bh.Clear;
  AddPowerType(PartId);
  AddMember(PartId);
  ListPowerType(PartId);
  listItem:=tstringlist.Create;
end;

procedure Tfrm_wh.AddPowerList;
begin
//
  with dm.q_comm do
    begin
      close;
      Sql.clear;
      SQL.add('select  sq,sqmc from jg_sq where sq=:sq ');
      parambyname('sq').asinteger:=fm_main.tag;
      open;
      combobox1.Clear;
      while not Eof do
        begin
          ComboBox1.Items.add(fieldbyname('sqmc').asstring);
          ComboBox2.Items.add(fieldbyname('sq').asstring );
          Next;
        end;
    end;
   ComboBox1.ItemIndex :=0;
   ComboBox2.ItemIndex :=0;
end;

procedure Tfrm_wh.ComboBox1Change(Sender: TObject);
begin
//Initializtion(strtoint(ComboBox2.Items[ComboBox1.ItemIndex]));
end;

procedure Tfrm_wh.N2Click(Sender: TObject);
var icount:integer;
begin
    for icount:=0 to   listview1.Items.Count-1 do
    begin
      listview1.Items[icount].Checked:=true;
    end;
end;

procedure Tfrm_wh.N3Click(Sender: TObject);
var icount:integer;
begin
    for icount:=0 to   listview1.Items.Count-1 do
    begin
      listview1.Items[icount].Checked:=false;
    end;
end;

end.
