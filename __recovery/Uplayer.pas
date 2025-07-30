unit Uplayer;

interface

uses Uclasse;

  type Tplayer = class (Tpersonagem)
   Experiencia: double;
   Nickname: String;
   function getDano:integer;
  procedure setDano (ADano: Integer);
  end;

implementation

{ Tplayer }

function Tplayer.getDano: integer;
begin
  result:= Self.Dano;
end;

procedure Tplayer.setDano(ADano: Integer);
begin
   Self.Dano :=ADano;
end;

end.
