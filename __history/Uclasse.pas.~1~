unit Uclasse;

interface

  type TPersonagem = class
    Nome: String;
    Vida: Integer;
    Genero: string;
    Nivel: integer;
    Dano: integer;
    Defesa: integer;

    constructor Create (aDano, aDefesa:integer);
  end;

  type Tplayer = class (Tpersonagem)
   Experiencia: double;
   Nickname: String;

  end;

  type Tboss = class (Tpersonagem)

  end;

implementation

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: integer);
begin
  self.Dano := adano;
  self.Defesa := adefesa;
end;

end.
