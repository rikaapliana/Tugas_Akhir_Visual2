unit Ukelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    dgdbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt1: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    Cb1: TComboBox;
    intgrfldzqry1id_kelas: TIntegerField;
    strngfldzqry1nama: TStringField;
    strngfldzqry1jurusan: TStringField;
    frxkelas: TfrxReport;
    frxdbkelas: TfrxDBDataset;
    procedure posisiawal;
    procedure bersih;
    procedure enable;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dgdbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id:string;

implementation

{$R *.dfm}

procedure TForm2.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;

edt1.Enabled:= False;
Cb1.Enabled:= False;
end;

procedure TForm2.bersih;
begin
edt1.Clear;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  if (edt1.Text='')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end
  else
  begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into tbl_kelas values(null,"'+edt1.Text+'","'+Cb1.Text+'")');
  zqry1.ExecSQL;

  zqry1.Close;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_kelas');
  zqry1.Open;
  ShowMessage('DATA BARHASIL DISIMPAN!');
  posisiawal;


end;


end;

procedure TForm2.btn1Click(Sender: TObject);
begin
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from tbl_kelas where id_kelas="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end

end;

procedure TForm2.btn3Click(Sender: TObject);
begin
if (edt1.Text='')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (edt1.Text= zqry1.FieldList[1].AsString) and (Cb1.Text = zqry1.FieldList[2].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  id:=dgdbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tbl_kelas set nama="'+edt1.Text+'",jurusan="'+Cb1.Text+'" where id_kelas ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_kelas');
  zqry1.Open;
  posisiawal;
  end;

end;

procedure TForm2.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.dgdbgrd1CellClick(Column: TColumn);
begin
enable;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

edt1.Text:= zqry1.Fields[1].AsString;
Cb1.Text:= zqry1.Fields[2].AsString;
end;

procedure TForm2.enable;
begin
edt1.Enabled:= True;
Cb1.Enabled:= True;
end;

end.
