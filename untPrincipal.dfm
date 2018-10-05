object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Exemplo XML Delphi'
  ClientHeight = 310
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 639
    Height = 35
    Align = alTop
    Caption = 'Ler'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 639
    Height = 35
    Align = alTop
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 85
    Width = 639
    Height = 222
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 232
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object cdsPgDriverLink: TClientDataSet
    PersistDataPacket.Data = {
      590000009619E0BD01000000180000000200000000000300000059000B76656E
      646F725F686F6D6502004900020001000557494454480200020010270A76656E
      646F725F6C6962020049000000010005574944544802000200E8030000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 96
    object cdsPgDriverLinkvendor_home: TStringField
      FieldName = 'vendor_home'
      Size = 10000
    end
    object cdsPgDriverLinkvendor_lib: TStringField
      FieldName = 'vendor_lib'
      Size = 1000
    end
  end
end
