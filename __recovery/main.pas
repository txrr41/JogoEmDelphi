unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses uclasse;

procedure TForm3.Button1Click(Sender: TObject);
var personagem:Tpersonagem;
player : tplayer;
boss: tboss;

begin
  personagem := Tpersonagem.Create(12, 12);
  personagem.getDano;
  personagem.getDefesa;
  personagem.getNome;
  personagem.getVida;
  personagem.getVivo;
  personagem.getGenero;


  player := tplayer.Create(15, 15);
  player.Nickname := 'adasdas';

   boss := TBoss.Create(100, 80);
end;

end.
