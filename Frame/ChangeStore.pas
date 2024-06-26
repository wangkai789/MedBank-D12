unit ChangeStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCardView, cxGridTableView,
  Grids, DBGrids, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, StdCtrls, ComCtrls,
  Buttons, ExtCtrls, MemDS, DBAccess, Uni, BaseFrame;

type
  TFrame_ChangeStore = class(TFrame)
    Frame_base1: TFrame_base;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses InterfaceMedStore, data;

{$R *.dfm}

procedure TFrame_ChangeStore.Frame_base1btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
     ayfbm:integer;
begin
  MYMedStore:=TMedStore.Create;
  ayfbm:=strtoint(dm.GetComboxValue(Frame_base1.cbb_yfbm,':',true));
  with Frame_base1 do
  begin
    Frame_base1.FTemplateName:='�̵�仯��';
    MYMedStore.SearchStoreChange(Q_Result,ayfbm,DT_from.date,DT_to.Date,rg1.itemindex,edt_SearchCondition.Text);
  end;
end;

end.
