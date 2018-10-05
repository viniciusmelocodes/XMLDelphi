unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    Button1: TButton;
    cdsPgDriverLink: TClientDataSet;
    cdsPgDriverLinkvendor_home: TStringField;
    Button2: TButton;
    cdsPgDriverLinkvendor_lib: TStringField;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
  cdsPgDriverLink.LoadFromFile('C:\temp\arquivo.xml');
  Memo1.Lines.Clear;
  Memo1.Lines.Add(cdsPgDriverLink.FieldByName('vendor_home').AsString);
  Memo1.Lines.Add(cdsPgDriverLink.FieldByName('vendor_lib').AsString);
  Memo1.Lines.Add('------- FIM -------');
  Memo1.Lines.Add('XML Lido.');
end;

procedure TFormPrincipal.Button2Click(Sender: TObject);
begin
  cdsPgDriverLink.Close;
  cdsPgDriverLink.CreateDataSet;
  cdsPgDriverLink.Open;

  if FileExists('C:\temp\arquivo.xml') then
    DeleteFile('C:\temp\arquivo.xml');

  cdsPgDriverLink.Append;
  cdsPgDriverLink.FieldByName('vendor_home').AsString := 'C:\Pasta1\Pasta2\';
  cdsPgDriverLink.FieldByName('vendor_lib').AsString := 'biblioteca.dll';
  cdsPgDriverLink.SaveToFile('C:\temp\arquivo.xml', dfXMLUTF8);
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Salvo');
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

end.

