unit Uclasse;

interface

  type TPersonagem = class
  private
    Nome: String;
    Vida: Integer;
    Genero: string;
    Nivel: integer;
    Dano: integer;
    Defesa: integer;
    Vivo: Boolean;
  public
    //Getter e Setter
    procedure setNivel (ANivel: Integer);
    function getNivel: Integer;
    procedure setGenero (AGenero: String);
    function getGenero: String;
    procedure setNome (ANome: String);
    function getNome: String;
    procedure setVivo (AVivo: Boolean);
    function getVivo: Boolean;
    procedure causarDano (atacante, defensor: TPersonagem);
    function getVida:integer;
    procedure setVida (AVida: Integer);
    function getDefesa:integer;
    procedure setDefesa (ADefesa: Integer);
    function getDano:integer;
    procedure setDano (ADano: Integer);
    constructor Create (aVida, aNivel, aDano, aDefesa:integer; aNome, aGenero: String; aVivo: Boolean);
  end;

  type Tplayer = class (Tpersonagem)
   Experiencia: double;
   Nickname: String;

  end;

  type Tboss = class (Tpersonagem)

  end;

implementation
uses system.SysUtils;

{ TPersonagem }




procedure TPersonagem.causarDano(atacante, defensor: TPersonagem);
begin
   defensor.setVida (defensor.getVida - atacante.getDano);
   if defensor.getVida <= 0 then begin
     defensor.setVivo (False);
   end;

end;

constructor TPersonagem.Create(aVida, aNivel, aDano, aDefesa:integer; aNome, aGenero: String; aVivo: Boolean);
begin
  self.genero := aGenero;
  self.vida := aVida;
  self.nome := aNome;
  self.nivel := aNivel;
  self.Dano := aDano;
  self.Defesa := aDefesa;
  self.Vivo := True;
end;

function TPersonagem.getDano: integer;
begin
  result:= Self.Dano + (Self.Nivel {+ Self.Ferramentas.Dano} );
end;

function TPersonagem.getDefesa: integer;
begin
    result:= Self.Defesa + Self.Nivel + 10;
end;

function TPersonagem.getGenero: String;
begin
   result:= Self.Genero;
end;

function TPersonagem.getNivel: Integer;
begin
   result := self.nivel;
end;

function TPersonagem.getNome: String;
begin
   result:= self.nome;
end;

function TPersonagem.getVida: integer;
begin
   result:= Self.Vida + Self.Nivel;
end;

function TPersonagem.getVivo: Boolean;
begin
  result := Self.vivo;
end;

procedure TPersonagem.setDano(ADano: Integer);
begin
  if ADano < 1 then begin
   raise Exception.Create('O Dano deve ser maior que 0. TPersonagem.setDano');
  end;
  Self.Dano :=ADano;
end;

procedure TPersonagem.setDefesa(ADefesa: Integer);
begin
   if ADefesa < 1 then begin
   raise Exception.Create('A Defesa deve ser maior que 0. TPersonagem.setDefesa');
  end;
  Self.Defesa := ADefesa;
end;

procedure TPersonagem.setGenero(AGenero: String);
begin
    Self.Genero := AGenero;
end;

procedure TPersonagem.setNivel(ANivel: Integer);
begin
   Self.Nivel := ANivel;
end;

procedure TPersonagem.setNome(ANome: String);
begin
  Self.nome := ANome;
end;

procedure TPersonagem.setVida(AVida: Integer);
begin
    if AVida < 1 then begin
   raise Exception.Create('A Vida deve ser maior que 0. TPersonagem.setVida');
  end;
  Self.Vida := AVida;
end;

procedure TPersonagem.setVivo(AVivo: Boolean);
begin
  Self.Vivo := AVivo;
end;

end.
