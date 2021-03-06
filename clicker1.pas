unit clicker1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    Button3: TButton;
    Timer1: TTimer;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Edit1: TEdit;
    Button12: TButton;
    Button13: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  strength_auto: integer = 0;
  strength:  integer = 1;
  money: integer;
  cheat_clicks: integer;
  level: array[0..10] of integer;
  cost: array [1..10] of integer;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure capts;
begin
  form1.button4.Caption := 'Upgrade (str + 3) price  - ' + inttostr(cost[2]) + ' lvl - ' + inttostr(level[2]);
  form1.button2.Caption := 'Upgrade (str + 1) price  - ' + inttostr(cost[1]) + ' lvl - ' + inttostr(level[1]);
  form1.button5.Caption := 'Upgrade (str + 10) price  - ' + inttostr(cost[3]) + ' lvl - ' + inttostr(level[3]);
  form1.button6.caption := 'Upgrade (str + 50) price  - ' + inttostr(cost[4]) + ' lvl - ' + inttostr(level[4]);
  form1.button7.Caption := 'Upgrade (str + 100) price  - ' + inttostr(cost[5]) + ' lvl - ' + inttostr(level[5]);
  form1.button3.Caption := 'Upgrade (auto + 1) price  - ' + inttostr(cost[6]) + ' lvl - ' + inttostr(level[6]);
  form1.button8.Caption := 'Upgrade (auto + 5) price  - ' + inttostr(cost[7]) + ' lvl - ' + inttostr(level[7]);
  form1.button9.Caption := 'Upgrade (auto + 10) price  - ' + inttostr(cost[8]) + ' lvl - ' + inttostr(level[8]);
  form1.button10.Caption := 'Upgrade (auto + 20) price  - ' + inttostr(cost[9]) + ' lvl - ' + inttostr(level[9]);
  form1.button11.Caption := 'Upgrade (auto + 50) price  - ' + inttostr(cost[10]) + ' lvl - ' + inttostr(level[10]);
end;

procedure onoff;
begin
  if money >= cost[1] then form1.button2.Enabled :=true
  else
    form1.Button2.Enabled := false;
  if money >= cost[6] then form1.button3.Enabled := True
  else
    form1.button3.Enabled := false;
  if money >= cost[2] then form1.button4.Enabled := True
  else
    form1.button4.Enabled := false;
  if money >= cost[3] then form1.button5.Enabled := True
  else
    form1.button5.Enabled := false;
  if money >= cost[4] then form1.button6.Enabled := True
  else
    form1.button6.Enabled := false;
  if money >= cost[5] then form1.button7.Enabled := True
  else
    form1.button7.Enabled := false;
  if money >= cost[7] then form1.button8.Enabled := True
  else
    form1.button8.Enabled := false;
  if money >= cost[8] then form1.button9.Enabled := True
  else
    form1.button9.Enabled := false;
  if money >= cost[9] then form1.button10.Enabled := True
  else
    form1.button10.Enabled := false;
  if money >= cost[10] then form1.button11.Enabled := True
  else
    form1.button11.Enabled := false;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  money := 0;
  cheat_clicks := 0;
  label1.Caption := 'Money - ' + inttostr(money);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  cost[1] := 10;
  cost[2] := 100;
  cost[3] :=1000;
  cost[4] :=10000;
  cost[5] :=100000;
  cost[6] := 40;
  cost[7] := 200;
  cost[8] := 500;
  cost[9] := 1000;
  cost[10] := 50000;
  level[1] := 1;
  level[2] := 0;
  level[3] := 0;
  level[4] := 0;
  level[5] := 0;
  level[6] := 0;
  level[7] := 0;
  level[8] := 0;
  level[9] := 0;
  level[10] := 0;
  capts;
  onoff;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
  inc(money, strength);
  label1.Caption := 'Money - ' + inttostr(money);
  onoff;
end;

procedure TForm1.Button2Click(Sender: TObject);      // ���� 1
begin
  inc(strength);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[1]);
  inc(level[1]);
  inc(cost[1], level[1] * 10);
  label1.Caption := 'Money - ' + inttostr(money);
  onoff;
  capts;
end;



procedure TForm1.Button3Click(Sender: TObject);      // ���� 1
begin
  inc(strength_auto);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[6]);
  inc(level[6]);
  inc(cost[6], level[6]);
  label1.Caption := 'Money - ' + inttostr(money);
  onoff;
  capts;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  inc(money, strength_auto);
  label1.Caption := 'Money - ' + inttostr(money);
  onoff;
end;

procedure TForm1.Button4Click(Sender: TObject);       // ���� 2
begin
  inc(strength, 2);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[2]);
  inc(level[2]);
  inc(cost[2], level[2] * 10);
  label1.Caption := 'Money - ' + inttostr(money);
  onoff;
  capts;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  inc(strength, 10);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[3]);
  inc(level[3]);
  inc(cost[3], level[3] * 10);
  onoff;
  capts;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  inc(strength, 50);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[4]);
  inc(level[4]);
  inc(cost[4], level[4] * 10);
  onoff;
  capts;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  inc(strength, 100);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[5]);
  inc(level[5]);
  inc(cost[5], level[5] * 10);
  onoff;
  capts;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  inc(strength_auto, 5);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[7]);
  inc(level[7]);
  inc(cost[7], level[7] * 5);
  label1.Caption := 'Money - ' + inttostr(money);
  onoff;
  capts;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  inc(strength_auto, 10);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[8]);
  inc(level[8]);
  inc(cost[8], level[8] * 10);
  label1.Caption := 'Money - ' + inttostr(money);
  onoff;
  capts;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  inc(strength_auto, 20);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[9]);
  inc(level[9]);
  inc(cost[9], level[9] * 20);
  label1.Caption := 'Money - ' + inttostr(money);
  onoff;
  capts;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  inc(strength_auto, 50);
  label2.Caption := 'Strength - ' + inttostr(strength);
  label3.Caption := 'Auto Strength - ' + inttostr(strength_auto);
  dec(money, cost[10]);
  inc(level[10]);
  inc(cost[10], level[10]);
  label1.Caption := 'Money - ' + inttostr(money);
  onoff;
  capts;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
  inc(cheat_clicks);
  if cheat_clicks >= 5 then
  begin
    edit1.Visible := true;
    button12.Visible := true;
    button13.Visible := true;
    cheat_clicks := 0;
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  if edit1.Text = 'addmoney' then inc(money,100000);
  if edit1.Text = 'exit' then halt(0);
  onoff;
  capts;
  edit1.Text := '';
  
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  edit1.Visible := false;
  button12.Visible := false;
  button13.Visible := false;
end;



end.      
