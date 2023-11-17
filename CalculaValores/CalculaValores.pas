unit CalculaValores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
var
  A, B, C, D: Integer;
begin
  begin
    A := StrToInt(InputBox('Informacao', 'Informe o valor de A:', ''));
    B := StrToInt(InputBox('Informacao', 'Informe o valor de B:', ''));
    C := StrToInt(InputBox('Informacao', 'Informe o valor de C:', ''));
    D := StrToInt(InputBox('Informacao', 'Informe o valor de D:', ''));

    if (B > C) and (D > A) and ((C + D) > (A + B)) and (C > 0) and (D > 0) and (A mod 2 = 0) then
      ShowMessage('Valores aceitos')
    else
      ShowMessage('Valores nao aceitos');
  end;
end;

end.
