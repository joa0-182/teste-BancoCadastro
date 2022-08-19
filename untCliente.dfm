object frmCliente: TfrmCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro Clientes'
  ClientHeight = 500
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 128
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 128
    Top = 96
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 128
    Top = 136
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 128
    Top = 176
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 32
    Width = 134
    Height = 21
    DataField = 'C'#243'digo'
    DataSource = dts
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 128
    Top = 72
    Width = 300
    Height = 21
    DataField = 'Nome'
    DataSource = dts
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 128
    Top = 112
    Width = 300
    Height = 21
    DataField = 'Endere'#231'o'
    DataSource = dts
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 128
    Top = 152
    Width = 147
    Height = 21
    DataField = 'CPF'
    DataSource = dts
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 128
    Top = 192
    Width = 186
    Height = 21
    DataField = 'Telefone'
    DataSource = dts
    MaxLength = 14
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 380
    Width = 527
    Height = 120
    Align = alBottom
    DataSource = dts
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 355
    Width = 527
    Height = 25
    DataSource = dts
    Align = alBottom
    TabOrder = 6
  end
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\etec\Deskt' +
      'op\Cliente\cliente.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 304
  end
  object Cliente: TADODataSet
    Active = True
    Connection = conexao
    CursorType = ctStatic
    CommandText = 'select * from Cliente'
    Parameters = <>
    Left = 48
    Top = 304
    object ClienteCódigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object ClienteNome: TWideStringField
      FieldName = 'Nome'
      Size = 255
    end
    object ClienteEndereço: TWideStringField
      FieldName = 'Endere'#231'o'
      Size = 255
    end
    object ClienteCPF: TWideStringField
      FieldName = 'CPF'
      Size = 11
    end
    object ClienteTelefone: TWideStringField
      FieldName = 'Telefone'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 14
    end
  end
  object dts: TDataSource
    DataSet = Cliente
    Left = 88
    Top = 304
  end
end
