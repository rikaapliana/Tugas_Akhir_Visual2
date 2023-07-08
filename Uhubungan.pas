unit Uhubungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet, StdCtrls, Grids,
  DBGrids;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    l1: TLabel;
    dgdbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt1: TEdit;
    Cb1: TComboBox;
    Cb2: TComboBox;
    Cb3: TComboBox;
    Cb4: TComboBox;
    frxhubungan: TfrxReport;
    frxdbhubungan: TfrxDBDataset;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    intgrfldzqry1id_hubungan: TIntegerField;
    intgrfldzqry1siswa_id: TIntegerField;
    intgrfldzqry1ortu_id: TIntegerField;
    strngfldzqry1status_hub_anak: TStringField;
    strngfldzqry1keterangan: TStringField;
    strngfldzqry1status_ortu: TStringField;
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure enable;
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dgdbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id:string;

implementation

{$R *.dfm}

procedure TForm8.bersih;
begin
edt1.Clear;
end;

procedure TForm8.enable;
begin
Cb1.Enabled:= True;
Cb2.Enabled:= True;
Cb3.Enabled:= True;
edt1.Enabled:= True;
Cb4.Enabled:= True;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
  Cb1.Items.Clear;
  Cb2.Items.Clear;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT siswa_id FROM tbl_hubungan');
  zqry1.Open;

  while not zqry1.Eof do
  begin
    Cb1.Items.Add(zqry1.FieldByName('siswa_id').AsString);
    zqry1.Next;
  end;

  zqry1.Close;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT ortu_id FROM tbl_hubungan');
  zqry1.Open;

  while not zqry1.Eof do
  begin
    Cb2.Items.Add(zqry1.FieldByName('ortu_id').AsString);
    zqry1.Next;
  end;

  dgdbgrd1.DataSource := ds1;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM tbl_hubungan');
  zqry1.Open;



end;

procedure TForm8.posisiawal;
begin
bersih;
Cb1.Enabled:= False;
Cb2.Enabled:= False;
Cb3.Enabled:= False;
edt1.Enabled:= False;
Cb4.Enabled:= False;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if (edt1.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into tbl_hubungan values(null,"'+Cb1.Text+'","'+Cb2.Text+'","'+Cb3.Text+'","'+edt1.Text+'","'+Cb4.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_hubungan');
  zqry1.Open;
  ShowMessage('DATA BARHASIL DISIMPAN!');
  posisiawal;

  end;

end;

procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tbl_hubungan where id_wali_kelas="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_hubungan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
if (edt1.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Cb1.Text= zqry1.FieldList[1].AsString) and (Cb2.Text = zqry1.FieldList[2].AsString) and (Cb3.Text = zqry1.FieldList[3].AsString) and (Cb4.Text = zqry1.FieldList[5].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  id:=dgdbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tbl_hubungan set siswa_id="'+Cb1.Text+'",ortu_id="'+Cb2.Text+'",status_hub_anak="'+Cb3.Text+'",keterangan="'+edt1.Text+'",status_ortu="'+Cb4.Text+'" where id_hubungan="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_hubungan');
  zqry1.Open;
  posisiawal;
  end;
end;

procedure TForm8.dgdbgrd1CellClick(Column: TColumn);
begin
enable;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:= zqry1.Fields[0].AsString;
Cb1.Text:= zqry1.Fields[1].AsString;
Cb2.Text:= zqry1.Fields[2].AsString;
Cb3.Text:= zqry1.Fields[3].AsString;
edt1.Text:= zqry1.Fields[4].AsString;
Cb4.Text:= zqry1.Fields[5].AsString;
end;

end.
