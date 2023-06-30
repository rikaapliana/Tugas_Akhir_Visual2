program Project1;

uses
  Forms,
  Umainmenu in 'Umainmenu.pas' {Form1},
  Ukelas in 'Ukelas.pas' {Form2},
  Usiswa in 'Usiswa.pas' {Form3},
  Uwalikelas in 'Uwalikelas.pas' {Form4},
  Usemester in 'Usemester.pas' {Form5},
  Upoin in 'Upoin.pas' {Form6},
  Uortu in 'Uortu.pas' {Form7},
  Uhubungan in 'Uhubungan.pas' {Form8},
  Uuser in 'Uuser.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
