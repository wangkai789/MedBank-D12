unit cjcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons;

type
  Tfm_cjcx = class(TForm)
    DBGrid1: TDBGrid;
    btn_exit: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_cjcx: Tfm_cjcx;

implementation

uses data;

{$R *.DFM}

procedure Tfm_cjcx.FormShow(Sender: TObject);
begin
   with dm.q_public do
   begin
   close;
   sql.clear;
   case self.tag of
   1:   sql.add('select ���ұ���=cjbm,��������=cm,��������=xz,ƴ����=pym from sccj');
   2:   sql.add('select ��λ����=inc_code,������λ=inc_name,ƴ����=inc_call from ghdw');
   end;
   open;
   end;
end;

procedure Tfm_cjcx.btn_exitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_cjcx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.