unit uFrmResultados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDadosPessoa;

type
  TFrmResultados = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LblAltura: TLabel;
    LblPeso: TLabel;
    LblSexo: TLabel;
    LblIMC: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResultados: TFrmResultados;

implementation

{$R *.dfm}

procedure TFrmResultados.FormShow(Sender: TObject);
begin
  LblAltura.Caption := FloatToStr(P_Dados_Pessoa.Altura);
  LblPeso.Caption   := FloatToStr(P_Dados_Pessoa.Peso);
  LblSexo.Caption   := P_Dados_Pessoa.Sexo;
  LblIMC.Caption    := P_Dados_Pessoa.IMC;
  if P_Dados_Pessoa.IMC = 'Marginalmente acima do peso.' then
    FrmResultados.Width := 595
  else
    if P_Dados_Pessoa.IMC = 'Acima do peso ideal.' then
      FrmResultados.Width := 490
    else
      if P_Dados_Pessoa.IMC = 'Obeso.' then
        begin
          Label1.Left:=120;
          Label2.Left:=120;
          Label3.Left:=120;
          Label4.Left:=120;
          LblAltura.Left:=280;
          LblPeso.Left:=280;
          LblSexo.Left:=280;
          LblIMC.Left:=280;
        end
      else
        begin
          Label1.Left:=56;
          Label2.Left:=56;
          Label3.Left:=56;
          Label4.Left:=56;
          LblAltura.Left:=216;
          LblPeso.Left:=216;
          LblSexo.Left:=216;
          LblIMC.Left:=216;
        end;
end;

end.
