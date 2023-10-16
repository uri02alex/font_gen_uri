unit Mainform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ComCtrls, Vcl.Buttons
  ,System.IniFiles, Vcl.Menus
  //,Vcl.Graphics
//  ,Vcl.Graphics //TBitmapCanvas
  ;

type Optmake=record
     metka:string;
     fn,fntxt,fnh:string;
     icodstart,icodend:integer;
     bitw:string;
     end;
type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Img1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Memo1: TMemo;
    Img2: TImage;
    g1: TStringGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Button4: TButton;
    BitBtn1: TBitBtn;
    test5: TButton;
    cbsize: TComboBox;
    SB1: TStatusBar;
    Button6: TButton;
    TabSheet3: TTabSheet;
    Btfile1: TButton;
    Img3: TImage;
    CBnamefont: TComboBox;
    FontDialog1: TFontDialog;
    Button5: TButton;
    DrawImg5: TButton;
    Btimport: TButton;
    Panel5: TPanel;
    Img4: TImage;
    btfile2: TButton;
    CBfregim: TCheckBox;
    ImgTXT: TImage;
    MainMenu1: TMainMenu;
    file1: TMenuItem;
    save1: TMenuItem;
    load1: TMenuItem;
    CBsmtop: TComboBox;
    gen_с1: TButton;
    N1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Button7: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Button8: TButton;
    Label5: TLabel;
    Button9: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Button10: TButton;
    Label8: TLabel;
    Button11: TButton;
    Button12: TButton;
    N2: TMenuItem;
    Ngen1: TMenuItem;
    g0: TStringGrid;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Image2: TImage;
    BitBtn6: TBitBtn;
    Button13: TButton;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Button14: TButton;
    TabSheet4: TTabSheet;
    Memo2: TMemo;
    Image1: TImage;
    Button15: TButton;
    CBsmx: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ontestT(Sender: TObject);
    procedure m(    s:string);
    procedure mm(    s:string);
    procedure m2(s:string);
    procedure btdrawImg2(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure g1Click(Sender: TObject);
    procedure g1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Img2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure btclearmemo(Sender: TObject);
    procedure Img1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure test5Click(Sender: TObject);
    procedure Btfile1Click(Sender: TObject);
    procedure Img3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BtimportClick(Sender: TObject);
    procedure btfile2Click(Sender: TObject);
    procedure DrawImg1;
    procedure DrawImg3;
    procedure DrawImgTXT;
    procedure ClearImg(img:Timage);
    procedure ClearImgUUU(img: Timage);

    procedure cbsizeChange(Sender: TObject);
    procedure DrawImg5Click(Sender: TObject);
    procedure ImgTXTClick(Sender: TObject);
    procedure CBfregimClick(Sender: TObject);
    procedure save1Click(Sender: TObject);
    procedure CBsmtopChange(Sender: TObject);
    procedure savesimvol;
    procedure loadsimvol;
    procedure gen_с1Click(Sender: TObject);
    procedure load1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure make_file(var op:Optmake);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Ngen1Click(Sender: TObject);
    procedure g0MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure g0MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure g0DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
//    procedure Ngen1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
var xx,yy,ddx,ddy:integer;
var codsimvol:integer;
var globX,Globy:integer;
type Toption=record
     fontnameimport:string;
     fontsizeimport:integer;
     regim:integer;//редактируеи или запалнияем
     //smtop:integer;//пропускаем строки в верхе
     smY,smX:integer
     end;
var opt:Toption;

var shex:string;

type Trecsim=record
     icod:integer;
     sim:string;
     sizex,sizey:integer;
     ml,mp:integer;//мак слева спрао
     aa:array [1..50] of string;
     simh:string;
     w:integer;
     smX,smY:integer;
     sz:integer;
     edit:integer;

     end;
var A:array [0..255] of Trecsim;


implementation

{$R *.dfm}

procedure BitToHex(s:string;ww:string);
var hex1,m,i,c:integer;
begin
shex:='';
hex1:=0;
m:=1;
c:=length(s);
for i:=c downto 1  do
 begin
 if s[i]='X' then hex1:=hex1+m;
 m:=m*2;
 end;
shex:=format('0x%0.'+ww+'x',[hex1]);
end;



procedure TForm1.ontestT(Sender: TObject);
begin
Img1.Canvas.font.name := 'Arial';
Img1.canvas.font.size := 14;
codsimvol:=84;
DrawImg1;
DrawImg3;
btdrawImg2(Self);
end;

procedure TForm1.save1Click(Sender: TObject);
var i,j:integer;
var fini:Tinifile;
var icod:integer;
begin
fini:=Tinifile.Create(getcurrentdir+'\ini\font_uri.ini');
fini.WriteString('GLOB','fontnameimport',opt.fontnameimport);
fini.Writeinteger('GLOB','fontsizeimport',opt.fontsizeimport);
fini.Writeinteger('GLOB','opt.smY',opt.smY);

//opt.smtop:=0;CBsmtop.Text:=inttostr(opt.smtop);
for i:=32   to 255 do
  begin
  codsimvol:=i;
  icod:=strtoint(g1.Cells[0,i-32]);
  savesimvol;
  end;
fini.Free;
end;

procedure TForm1.loadsimvol;
var fini:Tinifile;
var j:integer;
begin
fini:=Tinifile.Create(getcurrentdir+'\ini\font_uri.ini');
  A[codsimvol].sim:=ansichar(codsimvol);
  A[codsimvol].smX:=fini.readinteger(inttostr(codsimvol),'smX',0);
  A[codsimvol].smY:=fini.readinteger(inttostr(codsimvol),'smY',0);
  A[codsimvol].w:=fini.readinteger(inttostr(codsimvol),'w',0);
  A[codsimvol].sz:=fini.readinteger(inttostr(codsimvol),'sz',12);
  A[codsimvol].edit:=fini.readinteger(inttostr(codsimvol),'edit',0);
  g1.Cells[0,codsimvol-32]:=inttostr(codsimvol);
  g1.Cells[3,codsimvol-32]:=inttostr(A[codsimvol].w);
  g1.Cells[4,codsimvol-32]:=inttostr(A[codsimvol].smX);
  g1.Cells[5,codsimvol-32]:=inttostr(A[codsimvol].smY);
  g1.Cells[6,codsimvol-32]:=inttostr(A[codsimvol].sz);
  g1.Cells[7,codsimvol-32]:=inttostr(A[codsimvol].edit);
  for j:=1   to 16 do
    begin
    a[codsimvol].aa[j]:=fini.Readstring(inttostr(codsimvol),'s'+format('%0.2d',[j]),'');
    end;
fini.Free;
end;

procedure TForm1.savesimvol;
var j:integer;
var fini:Tinifile;
begin
fini:=Tinifile.Create(getcurrentdir+'\font_uri.ini');
  fini.Writestring(inttostr(codsimvol),'sim',A[codsimvol].sim);
  fini.Writestring(inttostr(codsimvol),'simh',A[codsimvol].simh);
  fini.Writeinteger(inttostr(codsimvol),'w',A[codsimvol].w);
  fini.Writeinteger(inttostr(codsimvol),'smX',A[codsimvol].smX);
  fini.Writeinteger(inttostr(codsimvol),'smY',A[codsimvol].smY);
  fini.Writeinteger(inttostr(codsimvol),'sz',A[codsimvol].sz);
  fini.Writeinteger(inttostr(codsimvol),'edit',A[codsimvol].edit);
  for j:=1   to 16 do
    begin
    //codsimvol:=i;
    fini.Writestring(inttostr(codsimvol),'s'+format('%0.2d',[j]),a[codsimvol].aa[j]);
    end;
fini.Free;
end;

procedure TForm1.test5Click(Sender: TObject);
var Rect: TRect;
begin
  Img2.canvas.Brush.Color:=clGreen;
  Img2.canvas.pen.Color:=clblue;
  Rect.Left:=10;
  Rect.Right:=Rect.Left+ddx-1;
  //m('ddx='+inttostr(ddx)+' '+'ddy='+inttostr(ddy));

  //  Rect.Right:=Rect.Left+50;
  rect.Top:=10;
  rect.Bottom:=rect.Top+ddy-1;
//  rect.Bottom:=rect.Top+50;
  Img2.Canvas.FillRect(rect);
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
loadsimvol;
btdrawImg2(Self);
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
begin
opt.regim:=1;
btdrawImg2(self);
DrawImgTXT;
opt.regim:=0;
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
var s:string;
var ymin,ymax:integer;
var smy:integer;
 procedure drawtest(hh,yend:integer);
 var x,y:integer;
 var col:integer;
 begin
 ClearImgUUU(Img1);
 with Img1.canvas do
 begin
 textout(0, 0, S);
 Canvas.Font.Size:=hh;
 // Canvas.Font.Height:=hh;
 textout(0, 0, S);
 ymax:=0;
 for y:=0 to yend  do
  begin
   for x:=0 to 16  do
    begin
     col:=Img1.canvas.Pixels[x,y+smy];
     if col<>0 then ymax:=1;
     m(format('smy=%d y=%2d x=%2d col=%d',[smy,y,x,col]) );

    end;
  end;
 end;
//mm('ymax='+inttostr(ymax));
m(format('smy=%d ymax=%d smy=%d',[smy,ymax,smy]) );

 end;

var h1:integer;
begin
s:=ansichar(codsimvol);
 Img1.Picture.Bitmap.PixelFormat:= pf4bit;
with Img1 do
 begin
canvas.Brush.Color:=clWhite;
canvas.pen.Color:=clred;
canvas.FloodFill(0,0,clWhite,fsSurface);
//canvas.Brush.Color:=clWhite;
//Canvas.Font.Color:=clblack;
canvas.Brush.Color:=255;
Canvas.Font.Color:=255;

//Img1.Canvas.Font.Size:=a[codsimvol].sz;
//Img1.Canvas.Font
 end;
// drawtest(hh:integer);
h1:=22;
smy:=0;
drawtest(h1,0);
if ymax=0 then begin smy:=smy+1;drawtest(h1,0);end;
if ymax=0 then begin smy:=smy+1;drawtest(h1,0);end;
if ymax=0 then begin smy:=smy+1;drawtest(h1,0);end;
if ymax=0 then begin smy:=smy+1;drawtest(h1,0);end;
if ymax=0 then begin smy:=smy+1;drawtest(h1,0);end;
if ymax=0 then begin smy:=smy+1;drawtest(h1,0);end;
if ymax=0 then begin smy:=smy+1;drawtest(h1,0);end;
if ymax=0 then begin smy:=smy+1;drawtest(h1,0);end;
mm(format('smy=%d ymax=%d smy=%d',[smy,ymax,smy]) );


btdrawImg2(Self);

(*
Img1.Canvas.Pen.Width:=1;
Img1.Canvas.brush.style := bssolid;
//Img1.Canvas.Font.

with Img1 do
 begin
Img1.canvas.Brush.Color:=clWhite;
Img1.canvas.pen.Color:=clred;
Img1.canvas.FloodFill(0,0,clWhite,fsSurface);
Img1.canvas.Brush.Color:=clWhite;
Img1.Canvas.Font.Color:=clblack;
Img1.Canvas.Font.Size:=a[codsimvol].sz;
Img1.Canvas.Font.Height:=16;
//Img1.Canvas.Font
 end;
ClearImg(Img1);
s:=ansichar(codsimvol);
with Img1.canvas do
 begin
 textout(a[codsimvol].smX, a[codsimvol].smY, S);
 end;
s:='sz='+inttostr(a[codsimvol].sz);
m(s);

*)
//Вы можете использовать measureText , чтобы сначала определить размер текста,
// а затем при необходимости масштабировать canvas: http://jsfiddle.net/eGjak/887/ .
(*
var text = "foo bar foo bar";
ctx.font = "30pt Arial";

var width = ctx.measureText(text).width;
if(width <= 100) {
    ctx.fillText(text, 0, 100);
} else {
    ctx.save();
    ctx.scale(100 / width, 1);
    ctx.fillText(text, 0, 100);
    ctx.restore();
}
*)
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
a[codsimvol].smX:=a[codsimvol].smX-1;
   DrawImg1;
   btdrawImg2(self);
   DrawImgTXT;
//  g1.Cells[3,i-32]:=inttostr(A[i].w);
  g1.Cells[4,codsimvol-32]:=inttostr(A[codsimvol].smX);
//  g1.Cells[5,i-32]:=inttostr(A[i].smY);
//  g1.Cells[6,codsimvol-32]:=inttostr(A[codsimvol].sz);

end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
a[codsimvol].smX:=a[codsimvol].smX+1;
   DrawImg1;
   btdrawImg2(self);
   DrawImgTXT;
//  g1.Cells[3,i-32]:=inttostr(A[i].w);
  g1.Cells[4,codsimvol-32]:=inttostr(A[codsimvol].smX);
//  g1.Cells[5,i-32]:=inttostr(A[i].smY);
//  g1.Cells[6,codsimvol-32]:=inttostr(A[codsimvol].sz);

end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
a[codsimvol].smY:=a[codsimvol].smY-1;
   DrawImg1;
   btdrawImg2(self);
   DrawImgTXT;
//  g1.Cells[3,i-32]:=inttostr(A[i].w);
  g1.Cells[5,codsimvol-32]:=inttostr(A[codsimvol].smY);
//  g1.Cells[6,codsimvol-32]:=inttostr(A[codsimvol].sz);

end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
a[codsimvol].smY:=a[codsimvol].smY+1;
   DrawImg1;
   btdrawImg2(self);
   DrawImgTXT;
//  g1.Cells[3,i-32]:=inttostr(A[i].w);
  g1.Cells[5,codsimvol-32]:=inttostr(A[codsimvol].smY);
//  g1.Cells[6,codsimvol-32]:=inttostr(A[codsimvol].sz);

end;

procedure TForm1.BitBtn6Click(Sender: TObject);
var x,y,i,j,k:integer;
var sim:string;
var col,L:integer;
var s1:string;
var istart,iend:integer;
begin
ClearImg(Image2);
with Image2 do
 begin
canvas.Brush.Color:=clWhite;
canvas.pen.Color:=clred;
canvas.FloodFill(0,0,clWhite,fsSurface);
canvas.Brush.Color:=clWhite;
Canvas.Font.Color:=clblack;
Canvas.Font.Size:=28;
 end;
 x:=0; y:=0;
istart:=48;
iend:=57;
if (codsimvol>=65)and(codsimvol<=90) then
  begin
  istart:=65;
  iend:=90;
  end;
if (codsimvol>=97)and(codsimvol<=122) then
  begin
  istart:=97;
  iend:=122;
  end;
if (codsimvol>=192)and(codsimvol<=255) then
  begin
  istart:=192;
  iend:=255;
  end;

for I := istart to iend do
 begin
 sim:=a[i].sim;
 for j:= 1 to 8 do
   begin
   for k:= 1 to 16 do
     begin
     s1:=a[i].aa[k];
     col:=255*256+255*1;//red
     L:=length(s1);
     if L>k then
       begin
       if s1[j]='X' then col:=0;//red
       end;
     Image2.canvas.Pixels[x+j,k+4]:=col;
     end;
   end;
 x:=x+9;
 end;

end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
a[codsimvol].sz:=a[codsimvol].sz+1;
   DrawImg1;
   btdrawImg2(self);
   DrawImgTXT;
//  g1.Cells[3,i-32]:=inttostr(A[i].w);
//  g1.Cells[5,codsimvol-32]:=inttostr(A[codsimvol].smY);
  g1.Cells[6,codsimvol-32]:=inttostr(A[codsimvol].sz);

end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
a[codsimvol].sz:=a[codsimvol].sz-1;
   DrawImg1;
   btdrawImg2(self);
   DrawImgTXT;
//  g1.Cells[3,i-32]:=inttostr(A[i].w);
//  g1.Cells[5,codsimvol-32]:=inttostr(A[codsimvol].smY);
  g1.Cells[6,codsimvol-32]:=inttostr(A[codsimvol].sz);

end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin

btdrawImg2(Self);
savesimvol;
end;

procedure TForm1.btclearmemo(Sender: TObject);
begin
memo1.Lines.Clear;
end;

type
  TRGBA = packed record
    rgbtBlue: Byte;
    rgbtGreen: Byte;
    rgbtRed: Byte;
    rgbtAlpha:Byte;
   end;
PRGBA = ^TRGBA;
procedure TForm1.btdrawImg2(Sender: TObject);
var i,j,x,y:integer;
//var col:TColor;
var col:integer;

var Rect: TRect;
var maxy:integer;
//var   P: PRGBA;
begin
//  TPixelFormat = (pfDevice, pf1bit, pf4bit, pf8bit, pf15bit, pf16bit, pf24bit, pf32bit, pfCustom);
Img1.Picture.Bitmap.PixelFormat:= pf4bit;
a[codsimvol].ml:=0;
a[codsimvol].mp:=0;
//очищаем
ClearImg(img2);
maxy:=0;
if  opt.regim=1 then for i:=1 to 16  do a[codsimvol].aa[i]:='';
a[codsimvol].mp:=0;
for i:=0 to 25  do
 begin
  for j:=0 to 36  do
  begin
  col:=Img1.canvas.Pixels[j,i];
  x:=j*ddx; y:=i*ddy;
//  if col<14000000 then
  if col=0 then
    begin
    Img2.canvas.Brush.Color:=clblack; //цвет заполняет FillRect
    if j>a[codsimvol].mp then a[codsimvol].mp:=j;//до куда справо
    if i>maxy then maxy:=i;
    if  opt.regim=1 then a[codsimvol].aa[i+1]:=a[codsimvol].aa[i+1]+'X';
    end  else
    begin
    // White = TColor($FFFFFF); FF FF FF
    //Img2.canvas.Brush.Color:=clWhite;  //цвет заполняет FillRect
    Img2.canvas.Brush.Color:=clSilver;
    if  opt.regim=1 then a[codsimvol].aa[i+1]:=a[codsimvol].aa[i+1]+'_';
    end;
//Img2.canvas.Brush.Color:=col;
  //if  opt.regim=0  then a[codsimvol].aa[i+1]:=a[codsimvol].aa[i+1]+'*';
  Rect.Left:=x;
  Rect.Right:=x+ddx-1;
  rect.Top:=y;
  rect.Bottom:=y+ddy-1;
  Img2.Canvas.FillRect(rect);
  end;
// m(a[codsimvol].aa[i+1]+' '+inttostr(length(a[codsimvol].aa[i+1])));
 end;//i
//a[codsimvol].mp:=0;
a[codsimvol].mp:=a[codsimvol].mp+1;
sb1.Panels[4].text:=inttostr(a[codsimvol].mp);
//sb1.Panels[5].text:=inttostr(maxy+1);
sb1.Panels[6].text:=inttostr(codsimvol);
g1.Cells[3,codsimvol-32]:=inttostr((A[codsimvol].mp));
//sb1.Panels[7].text:=''+ansichar(codsimvol);
x:=ddx*8; y:=ddy*16;
Img2.canvas.Pen.Color:=clred;
Img2.canvas.MoveTo(x,0);
Img2.canvas.LineTo(x,y);
Img2.canvas.MoveTo(0,y);
Img2.canvas.LineTo(x,y);

end;

procedure TForm1.Btfile1Click(Sender: TObject);
var f:textfile;
var c,r:integer;
var col:Tcolor;
var s:string;
begin
assignfile(f,getcurrentdir+'\file1.txt');rewrite(f);
for r:=0 to 40  do
 begin
  for c:=0 to 16  do
  begin
  col:=Img1.canvas.Pixels[c,r];
  write(f,col:10);
  end;
  writeln(f);
 end;
for r:=0 to 40  do
 begin
  for c:=0 to 16  do
  begin
  col:=Img1.canvas.Pixels[c,r];
  if col>16000 then s:='_' else s:='X';
  write(f,s);
  end;
  writeln(f);
 end;

closefile(f);
end;

procedure TForm1.btfile2Click(Sender: TObject);
var f:textfile;
var c,r,i,j:integer;
var col:Tcolor;
var s:string;
begin
assignfile(f,getcurrentdir+'\file2.txt');rewrite(f);
for i:=32 to 255  do
 begin
 writeln(f,'#1 ',A[i].icod:2,A[i].sim:2);
  for j:=1 to 16  do
   begin
   writeln(f,A[i].aa[j]);
   end;
 end;
closefile(f);
end;

procedure TForm1.BtimportClick(Sender: TObject);
var i:integer;
var s,ss:string;
var dy,x,y:integer;
var s1,s2,s3,s4:string;
begin
opt.smY:=strtoint(CBsmtop.Text);
opt.smX:=strtoint(CBsmX.Text);

//CBsmx
opt.regim:=1;//заполняем
Img1.Canvas.font.name :=CBnamefont.Text;
Img1.canvas.font.size :=strtoint(cbsize.Text);
ss:='';
for I := 32 to 255 do
//for I := 32 to 40 do
//for I := 32 to 100 do
  begin
   //m(inttostr(i));
   codsimvol:=i;
   s:=''+ansichar(i);
   ss:=ss+s;
   Img1.canvas.textout(0, 0, s);
   A[i].sim:=s;
   A[i].icod:=i;
   A[i].sizex:=0;
   A[i].sizey:=16;
   A[i].sz:=opt.fontsizeimport;
   A[i].smY:=-opt.smY;
   A[i].smX:=-opt.smX;

  g1.Cells[3,i-32]:=inttostr(A[i].w);
  g1.Cells[4,i-32]:=inttostr(A[i].smX);
  g1.Cells[5,i-32]:=inttostr(A[i].smY);
  g1.Cells[6,i-32]:=inttostr(A[i].sz);

   DrawImg1;
   Img1.Update;
   btdrawImg2(self);
   Img2.Update;
  DrawImgTXT;
  end;
//15 спер символы
ClearImg(Img4);
s1:=copy(ss,1,47-31);
//15 цыфры
s2:=copy(ss,47-31+1,10);
y:=0;
dy:=Img1.canvas.font.size;
//Img4.canvas.textout(0, y, s1 );//спец символы
//y:=dy+y;Img4.canvas.textout(0, y, s2);
//y:=dy+y;
Img4.canvas.textout(0, y ,copy(ss,32,150) );
y:=dy+y;Img4.canvas.textout(0, y ,copy(ss,151,255) );

//Btimport
opt.regim:=0;//не заполняем

end;

procedure TForm1.Button10Click(Sender: TObject);
var op:Optmake;
begin
op.fn:='';
op.metka:='font_number_zn16_16bit';
op.icodstart:=32;
op.icodend:=62;
op.bitw:='16';
make_file(op);
end;

procedure TForm1.Button11Click(Sender: TObject);
var op:Optmake;
begin
op.fn:='';
op.metka:='font_all_16_16bit';
op.icodstart:=32;
op.icodend:=255;
op.bitw:='16';
make_file(op);
end;

procedure TForm1.Button13Click(Sender: TObject);
var s:string;
begin
with Img1 do
 begin
Img1.canvas.Brush.Color:=clWhite;
Img1.canvas.pen.Color:=clred;
Img1.canvas.FloodFill(0,0,clWhite,fsSurface);
Img1.canvas.Brush.Color:=clWhite;
Img1.Canvas.Font.Color:=clblack;
Img1.Canvas.Font.Size:=opt.fontsizeimport;
 end;
ClearImg(Img1);
s:=ansichar(codsimvol);
with Img1.canvas do
 begin
 textout(a[codsimvol].smX, a[codsimvol].smY, S);
 end;
btdrawImg2(Self);
end;

procedure TForm1.Button14Click(Sender: TObject);
var R: TRect;
var s:string;
var TH,TW:integer;
var i:integer;
flag:integer;
begin
R.Left:=0;
R.top:=0;
R.Right:=64;
R.Bottom:=64;
Img1.Picture.Bitmap.PixelFormat:= pf4bit;
s:='0';
s:=ansichar(codsimvol);

ClearImgUUU(img1);
with Img1 do
 begin
 canvas.Brush.Color:=clWhite;
 canvas.pen.Color:=clred;
 canvas.FloodFill(0,0,clWhite,fsSurface);
 canvas.Brush.Color:=9;
 Canvas.Font.Color:=255;
 Canvas.Font.Name:=CBnamefont.Text;

 for I := 6 to 30 do
   begin
   Canvas.Font.Size:=I;
   th:=Canvas.TextHeight(s);
   tw:=Canvas.TextWidth(s);
   if (th<=16)and(tw<=8) then flag:=1 else flag:=0;

   mm(format('I=%2d TH=%3d TW=%3d %1d',[i,TH,TW,flag]));
   if flag=1 then
     begin
     //canvas.textout(0, 0, S);
     //Canvas.TextRect(r,s,[tfTop,tfRight]);
     //Canvas.TextRect(r,s,[tfTop,tfLeft,tfCalcRect]);
     Canvas.TextRect(r,s,[tfTop,tfLeft]);
     btdrawImg2(Self);

     end;
   end;
//DrawText(canvas.Handle, s, 1, r, dt_Left+dt_SingleLine);
 end;

btdrawImg2(Self);


end;

procedure TForm1.Button15Click(Sender: TObject);
begin
memo2.Lines.Clear;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DrawImgTXT;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i:integer;
begin
for i:=32  to 255 do
  begin
  g1.Cells[0,i-32]:=inttostr(i);
  g1.Cells[1,i-32]:=ansichar(i);
  g1.Cells[2,i-32]:=format('%0.2x',[i-32]);
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
FontDialog1.Font.Name:=CBnamefont.Text;
//'Arial';
if FontDialog1.Execute then
 begin
 CBnamefont.Text:=FontDialog1.Font.Name;
 cbsize.Text:=inttostr(FontDialog1.Font.Size);
 opt.fontsizeimport:=strtoint(cbsize.Text);
 opt.fontnameimport:=CBnamefont.Text;
 m(opt.fontnameimport);
 end;

end;


procedure TForm1.CBfregimClick(Sender: TObject);
begin

//CBfregim.Checked:= not(CBfregim.Checked);
//if CBfregim.Checked then opt.regim:=1 else opt.regim:=0;
opt.regim:=1;
end;

procedure TForm1.cbsizeChange(Sender: TObject);
begin
//opt.fontsizeimport:=12;
opt.fontsizeimport:=strtoint(cbsize.Text);
//m('cbsize.Text '+cbsize.Text);
end;

procedure TForm1.CBsmtopChange(Sender: TObject);
begin
opt.smY:=strtoint(CBsmtop.Text);

end;

procedure TForm1.ClearImg(img: Timage);
var Rect: TRect;
begin
  Img.canvas.Brush.Color:=clWhite;
//  Img.canvas.Brush.Color:=clgreen;
  //Img2.canvas.Brush.Color:=clWhite;
  Rect.Left:=0;
  Rect.Right:=Img.Width;
  rect.Top:=0;
  rect.Bottom:=Img.Height;
  Img.Canvas.FillRect(rect);

end;

procedure TForm1.ClearImgUUU(img: Timage);
var Rect: TRect;
begin
  Img.canvas.Brush.Color:=0;
//  Img.canvas.Brush.Color:=clgreen;
  //Img2.canvas.Brush.Color:=clWhite;
  Rect.Left:=0;
  Rect.Right:=Img.Width;
  rect.Top:=0;
  rect.Bottom:=Img.Height;
  Img.Canvas.FillRect(rect);
end;

procedure TForm1.DrawImg1;
var s:string;
var  Bitmap: TBitmap;
//var bb: TBitmapCanvas;
begin
Img1.Canvas.Pen.Width:=1;
Img1.Canvas.brush.style := bssolid;
//Img1.Canvas.Font.

with Img1 do
 begin
Img1.canvas.Brush.Color:=clWhite;
Img1.canvas.pen.Color:=clred;
Img1.canvas.FloodFill(0,0,clWhite,fsSurface);
Img1.canvas.Brush.Color:=clWhite;
Img1.Canvas.Font.Color:=clblack;
Img1.Canvas.Font.Size:=a[codsimvol].sz;
Img1.Canvas.Font.Name:=CBnamefont.Text;
//Img1.Canvas.Font.Height:=16;
//Img1.Canvas.Font
 end;
ClearImg(Img1);
s:=ansichar(codsimvol);
with Img1.canvas do
 begin
 textout(a[codsimvol].smX, a[codsimvol].smY, S);
 end;
s:='sz='+inttostr(a[codsimvol].sz);
//m(s);
//DrawImg1

end;

procedure TForm1.DrawImg3;
var s:string;
var Rect: TRect;
begin
ClearImg(img3);
Img3.canvas.Brush.Color:=clWhite;
Img3.Canvas.Rectangle(0,0,Img3.Width,Img3.Height);

Img3.Canvas.font.name :=Img1.Canvas.font.name;
Img3.canvas.font.size :=Img1.canvas.font.size*8;
s:=ansichar(codsimvol);
Img3.canvas.textout(2, 2, s);
//Rect.Left:=0;
//Rect.Right:=Img3.Width;
//rect.Top:=0;
//rect.Bottom:=Img.Height;

end;

procedure TForm1.DrawImgTXT;
var i,j:integer;
var s1:string;
var x,y:integer;
begin
try
//dx:=15;dy:=15;
ImgTXT.canvas.Pen.Color:=clblack;
for i:=0 to 25  do
  begin
  s1:=a[codsimvol].aa[i+1];
  if length(s1)<16 then s1:=s1+'                                      ';
    for j:=0 to 32  do
    begin
    x:=j*ddx;
    y:=i*ddy;
    ImgTXT.canvas.Brush.Color:=clred;
    if length(s1)>=j then
    if S1[j+1]='X' then ImgTXT.canvas.Brush.Color:=clblack
      else ImgTXT.canvas.Brush.Color:=clSilver;
   ImgTXT.Canvas.Rectangle(x,y,x+ddx-1,y+ddy-1);
    end;
  end;
x:=ddx*8; y:=ddy*16;
ImgTXT.canvas.Pen.Color:=clred;
ImgTXT.canvas.MoveTo(x,0);
ImgTXT.canvas.LineTo(x,y);
ImgTXT.canvas.MoveTo(0,y);
ImgTXT.canvas.LineTo(x,y);
 except
 on E: Exception do
   begin
   m('Errror DrawImgTXT   ='+E.Message);
   end;
end;
end;

procedure TForm1.DrawImg5Click(Sender: TObject);
begin
DrawImgTXT;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin

g0.Cells[0,0]:='cod';
g0.Cells[1,0]:='sim';
g0.Cells[2,0]:='hex';
g0.Cells[3,0]:='w';
g0.Cells[4,0]:='smX';
g0.Cells[5,0]:='smY';
g0.Cells[6,0]:='sz';
g0.Cells[7,0]:='edit';

self.PageControl1.TabIndex:=0;
N1Click(Self);//скрываем мусор
//Button4Click(Self);
opt.fontsizeimport:=12;
opt.fontnameimport:='Arial';
CBnamefont.Text:=opt.fontnameimport;
opt.regim:=0;//режим не заполняем
opt.fontsizeimport:=strtoint(cbsize.Text);

CBnamefont.Text:= opt.fontnameimport;
opt.smY:=strtoint(CBsmtop.Text);
load1Click(Sender);
ddx:=15;ddy:=15;
for i:=32  to 255 do
  begin
  g1.Cells[0,i-32]:=inttostr(i);
  g1.Cells[1,i-32]:=ansichar(i);
  g1.Cells[2,i-32]:=format('%0.2x',[i-32]);
  end;

end;

procedure TForm1.g0DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
//Для начала давайте выведем в ячейку (1, 1) компонента StringbGrid какой-нибудь рисунок. Вывести рисунок в ячейку компонента StringGrid проще всего, предварительно загрузив его в компонент Image:

//Image1.Picture.LoadFromFile('Имя_файла');

end;

procedure TForm1.g0MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//
//StringGrid1.MouseToCell(X, Y, ACol, ARow);//Получаем индексы ячейки ACol и ARow
  //Перемещаем фокус в ячейку с этими индексами:
//  StringGrid1.Col:=ACol;
//  StringGrid1.Row:=ARow;
end;

procedure TForm1.g0MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//
end;

procedure TForm1.g1Click(Sender: TObject);
var c,r:integer;
begin
//g1.Cells(c,r)
end;

procedure TForm1.g1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var s:string;
var Rect:Trect;
begin
codsimvol:=strtoint(g1.Cells[0, ARow]);
//m('g1SelectCell '+inttostr(codsimvol));
DrawImg1;
drawImg3;
btdrawImg2(Self);
DrawImgTXT;
end;





procedure TForm1.Img1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var x1,y1:integer;
var col:Tcolor;
begin
sb1.Panels[0].Text:=inttostr(x);
sb1.Panels[1].Text:=inttostr(y);
col:=TImage(Sender).canvas.Pixels[x,y];
sb1.Panels[2].Text:=inttostr(col);

end;

procedure TForm1.Img2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var x1,y1:integer;
var col:Tcolor;
begin
if ddx<>0 then x1:=round(X/ddx-0.49) else x1:=0;
if ddy<>0 then y1:=round(Y/ddy-0.49) else y1:=0;
//sb1.Panels[0].Text:=inttostr(x1+1);
//sb1.Panels[1].Text:=inttostr(y1+1);
globX:=x1+1;
Globy:=y1+1;
//sb1.Panels[0].Text:=inttostr(globX)+' '+inttostr(X);
//sb1.Panels[1].Text:=inttostr(globX)+' '+inttostr(Y);
sb1.Panels[0].Text:=inttostr(globY)+'-стр';
sb1.Panels[1].Text:=inttostr(globX)+'-кол';

col:=TImage(Sender).canvas.Pixels[x,y];
sb1.Panels[2].Text:=inttostr(col);
//ddx
end;

procedure TForm1.Img3Click(Sender: TObject);
var x1,y1:integer;
var col:Tcolor;
begin

end;

procedure TForm1.ImgTXTClick(Sender: TObject);
var s1,s2:string;
begin
//кликаем
sb1.Panels[8].Text:='клик';
//m('клик y='+inttostr(Globy)+'  x='+inttostr(Globx));
if (Globy>-1) and (Globy<=16)
 then
 begin
 s1:=a[codsimvol].aa[globY];
 if length(s1)<10 then exit;

 //m(s1);
 s2:=s1[Globx];
 if s2='X' then a[codsimvol].aa[globY][Globx]:='_'
  else a[codsimvol].aa[globY][Globx]:='X';

 sb1.Panels[8].Text:=s1;
 sb1.Panels[9].Text:=s2;
 //globX;
 end;
DrawImgTXT;
end;

procedure TForm1.load1Click(Sender: TObject);
var i,j:integer;
var fini:Tinifile;
var icod:integer;

begin
fini:=Tinifile.Create(getcurrentdir+'\INI\font_uri.ini');
opt.fontnameimport:=fini.ReadString('GLOB','fontnameimport','');
CBnamefont.Text:=opt.fontnameimport;
cbsize.text:=fini.ReadString('GLOB','fontsizeimport','');
opt.fontsizeimport:=strtoint(cbsize.text);
CBsmtop.text:=fini.ReadString('GLOB','opt.smY','0');
opt.smY:=strtoint(CBsmtop.text);

//opt.smtop:=0;CBsmtop.Text:=inttostr(opt.smtop);
for i:=32   to 255 do
  begin
  icod:=i;
  codsimvol:=i;
  loadsimvol;

  end;
fini.Free;
end;


procedure TForm1.m(s: string);
begin
memo1.Lines.Add(s);
end;

procedure TForm1.mm(s: string);
begin
memo2.Lines.Add(s);
end;

procedure TForm1.m2(s: string);
begin
sb1.Panels[1].Text:=s;
end;

procedure TForm1.make_file(var op: Optmake);
var f,ftxt,fh:textfile;
var c,r,i,j:integer;
var col:Tcolor;
var s,zap:string;
var s1,s2:string;
begin
op.fn:=op.metka+'.c';
op.fntxt:=op.metka+'.txt';
op.fnh:=op.metka+'.h';
m(op.fn);
assignfile(f,getcurrentdir+'\FONT_GEN\'+op.fn);rewrite(f);
assignfile(ftxt,getcurrentdir+'\FONT_GEN\'+op.fntxt);rewrite(ftxt);
assignfile(fh,getcurrentdir+'\FONT_GEN\'+op.fnh);rewrite(fh);
writeln(fh,'#include <stdint.h>');
writeln(fh,'#ifndef _'+op.metka);
writeln(fh,'#define _'+op.metka);
writeln(fh,' ');
//#include <types.h>
//char FNT_W[256];
// Шрифт моноширинный, 6х8 пикселей
// Функция возвращает указатель на подтаблицу символа Char
//uint8_t *f6x8m_GetCharTable(uint8_t Char);

writeln(fh,'#endif');

//font_nember8_16bit.h
writeln(f,'// Font_gen_uri.exe Генратор шрифтов для микроконтролеров (STM32) Версия 0.00001');
writeln(f,'// Шрифт импортированый  имя                             '+opt.fontnameimport);
writeln(f,'// Шрифт импортированый  размер                          ',opt.fontsizeimport);
writeln(f,'// Шрифт импортированый  в нем пропушено строк пикселей  ',opt.smY);
writeln(f,'// Шрифт ширина вит '+op.bitw+' Высота 16 бит');
writeln(f,'#include <stdint.h>');
writeln(f,'#include "'+op.metka+'.h"');
writeln(f,'uint'+op.bitw+'_t fnt_'+op.metka+'[] = {');

zap:=' ';
for i:=op.icodstart to op.icodend  do
 begin
  writeln(ftxt,'#1 ',A[i].icod:2,A[i].sim:2);
  for j:=1 to 16  do
   begin
   writeln(ftxt,A[i].aa[j]);
   end;
  for j:=1 to 16  do
   begin
   if op.bitw='8' then
     begin
     s1:=copy(A[i].aa[j],1,8);
     BitToHex(s1,'2');
     write(f,zap,shex);
     zap:=',';
     end;
   if op.bitw='16' then
     begin
     s1:=copy(A[i].aa[j],1,16);
     BitToHex(s1,'4');
     write(f,zap,shex);
     zap:=',';
     end;

   end;
  writeln(f,' // ',A[i].icod:2,A[i].sim:2);
 end;
writeln(f,'};');
closefile(f);
closefile(ftxt);
closefile(fh);
//
end;
procedure TForm1.gen_с1Click(Sender: TObject);
var op:Optmake;
begin
op.fn:='';
op.metka:='font_number8_16bit';
op.icodstart:=48;
op.icodend:=57;
op.bitw:='8';
make_file(op);
end;


procedure TForm1.N1Click(Sender: TObject);
var f:boolean;
begin
f:=DrawImg5.Visible;
//.Visible:
f:= not(f);
DrawImg5.Visible:=f;
test5.Visible:=f;
BitBtn1.Visible:=f;
Button4.Visible:=f;
Button1.Visible:=f;
Button3.Visible:=f;
Button2.Visible:=f;
Btfile1.Visible:=f;
btfile2.Visible:=f;
end;

procedure TForm1.Ngen1Click(Sender: TObject);
var fn:string;fc,ft:textfile;
var i:integer;
var s1:string;
var zap:string;

procedure print1;
var j:integer;
begin
   writeln(ft,'// ',A[i].sim,'  ',i);
   for j:=1 to 16  do
   begin
   s1:=copy(A[i].aa[j],1,8);
   writeln(ft,s1);
   end;

   for j:=1 to 16  do
   begin
   s1:=copy(A[i].aa[j],1,8);
   BitToHex(s1,'2');
   write(fc,zap+shex);
   zap:=',';
   end;
   writeln(fc,' // ',A[i].sim,'  ',i);

end;

VAR SSS:STRING;
begin
assignfile(fc,getcurrentdir+'\'+'FONT_uri_8_16.c');rewrite(fc);
assignfile(ft,getcurrentdir+'\'+'FONT_uri_8_16.log');rewrite(ft);
writeln(fc,'// FONT_uri_8_16.c');
writeln(ft,'// FONT_uri_8_16.log');
writeln(ft,'// генератор шрифта Font_gen_uri.dpr для микроконтролера STM32');
writeln(fc,'// генератор шрифта Font_gen_uri.dpr для микроконтролера STM32');
writeln(fc,'// Ширина  шрифта 8  колонок (8  бит, 1 байт)');
writeln(fc,'// высота  шрифта 16 колонок (16 бит, 2 байта)');
writeln(fc,'// две таблицы сиплолов (циыры символа английский шривт, русский шривт)');
writeln(fc,'#include <stdint.h>');
writeln(fc,'#include "FONT_uri_8_16.h"');
writeln(fc,'// 32..125 цыфры, знаки, английские буквы ');
writeln(fc,'// 32-пробел,33..47-знаки,48..67-цыфры,60..64-знаки,65..90-английские бол 97..122-90-англ мал');
writeln(fc,'uint8_t fnt_aaa[] = {');
 zap:=' ';

SSS:='';
for i:= 32 to 125 do
   begin
   SSS:=SSS+A[i].sim;

   print1;
   end;
   m(SSS);
writeln(fc,'};');
writeln(fc,'// 192..223-рус бол,224..255 рус мал. ');
writeln(fc,'// 192..255 руские  буквы ');
writeln(fc,'uint8_t fnt_bbb[] = {');
   zap:=' ';
SSS:='';

for i:= 192 to 255 do
   begin
   print1;
   SSS:=SSS+A[i].sim;
   end;
   m(SSS);

writeln(fc,'};');





closefile(fc);
closefile(ft);
end;

procedure TForm1.Button7Click(Sender: TObject);
var op:Optmake;
begin
op.fn:='';
op.metka:='font_number_zn8_16bit';
op.icodstart:=32;
op.icodend:=62;
op.bitw:='8';
make_file(op);
end;


procedure TForm1.Button8Click(Sender: TObject);
var op:Optmake;
begin
op.fn:='';
op.metka:='font_all_8_16bit';
op.icodstart:=32;
op.icodend:=255;
op.bitw:='8';
make_file(op);
end;

procedure TForm1.Button9Click(Sender: TObject);
var op:Optmake;
begin
op.fn:='';
op.metka:='font_number16_16bit';
op.icodstart:=48;
op.icodend:=57;
op.bitw:='16';
make_file(op);
end;

end.

procedure TForm1.N11Click(Sender: TObject);
begin
//32-пробел 48-0 57-9 64-@ 65-A 125 }
//то есть от 32 до 126
//126--191 какойто хлам
//Далее руские цыфры
//192-А ......223-Я
//192-А ......223-Я РУССКИЕ БОЛЬШИЕ
//224-А ......254-я русские маленкие
end;

