unit Tela1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    EditValor1: TEdit;
    EditValor2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditValor3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
var
Valor1,Valor2:integer;
Valor3:real;
begin
  try
  Valor1:= StrToInt(EditValor1.Text);
  Valor2:= StrToInt(Editvalor2.Text);
  Valor3:= (Valor1/Valor2)*100;
  EditValor3.Caption:=('Churn Rate '+FloaTtoStr(Valor3)+'%');
  except
   ShowMessage('Um dos campos estão vazios ou valor informado e inválido, por favor informe um valor inteiro');
  end;

end;

procedure TForm1.Label5Click(Sender: TObject);
begin

end;

end.

