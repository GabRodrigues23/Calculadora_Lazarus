unit uprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSoma: TButton;
    btnSub: TButton;
    btnMult: TButton;
    bntDivi: TButton;
    btnClear: TButton;
    btnExit: TButton;
    edtInput1: TEdit;
    edtInput2: TEdit;
    Memo1: TMemo;
    procedure bntDiviClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  nNum1, nNum2 : Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  ShowMessage('Calculadora em Lazarus /n \n Programa realizado para fins de estudo por Gabriel Rodrigues');
end;

// Operações
procedure TForm1.btnSomaClick(Sender: TObject);          // Soma
var
  nSoma : Integer;
begin
  nNum1 := StrToInt(edtInput1.Text);
  nNum2 := StrToInt(edtInput2.Text);
  nSoma := nNum1 + nNum2;
  Memo1.Lines.Add('Soma: ' + IntToStr(nSoma));

end;

procedure TForm1.btnSubClick(Sender: TObject);           // Subtração
var
  nSub : Integer;
begin
  nNum1 := StrToInt(edtInput1.Text);
  nNum2 := StrToInt(edtInput2.Text);
  nSub := nNum1 - nNum2;
  Memo1.Lines.Add('Subtração: ' + IntToStr(nSub));
end;

procedure TForm1.btnMultClick(Sender: TObject);          // Multiplicação
var
  nMult : Integer;
begin
  nNum1 := StrToInt(edtInput1.Text);
  nNum2 := StrToInt(edtInput2.Text);
  nMult := nNum1 * nNum2;
  Memo1.Lines.Add('Multiplicação: ' + IntToStr(nMult));

end;

procedure TForm1.bntDiviClick(Sender: TObject);          // Divisão
var
  nDivi: Integer;
begin
  nNum1 := StrToInt(edtInput1.Text);
  nNum2 := StrToInt(edtInput2.Text);
  nDivi := nNum1 div nNum2;
  Memo1.Lines.Add('Divisão: ' + IntToStr(nDivi));
end;

// Buttons
procedure TForm1.btnClearClick(Sender: TObject);         // Clear
begin
  Memo1.Lines.Clear;
end;

procedure TForm1.btnExitClick(Sender: TObject);          // Exit
begin
  ShowMessage('Encerrando Programa!');
  Application.Terminate;
end;


end.

