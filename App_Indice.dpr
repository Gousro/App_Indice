program App_Indice;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmRequisitos in 'uFrmRequisitos.pas' {FrmRequisitos},
  uFrmResultados in 'uFrmResultados.pas' {FrmResultados},
  uDadosPessoa in 'uDadosPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmRequisitos, FrmRequisitos);
  Application.CreateForm(TFrmResultados, FrmResultados);
  Application.Run;
end.
