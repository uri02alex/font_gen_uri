program Font_gen_uri;

uses
  Vcl.Forms,
  Mainform in 'Mainform.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
