unit solucaoimpossivel;

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
  valor, quantidadeNotas, nota: Integer;
  mensagem: string;
  a, b , c: Integer;
  x: Currency;
begin
  A := StrToInt(InputBox('Informacao', 'Informe o valor de A:', ''));
  B := StrToInt(InputBox('Informacao', 'Informe o valor de B:', ''));
  C := StrToInt(InputBox('Informacao', 'Informe o valor de C:', ''));

  if (A = 0) and (B = 0) and (C <> 1) then
    ShowMessage('Solucao impossivel')
  else
  begin
    if A + B <> 0 then
    begin
      X := (1 - C) / (A + B)
    end
    else
    begin
      ShowMessage('Divisao por zero. A equacao nao possui solucao unica.');
    end;

    ShowMessageFmt('O valor de X e: %.2f', [X]);
  end;

end;

end.
