unit CalculoSalario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit;

type
  TForm2 = class(TForm)
    btncalcular: TButton;
    procedure btncalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
  var
   horasPorDia, precoHora, diasTrabalhados, salarioBruto, salarioLiquido, desconto: real;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btncalcularClick(Sender: TObject);
begin
  horasPorDia := StrToFloat(InputBox('Informacao', 'Informe a quantidade de horas trabalhadas por dia:', ''));
  precoHora := StrToFloat(InputBox('Informacao', 'Informe o preco da hora trabalhada:', ''));
  diasTrabalhados := StrToFloat(InputBox('Informacao', 'Informe a quantidade de dias trabalhados no mes:', ''));

  salarioBruto := horasPorDia * precoHora * diasTrabalhados;

  desconto := 0.03 * salarioBruto;

  salarioLiquido := salarioBruto - desconto;

  ShowMessage('Salário Bruto: ' + FormatFloat('0.00', salarioBruto) + sLineBreak +
              'Desconto (3%): ' + FormatFloat('0.00', desconto) + sLineBreak +
              'Salário Líquido: ' + FormatFloat('0.00', salarioLiquido));
end;

end.
