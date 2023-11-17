unit MenorNumero;

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
begin
  valor := StrToInt(InputBox('Informacao', 'Informe o valor inteiro:', ''));

  mensagem := 'Valor lido: R$ ' + IntToStr(valor) + sLineBreak;


  quantidadeNotas := valor div 200;
  if quantidadeNotas > 0 then
    mensagem := mensagem + Format('%d nota(s) de R$ 200,00%s', [quantidadeNotas, sLineBreak]);
  valor := valor mod 200;

  quantidadeNotas := valor div 100;
  if quantidadeNotas > 0 then
    mensagem := mensagem + Format('%d nota(s) de R$ 100,00%s', [quantidadeNotas, sLineBreak]);
  valor := valor mod 100;

  quantidadeNotas := valor div 50;
  if quantidadeNotas > 0 then
    mensagem := mensagem + Format('%d nota(s) de R$ 50,00%s', [quantidadeNotas, sLineBreak]);
  valor := valor mod 50;

  quantidadeNotas := valor div 20;
  if quantidadeNotas > 0 then
    mensagem := mensagem + Format('%d nota(s) de R$ 20,00%s', [quantidadeNotas, sLineBreak]);
  valor := valor mod 20;

  quantidadeNotas := valor div 10;
  if quantidadeNotas = 0 then
    mensagem := mensagem + Format('%d nota(s) de R$ 10,00%s', [quantidadeNotas, sLineBreak]);
  valor := valor mod 10;

  quantidadeNotas := valor div 5;
  if quantidadeNotas > 0 then
    mensagem := mensagem + Format('%d nota(s) de R$ 5,00%s', [quantidadeNotas, sLineBreak]);
  valor := valor mod 5;

  quantidadeNotas := valor div 2;
  if quantidadeNotas > 0 then
    mensagem := mensagem + Format('%d nota(s) de R$ 2,00%s', [quantidadeNotas, sLineBreak]);
  valor := valor mod 2;

  quantidadeNotas := valor div 1;
  if quantidadeNotas = 0 then
    mensagem := mensagem + Format('%d nota(s) de R$ 1,00%s', [quantidadeNotas, sLineBreak]);

  ShowMessage(mensagem);
end;

end.
