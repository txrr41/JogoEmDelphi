unit Uboss;


interface

uses Uclasse;

type Tboss = class (Tpersonagem)
  HabilidadeEspecial:String;
  function getDano:integer;
  procedure setDano (ADano: Integer);
  end;

implementation

{ Tplayer }


{ Tboss }

function Tboss.getDano: integer;
begin
  result:= Self.Dano;
end;

procedure Tboss.setDano(ADano: Integer);
begin
    Self.Dano :=ADano;
end;

end.
