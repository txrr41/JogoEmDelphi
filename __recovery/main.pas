unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Uboss, Uplayer;

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
  personagem := Tpersonagem.Create(100, 1, 10, 100, '', '', True);



  player := tplayer.Create(100, 1, 10, 100, '', '', True);
  player.Nickname := 'adasdas';

   boss := TBoss.Create(1000, 1, 100, 1000, '', '', True);
end;

end.
