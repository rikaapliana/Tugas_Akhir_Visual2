unit Uortu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, frxClass,
  frxDBSet;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl4: TLabel;
    dgdbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    Cb1: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    intgrfldzqry1id_ortu: TIntegerField;
    intgrfldzqry1nik: TIntegerField;
    strngfldzqry1nama: TStringField;
    strngfldzqry1pendidikan: TStringField;
    strngfldzqry1pekerjaan: TStringField;
    strngfldzqry1telp: TStringField;
    strngfldzqry1alamat: TStringField;
    strngfldzqry1jenis_kelamin: TStringField;
    strngfldzqry1agama: TStringField;
    strngfldzqry1status: TStringField;
    frxotru: TfrxReport;
    frxdbortu: TfrxDBDataset;
    lbl8: TLabel;
    lbl9: TLabel;
    Cb2: TComboBox;
    edt3: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure enable;
    procedure posisiawal;
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dgdbgrd1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id:string;

implementation

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm7.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
end;

procedure TForm7.enable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
Cb1.Enabled:= True;
edt7.Enabled:= True;
Cb2.Enabled:= True;
end;

procedure TForm7.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;

edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
Cb1.Enabled:= False;
edt7.Enabled:= False;
Cb2.Enabled:= False;

end;

procedure TForm7.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
 if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tbl_ortu where id_ortu="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_ortu');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
 if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') or (edt6.Text='') or (edt6.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (edt1.Text= zqry1.FieldList[1].AsString) and (edt2.Text = zqry1.FieldList[2].AsString) and (edt3.Text = zqry1.FieldList[3].AsString) and (cb2.Text = zqry1.FieldList[8].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  id:=dgdbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tbl_ortu set nik="'+edt1.Text+'",nama="'+edt2.Text+'",pendidikan="'+edt3.Text+'",pekerjaan="'+edt4.Text+'",telp="'+edt5.Text+'",alamat="'+edt6.Text+'",jk="'+Cb1.Text+'",agama="'+edt7.Text+'",status="'+Cb2.Text+'" where id_ortu ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_ortu');
  zqry1.Open;
  posisiawal;
  end;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') or (edt6.Text='') or (edt6.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into tbl_ortu values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+Cb1.Text+'","'+edt7.Text+'","'+Cb2.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_ortu');
  zqry1.Open;
  ShowMessage('DATA BARHASIL DISIMPAN!');
  posisiawal;
  end;
end;

procedure TForm7.dgdbgrd1DblClick(Sender: TObject);
begin
enable;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
edt5.Text:= zqry1.Fields[5].AsString;
edt6.Text:= zqry1.Fields[6].AsString;
cb1.Text:= zqry1.Fields[7].AsString;
edt7.Text:= zqry1.Fields[8].AsString;
Cb2.Text:= zqry1.Fields[9].AsString;
end;

end.
