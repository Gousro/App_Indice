unit uDadosPessoa;

interface

uses
  System.SysUtils;

  Type
    RDados_Pessoa = Record
      Altura : Double;
      Peso : Double;
      Sexo : String;
      IMC : String;
    End;

    function CalcularIMC(p_Peso, p_Altura : Double; p_Sexo : String) : String;

    Var
      P_Dados_Pessoa : RDados_Pessoa;

implementation

function CalcularIMC(p_Peso, p_Altura : Double; p_Sexo : String) : String;

var
  l_IMC : Double;
  l_StrIMC : String;
begin
  if p_Sexo = '' then
    raise Exception.Create('Obrigat�rio informar o sexo!');

  try
    l_IMC := p_Peso/(p_Altura*p_Altura);
    if p_Sexo = 'F' then
    begin
      if (l_IMC < 19.1) then
        l_StrIMC := 'Abaixo do peso.'
      else
        if (l_IMC >= 19.1) and (l_IMC <=25.8) then
          l_StrIMC := 'No peso normal.'
        else
          if (l_IMC > 25.8) and (l_IMC <= 27.3) then
            l_StrIMC := 'Marginalmente acima do peso.'
          else
            if (l_IMC > 27.3) and (l_IMC <= 32.3)then
              l_StrIMC := 'Acima do peso ideal.'
            else
              if (l_IMC > 32.3) then
                l_StrIMC := 'Obeso.'
    end
    else
    begin
      if p_Sexo = 'M' then
      begin
        if (l_IMC < 20.7) then
          l_StrIMC := 'Abaixo do peso.'
        else
          if (l_IMC >= 20.7) and (l_IMC <= 26.4) then
            l_StrIMC := 'No peso normal.'
          else
            if (l_IMC > 26.4) and (l_IMC <= 27.8) then
              l_StrIMC := 'Marginalmente acima do peso.'
            else
              if (l_IMC > 27.8) and (l_IMC <= 31.1) then
                l_StrIMC := 'Acima do peso ideal.'
              else
                if (l_IMC >31.1) then
                  l_StrIMC := 'Obeso.'
      end;
    end;
    Result := l_StrIMC;
  Except
    raise Exception.Create('Erro ao efetuar c�lculo do IMC.');
  end;
end;

end.
