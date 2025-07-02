object frmDogDetails: TfrmDogDetails
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Dog Details'
  ClientHeight = 224
  ClientWidth = 239
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  object btnBack: TButton
    Left = 60
    Top = 150
    Width = 111
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = '&Back'
    TabOrder = 0
    OnClick = btnBackClick
  end
  object btnDisplayDetails: TButton
    Left = 60
    Top = 90
    Width = 111
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = '&Display details'
    TabOrder = 1
    OnClick = btnDisplayDetailsClick
  end
  object btnEnterDetails: TButton
    Left = 60
    Top = 30
    Width = 111
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = '&Enter details'
    TabOrder = 2
    OnClick = btnEnterDetailsClick
  end
end
