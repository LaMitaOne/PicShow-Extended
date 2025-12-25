{------------------------------------------------------------------------------}
{                                                                              }
{  PicShow v4.20                                                               }
{  by Kambiz R. Khojasteh                                                      }
{                                                                              }
{  kambiz@delphiarea.com                                                       }
{  http://www.delphiarea.com                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

{$I DELPHIAREA.INC}

unit PSReg;

interface

uses
  Windows, Classes, 
  {$IFDEF COMPILER6_UP} DesignIntf, DesignEditors {$ELSE} DsgnIntf {$ENDIF};

type

  {$IFDEF COMPILER6_UP}
  TGetPropEditProc = procedure(const Prop: IProperty) of object;
  {$ENDIF}

{ TPicShowComponentEditor }

  TPicShowComponentEditor = class(TComponentEditor)
  protected
    procedure CallPropertyEditor(Proc: TGetPropEditProc);
    {$IFDEF COMPILER6_UP}
    procedure PictureEditor(const Prop: IProperty);
    procedure BackgroundEditor(const Prop: IProperty);
    {$ELSE}
    procedure PictureEditor(Prop: TPropertyEditor);
    procedure BackgroundEditor(Prop: TPropertyEditor);
    {$ENDIF}
  public
    function GetVerbCount: Integer; override;
    function GetVerb(Index: Integer): string; override;
    procedure ExecuteVerb(Index: Integer); override;
    procedure Edit; override;
  end;

{ TStyleNamePropertyEditor }

  TStyleNamePropertyEditor = class(TEnumProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
    function GetValue: string; override;
    procedure SetValue(const Value: string); override;
  end;

{ TAboutPropertyEditor }

  TAboutPropertyEditor = class(TStringProperty)
  public
    procedure Edit; override;
    function GetValue: string; override;
    function GetAttributes: TPropertyAttributes; override;
  end;

procedure Register;

implementation

uses
  PicShow, PSEffect, TypInfo, Dialogs;

procedure ShowAboutBox(const ClassName: String);
const
  AboutStr = ' v4.20'                                      + #13#10
           + 'Copyright(c) 1999-2010 Kambiz R. Khojasteh'  + #13#10
           + 'All rights reserved.'                        + #13#10
           +                                                 #13#10
           + 'kambiz@delphiarea.com'                       + #13#10
           + 'http://www.delphiarea.com';
begin
  MessageDlg(ClassName + AboutStr, mtInformation, [mbOK], 0);
end;

{ TPicShowComponentEditor }

function TPicShowComponentEditor.GetVerbCount: Integer;
begin
  Result := 7;
end;

function TPicShowComponentEditor.GetVerb(Index: Integer): string;
begin
  case Index of
    0: Result := 'About ' + Component.ClassName + '...';
    1: Result := '-';
    2: Result := 'Picture Editor...';
    3: Result := 'Background Editor...';
    4: Result := '-';
    5: if TCustomPicShow(Component).Busy then
         Result := 'Stop Transition'
       else
         Result := 'Start Transition';
    6: if TCustomPicShow(Component).Busy then
         Result := 'Can''t Clear Screen'
       else
         Result := 'Clear Screen';
  else
    Result := '';
  end;
end;

procedure TPicShowComponentEditor.ExecuteVerb(Index: Integer);
begin
  case Index of
    0: ShowAboutBox(Component.ClassName);
    1: {Nothing to do};
    2: CallPropertyEditor(PictureEditor);
    3: CallPropertyEditor(BackgroundEditor);
    4: {Nothing to do};
    5: if TCustomPicShow(Component).Busy then
         TCustomPicShow(Component).Stop
       else
         TCustomPicShow(Component).Execute;
    6: if not TCustomPicShow(Component).Busy then
         TCustomPicShow(Component).Clear;
  else
    inherited ExecuteVerb(Index);
  end;
end;

procedure TPicShowComponentEditor.Edit;
begin
  ExecuteVerb(2);
end;

procedure TPicShowComponentEditor.CallPropertyEditor(Proc: TGetPropEditProc);
var
  {$IFDEF COMPILER6_UP}
  List: IDesignerSelections;
  {$ELSE}
  {$IFDEF COMPILER5_UP}
  List: TDesignerSelectionList;
  {$ELSE}
  List: TComponentList;
  {$ENDIF}
  {$ENDIF}
begin
  {$IFDEF COMPILER6_UP}
  List := TDesignerSelections.Create;
  {$ELSE}
  {$IFDEF COMPILER5_UP}
  List := TDesignerSelectionList.Create;
  {$ELSE}
  List := TComponentList.Create;
  {$ENDIF}
  {$ENDIF}
  try
    List.Add(Component);
    GetComponentProperties(List, [tkClass], Designer, Proc);
  finally
    {$IFNDEF COMPILER6_UP}
    List.Free;
    {$ENDIF}
  end;
end;

{$IFDEF COMPILER6_UP}
procedure TPicShowComponentEditor.PictureEditor(const Prop: IProperty);
{$ELSE}
procedure TPicShowComponentEditor.PictureEditor(Prop: TPropertyEditor);
{$ENDIF}
begin
  if Prop.GetName = 'Picture' then
    Prop.Edit;
end;

{$IFDEF COMPILER6_UP}
procedure TPicShowComponentEditor.BackgroundEditor(const Prop: IProperty);
{$ELSE}
procedure TPicShowComponentEditor.BackgroundEditor(Prop: TPropertyEditor);
{$ENDIF}
begin
  if Prop.GetName = 'BgPicture' then
    Prop.Edit;
end;

{ TStyleNamePropertyEditor }

function TStyleNamePropertyEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [paMultiSelect, paValueList, paSortList, paRevertable];
end;

procedure TStyleNamePropertyEditor.GetValues(Proc: TGetStrProc);
var
  Style: TShowStyle;
begin
  Proc(CustomEffectName);
  for Style := Low(PSEffects) to High(PSEffects) do
    Proc(PSEffects[Style].Name);
end;

function TStyleNamePropertyEditor.GetValue: string;
begin
  Result := GetStrValue;
end;

procedure TStyleNamePropertyEditor.SetValue(const Value: string);
begin
  SetStrValue(Value);
end;

{ TAboutPropertyEditor }

function TAboutPropertyEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog, paReadOnly, paMultiSelect];
end;

function TAboutPropertyEditor.GetValue: string;
begin
  Result := '(About)'
end;

procedure TAboutPropertyEditor.Edit;
begin
  ShowAboutBox(GetComponent(0).ClassName);
end;

procedure Register;
begin
  RegisterComponents('Delphi Area', [TPicShow, TDBPicShow]);
  RegisterComponentEditor(TPicShow, TPicShowComponentEditor);
  RegisterPropertyEditor(TypeInfo(String), TCustomPicShow, 'StyleName', TStyleNamePropertyEditor);
  RegisterPropertyEditor(TypeInfo(TAbout), TCustomPicShow, 'About', TAboutPropertyEditor);
end;

end.
