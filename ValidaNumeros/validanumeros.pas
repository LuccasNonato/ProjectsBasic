unit validanumeros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math;

type
  TForm2 = class(TForm)
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnCalcularClick(Sender: TObject);
var
  j, N, i, somaDivisores, raiz: Integer;

begin
  N := StrToInt(InputBox('Informacao', 'Informe um numero inteiro positivo N:', ''));


  for i := 1 to N do
  begin

    somaDivisores := 0;
    for j := 1 to i div 2 do
    begin
      if i mod j = 0 then
        somaDivisores := somaDivisores + j;
    end;

    raiz := Trunc(Sqrt(i));

    if (somaDivisores = i) then
      ShowMessageFmt('%d e um numero perfeito.', [i]);

    if (i mod 3 = 0) then
      ShowMessageFmt('%d e multiplo de 3.', [i]);

    if (i mod 5 = 0) then
      ShowMessageFmt('%d e multiplo de 5.', [i]);

    if (raiz * raiz = i) then
      ShowMessageFmt('%d e um numero com raiz quadrada inteira.', [i]);
  end;
end;

end.
