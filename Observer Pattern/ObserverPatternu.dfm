object Form1: TForm1
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Form1'
  ClientHeight = 371
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  object lblCurrentLevel: TLabel
    Left = 275
    Top = 19
    Width = 25
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'LVL.'
  end
  object lblLevel: TLabel
    Left = 255
    Top = 47
    Width = 80
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
  end
  object btnLevelDown: TButton
    Left = 295
    Top = 80
    Width = 94
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Level Down'
    TabOrder = 0
    OnClick = btnLevelDownClick
  end
  object gpbStat: TGroupBox
    Left = 9
    Top = 151
    Width = 531
    Height = 211
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Statistics'
    TabOrder = 1
    object lblStrength: TLabel
      Left = 60
      Top = 60
      Width = 59
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Strength:'
    end
    object lblSpeed: TLabel
      Left = 61
      Top = 100
      Width = 45
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Speed:'
    end
    object lblAgility: TLabel
      Left = 60
      Top = 150
      Width = 46
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Agility:'
    end
    object lblDexterity: TLabel
      Left = 300
      Top = 60
      Width = 63
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Dexterity:'
    end
    object lblIntelligence: TLabel
      Left = 300
      Top = 110
      Width = 80
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Intelligence:'
    end
    object lblCStrength: TLabel
      Left = 127
      Top = 60
      Width = 76
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
    end
    object lblCSpeed: TLabel
      Left = 127
      Top = 100
      Width = 99
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
    end
    object lblCAgility: TLabel
      Left = 122
      Top = 150
      Width = 129
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
    end
    object lblCDexterity: TLabel
      Left = 380
      Top = 60
      Width = 111
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
    end
    object lblCIntelligence: TLabel
      Left = 388
      Top = 113
      Width = 103
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
    end
  end
  object btnLevelUp: TButton
    Left = 140
    Top = 80
    Width = 94
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Level Up'
    TabOrder = 2
    OnClick = btnLevelUpClick
  end
end
