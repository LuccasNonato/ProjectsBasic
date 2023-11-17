unit Valores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
var
  A, B, C, D: Integer;
begin
  // Solicita��o de entrada de dados
  A := StrToInt(InputBox('Informa��o', 'Informe o valor de A:', ''));
  B := StrToInt(InputBox('Informa��o', 'Informe o valor de B:', ''));
  C := StrToInt(InputBox('Informa��o', 'Informe o valor de C:', ''));
  D := StrToInt(InputBox('Informa��o', 'Informe o valor de D:', ''));

  // Verifica��o das condi��es
  if (B > C) and (D > A) and ((C + D) > (A + B)) and (C > 0) and (D > 0) and (A mod 2 = 0) then
    ShowMessage('Valores aceitos')
  else
    ShowMessage('Valores n�o aceitos');
end;

end.
