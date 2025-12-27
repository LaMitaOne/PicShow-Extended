{ TPicshow 4.21}

{Based on PicShow 4.20 by DelphiArea http://www.delphiarea.com/products/delphi-components/picshow/
Original copyright: Mohammad Hossein Daneshpajouh
Extended with 39 additional effects by Lara Miriam Tamy Reschke â€“ total 189 effects}

{$I DELPHIAREA.INC}

// If you have the GraphicEx library (http://www.lischke-online.de), by enabling
// the following directive, DBPicShow uses the GraphicEx library to detect image
// format of the blob fields. Otherwise, DBPicShow can only detect Bitmap, JPEG,
// Metafile, and PNG (Delphi 2009 and later) image formats, and for other image
// formats you have to provide a handler for OnGetGraphicClass event.
{.$DEFINE GRAPHICEX}

unit PicShow;
                   
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBCtrls, PSEffect;

const
  PS_TRANSITIONCOMPLETED = WM_USER + 1;
  PS_PROGRESSCHANGED     = WM_USER + 2;

type

  TPercent = 0..100;

  TShowStyle = 0..High(PSEffects);

  TBackgroundMode = (bmNone, bmTiled, bmStretched, bmCentered);

  TCustomDrawEvent = procedure(Sender: TObject; Picture, Screen: TBitmap) of object;

  TAbout = class(TObject);

  {$IFNDEF COMPILER4_UP}
  TBorderWidth = 0..MaxInt;
  {$ENDIF}

{ TCustomPicShow }

  TCustomPicShow = class(TCustomControl)
  private
    fAbout: TAbout;
    fPicture: TPicture;
    fBgPicture: TPicture;
    fBgMode: TBackgroundMode;
    fFrameColor: TColor;
    fFrameWidth: TBorderWidth;
    {$IFNDEF COMPILER4_UP}
    fAutoSize: Boolean;
    {$ENDIF}
    fCenter: Boolean;
    fStretch: Boolean;
    fProportional: Boolean;
    fOverDraw: Boolean;
    fThreaded: Boolean;
    fManual: Boolean;
    fStyle: TShowStyle;
    fStep: Word;
    fDelay: Word;
    fProgress: TPercent;
    fReverse: Boolean;
    fBusy: Boolean;
    fExactTiming: Boolean;
    fOnChange: TNotifyEvent;
    fOnProgress: TNotifyEvent;
    fOnComplete: TNotifyEvent;
    fOnCustomDraw: TCustomDrawEvent;
    fOnMouseEnter: TNotifyEvent;
    fOnMouseLeave: TNotifyEvent;
    fOnBeforeNewFrame: TCustomDrawEvent;
    fOnAfterNewFrame: TCustomDrawEvent;
    fOnStart: TCustomDrawEvent;
    fOnStop: TNotifyEvent;
    Display: TBitmap;
    DisplayRect: TRect;
    PicRect: TRect;
    Stopping: Boolean;
    DynamicOldPic: Boolean;
    OldPic: TBitmap;
    Pic: TBitmap;
    TimerID: Integer;
    TimerResolution: Cardinal;
    LastUpdateTime: Cardinal;
    CS: TRTLCriticalSection;
    procedure SetPicture(Value: TPicture);
    procedure SetBgPicture(Value: TPicture);
    procedure SetBgMode(Value: TBackgroundMode);
    procedure SetFrameColor(Value: TColor);
    procedure SetFrameWidth(Value: TBorderWidth);
    {$IFNDEF COMPILER4_UP}
    procedure SetAutoSize(Value: Boolean);
    {$ENDIF}
    procedure SetCenter(Value: Boolean);
    procedure SetStretch(Value: Boolean);
    procedure SetProportional(Value: Boolean);
    procedure SetStep(Value: Word);
    procedure SetProgress(Value: TPercent);
    procedure SetManual(Value: Boolean);
    procedure SetStyle(Value: TShowStyle);
    procedure SetStyleName(const Value: String);
    function GetStyleName: String;
    function GetEmpty: Boolean;
    procedure PictureChange(Sender: TObject);
    procedure BgPictureChange(Sender: TObject);
    procedure WMEraseBkgnd(var Msg: TWMEraseBkgnd); message WM_ERASEBKGND;
    procedure WMPaint(var Msg: TWMPaint); message WM_PAINT;
    procedure WMSize(var Msg: TWMSize); message WM_SIZE;
    procedure WMDestroy(var Msg: TWMDestroy); message WM_DESTROY;
    procedure CMMouseEnter(var Msg: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Msg: TMessage); message CM_MOUSELEAVE;
    procedure ProgressChanged(var Msg: TMessage); message PS_PROGRESSCHANGED;
    procedure TransitionCompleted(var Msg: TMessage); message PS_TRANSITIONCOMPLETED;
  protected
    {$IFDEF COMPILER4_UP}
    function CanAutoSize(var NewWidth, NewHeight: Integer): Boolean; override;
    {$ELSE}
    procedure AdjustSize;
    {$ENDIF}
    procedure Paint; override;
    procedure Prepare;
    procedure Unprepare;
    procedure Animate;
    procedure DrawBackground(Canvas: TCanvas; const Rect: TRect); virtual;
    procedure Draw(Canvas: TCanvas); virtual;
    function UpdateProgress: Boolean;
    procedure UpdateDisplay;
    procedure UpdateDisplayRect;
    procedure UpdateOldPic;
    procedure StartTimer;
    procedure StopTimer;
    procedure DoChange; virtual;
    procedure DoProgress; virtual;
    procedure DoCustomDraw(Picture, Screen: TBitmap); virtual;
    procedure DoBeforeNewFrame(Picture, Screen: TBitmap);  virtual;
    procedure DoAfterNewFrame(Picture, Screen: TBitmap);  virtual;
    procedure DoComplete; virtual;
    procedure DoStart(NewPicture, OldPicture: TBitmap); virtual;
    procedure DoStop; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Execute; virtual;
    procedure Stop; virtual;
    procedure Clear; virtual;
    function GetStyleNames(Names: TStrings): Integer;
    property Busy: Boolean read fBusy;
    property Empty: Boolean read GetEmpty;
    property Progress: TPercent read fProgress write SetProgress;
  protected
    {$IFNDEF COMPILER4_UP}
    property AutoSize: Boolean read fAutoSize write SetAutoSize default False;
    {$ENDIF}
    property BgMode: TBackgroundMode read fBgMode write SetBgMode default bmTiled;
    property BgPicture: TPicture read fBgPicture write SetBgPicture;
    property Center: Boolean read fCenter write SetCenter default False;
    property Delay: Word read fDelay write fDelay default 40;
    property ExactTiming: Boolean read fExactTiming write fExactTiming default False;
    property FrameColor: TColor read fFrameColor write SetFrameColor default clActiveBorder;
    property FrameWidth: TBorderWidth read fFrameWidth write SetFrameWidth default 0;
    property Manual: Boolean read fManual write SetManual default False;
    property OverDraw: Boolean read fOverDraw write fOverDraw default True;
    property Picture: TPicture read fPicture write SetPicture;
    property Reverse: Boolean read fReverse write fReverse default False;
    property Stretch: Boolean read fStretch write SetStretch default False;
    property Proportional: Boolean read fProportional write SetProportional default False;
    property Step: Word read fStep write SetStep default 4;
    property Style: TShowStyle read fStyle write SetStyle default 51;
    property StyleName: String read GetStyleName write SetStyleName stored False;
    property Threaded: Boolean read fThreaded write fThreaded default True;
    property OnAfterNewFrame: TCustomDrawEvent read fOnAfterNewFrame write fOnAfterNewFrame;
    property OnBeforeNewFrame: TCustomDrawEvent read fOnBeforeNewFrame write fOnBeforeNewFrame;
    property OnCustomDraw: TCustomDrawEvent read fOnCustomDraw write fOnCustomDraw;
    property OnChange: TNotifyEvent read fOnChange write fOnChange;
    property OnComplete: TNotifyEvent read fOnComplete write fOnComplete;
    property OnMouseEnter: TNotifyEvent read fOnMouseEnter write fOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read fOnMouseLeave write fOnMouseLeave;
    property OnProgress: TNotifyEvent read fOnProgress write fOnProgress;
    property OnStart: TCustomDrawEvent read fOnStart write fOnStart;
    property OnStop: TNotifyEvent read fOnStop write fOnStop;
  published
    property About: TAbout read fAbout write fAbout stored False;
  end;

{ TPicShow }

  TPicShow = class(TCustomPicShow)
  published
    property Align;
    {$IFDEF COMPILER4_UP}
    property Anchors;
    {$ENDIF}
    property AutoSize;
    {$IFDEF COMPILER4_UP}
    property BevelEdges;
    property BevelInner;
    property BevelOuter;
    property BevelKind;
    property BevelWidth;
    {$ENDIF}
    property BgMode;
    property BgPicture;
    {$IFDEF COMPILER4_UP}
    property BorderWidth;
    {$ENDIF}
    property Center;
    property Color;
    {$IFDEF COMPILER4_UP}
    property Constraints;
    {$ENDIF}
    property Delay;
    {$IFDEF COMPILER4_UP}
    property DockSite;
    {$ENDIF}
    property DragCursor;
    {$IFDEF COMPILER4_UP}
    property DragKind;
    {$ENDIF}
    property DragMode;
    property Enabled;
    property ExactTiming;
    property FrameColor;
    property FrameWidth;
    property Height;
    property Manual;
    property OverDraw;
    property ParentColor;
    property ParentShowHint;
    property Picture;
    property PopupMenu;
    property Proportional;
    property ShowHint;
    property Reverse;
    property Stretch;
    property Step;
    property Style;
    property StyleName;
    property TabOrder;
    property TabStop;
    property Threaded;
    property Visible;
    property Width;
    property OnAfterNewFrame;
    property OnBeforeNewFrame;
    {$IFDEF COMPILER4_UP}
    property OnCanResize;
    {$ENDIF}
    property OnClick;
    property OnChange;
    property OnComplete;
    {$IFDEF COMPILER4_UP}
    property OnConstrainedResize;
    {$ENDIF}
    property OnCustomDraw;
    property OnDblClick;
    {$IFDEF COMPILER4_UP}
    property OnDockDrop;
    property OnDockOver;
    {$ENDIF}
    property OnDragDrop;
    property OnDragOver;
    {$IFDEF COMPILER4_UP}
    property OnEndDock;
    {$ENDIF}
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnMouseDown;
    property OnMouseEnter;
    property OnMouseLeave;
    property OnMouseMove;
    property OnMouseUp;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnProgress;
    {$IFDEF COMPILER4_UP}
    property OnResize;
    {$ENDIF}
    property OnStart;
    {$IFDEF COMPILER4_UP}
    property OnStartDock;
    {$ENDIF}
    property OnStartDrag;
    property OnStop;
    {$IFDEF COMPILER4_UP}
    property OnUnDock;
    {$ENDIF}
  end;

{ TDBPicShow }

  TGetGraphicClassEvent = procedure(Sender: TObject;
    var GraphicClass: TGraphicClass) of object;

  TDBPicShow = class(TCustomPicShow)
  private
    fOnAfterLoadPicture: TNotifyEvent;
    fOnBeforeLoadPicture: TNotifyEvent;
    fOnGetGraphicClass: TGetGraphicClassEvent;
    fDataLink: TFieldDataLink;
    fAutoDisplay: Boolean;
    fModified: Boolean;
    fLoaded: Boolean;
    fSkipLoading: Boolean;
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetField: TField;
    function GetReadOnly: Boolean;
    procedure SetAutoDisplay(Value: Boolean);
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetReadOnly(Value: Boolean);
    procedure UpdateData(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure EditingChange(Sender: TObject);
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
  protected
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    procedure DoChange; override;
    function FindGraphicClass(Stream: TMemoryStream): TGraphicClass; virtual;
    procedure LoadPictureFromStream(Stream: TMemoryStream;
      GraphicClass: TGraphicClass); virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LoadPicture;
    property Field: TField read GetField;
    property Picture;
  published
    property AutoDisplay: Boolean read FAutoDisplay write SetAutoDisplay default True;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
    property Align;
    {$IFDEF COMPILER4_UP}
    property Anchors;
    {$ENDIF}
    property AutoSize;
    {$IFDEF COMPILER4_UP}
    property BevelEdges;
    property BevelInner;
    property BevelOuter;
    property BevelKind;
    property BevelWidth;
    {$ENDIF}
    property BgMode;
    property BgPicture;
    {$IFDEF COMPILER4_UP}
    property BorderWidth;
    {$ENDIF}
    property Center;
    property Color;
    {$IFDEF COMPILER4_UP}
    property Constraints;
    {$ENDIF}
    property Delay;
    {$IFDEF COMPILER4_UP}
    property DockSite;
    property DragKind;
    {$ENDIF}
    property DragCursor;
    property DragMode;
    property Enabled;
    property ExactTiming;
    property FrameColor;
    property FrameWidth;
    property Height;
    property Manual;
    property OverDraw;
    property ParentColor;
    property ParentShowHint;
    property PopupMenu;
    property Proportional;
    property ShowHint;
    property Reverse;
    property Stretch;
    property Step;
    property Style;
    property StyleName;
    property TabOrder;
    property TabStop;
    property Threaded;
    property Visible;
    property Width;
    property OnAfterLoadPicture: TNotifyEvent read fOnAfterLoadPicture write fOnAfterLoadPicture;
    property OnAfterNewFrame;
    property OnBeforeNewFrame;
    property OnBeforeLoadPicture: TNotifyEvent read fOnBeforeLoadPicture write fOnBeforeLoadPicture;
    {$IFDEF COMPILER4_UP}
    property OnCanResize;
    {$ENDIF}
    property OnClick;
    {$IFDEF COMPILER4_UP}
    property OnConstrainedResize;
    {$ENDIF}
    property OnComplete;
    property OnCustomDraw;
    property OnDblClick;
    {$IFDEF COMPILER4_UP}
    property OnDockDrop;
    property OnDockOver;
    {$ENDIF}
    property OnDragDrop;
    property OnDragOver;
    {$IFDEF COMPILER4_UP}
    property OnEndDock;
    {$ENDIF}
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGetGraphicClass: TGetGraphicClassEvent read fOnGetGraphicClass write fOnGetGraphicClass;
    property OnMouseDown;
    property OnMouseEnter;
    property OnMouseLeave;
    property OnMouseMove;
    property OnMouseUp;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnProgress;
    {$IFDEF COMPILER4_UP}
    property OnResize;
    {$ENDIF}
    property OnStart;
    {$IFDEF COMPILER4_UP}
    property OnStartDock;
    {$ENDIF}
    property OnStartDrag;
    property OnStop;
    {$IFDEF COMPILER4_UP}
    property OnUnDock;
    {$ENDIF}
  end;

procedure DrawTile(Canvas: TCanvas; const Rect: TRect; Graphic: TGraphic);

implementation

uses
  {$IFDEF GRAPHICEX} GraphicEx, {$ENDIF}
  {$IFDEF COMPILER6_UP} Types, {$ENDIF}
  {$IFDEF COMPILER2009_UP} PngImage, {$ENDIF}
  JPEG, mmSystem;

{ Graphic Format Signatures }

type
  TGraphicSign = record
    GraphicClass: TGraphicClass;
    Offset, Length: DWORD;
    Signature: PAnsiChar;
  end;

const
  GraphicSigns: array[1..5{$IFDEF COMPILER2009_UP}+1{$ENDIF}] of TGraphicSign = (
    (GraphicClass: TBitmap;     Offset: 0;  Length: 2;  Signature: 'BM'),               // BMP
    (GraphicClass: TJPEGImage;  Offset: 6;  Length: 4;  Signature: 'JFIF'),             // JPG
    (GraphicClass: TJPEGImage;  Offset: 6;  Length: 4;  Signature: 'Exif'),             // JPG
    {$IFDEF COMPILER2009_UP}
    (GraphicClass: TPngImage;   Offset: 1;  Length: 3;  Signature: 'PNG'),              // PNG
    {$ENDIF}
    (GraphicClass: TMetafile;   Offset: 41; Length: 3;  Signature: 'EMF'),              // EMF
    (GraphicClass: TMetafile;   Offset: 0;  Length: 4;  Signature: #$D7#$CD#$C6#$9A)    // WMF
  );

{ Helper Functions }

procedure DrawTile(Canvas: TCanvas; const Rect: TRect; Graphic: TGraphic);
var
  DC: HDC;
  WR, R: TRect;
  W, H: Integer;
  SavedDC: Integer;
begin
  W := Graphic.Width;
  H := Graphic.Height;
  DC := Canvas.Handle;
  SavedDC := SaveDC(DC);
  try
    IntersectClipRect(DC, Rect.Left, Rect.Top, Rect.Right, Rect.Bottom);
    // Calculates actual visible bounds
    GetClipBox(DC, WR);
    Dec(WR.Left, (WR.Left - Rect.Left) mod W);
    Dec(WR.Top, (WR.Top - Rect.Top) mod H);
    // Draws the tiles
    R.Top := WR.Top;
    R.Bottom := R.Top + H;
    while R.Top < WR.Bottom do
    begin
      R.Left := WR.Left;
      R.Right := R.Left + W;
      while R.Left < WR.Right do
      begin
        if RectVisible(DC, R) then
          Canvas.StretchDraw(R, Graphic);
        Inc(R.Left, W);
        Inc(R.Right, W);
      end;
      Inc(R.Top, H);
      Inc(R.Bottom, H);
    end;
  finally
    RestoreDC(DC, SavedDC);
  end;
end;

{$IFNDEF COMPILER5_UP}
// This procedure is copied from Delphi 5 SysUtils uint
procedure FreeAndNil(var Obj);
var
  P: TObject;
begin
  P := TObject(Obj);
  TObject(Obj) := nil;  // clear the reference before destroying the object
  P.Free;
end;
{$ENDIF}

{ Timer Callback Function }

procedure TimerProc(uTimerID, uMessage, dwUser, dw1, dw2: DWORD); stdcall;
begin
  if not TCustomPicShow(dwUser).UpdateProgress then
  begin
    TCustomPicShow(dwUser).StopTimer;
    PostMessage(TCustomPicShow(dwUser).Handle, PS_TRANSITIONCOMPLETED, 0, 0);
  end;
end;

{ TCustomPicShow }

constructor TCustomPicShow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csOpaque];
  InitializeCriticalSection(CS);
  Display := TBitmap.Create;
  fPicture := TPicture.Create;
  fPicture.OnChange := PictureChange;
  fBgPicture := TPicture.Create;
  fBgPicture.OnChange := BgPictureChange;
  fBgMode := bmTiled;
  fStep := 4;
  fDelay := 40;
  fStyle := 51;
  fThreaded := True;
  fOverDraw := True;
  fFrameColor := clActiveBorder;
  Width := 100;
  Height := 100;
end;

destructor TCustomPicShow.Destroy;
begin
  Stop;
  Display.Free;
  Picture.Free;
  BgPicture.Free;
  DeleteCriticalSection(CS);
  inherited Destroy;
end;

procedure TCustomPicShow.SetPicture(Value: TPicture);
begin
  Picture.Assign(Value);
end;

procedure TCustomPicShow.SetBgPicture(Value: TPicture);
begin
  BgPicture.Assign(Value);
end;

procedure TCustomPicShow.SetBgMode(Value: TBackgroundMode);
begin
  if BgMode <> Value then
  begin
    fBgMode := Value;
    if BgPicture.Graphic <> nil then
    begin
      if DynamicOldPic and Assigned(OldPic) then
        UpdateOldPic;
      Invalidate;
    end;
  end;
end;

procedure TCustomPicShow.SetFrameColor(Value: TColor);
begin
  if FrameColor <> Value then
  begin
    fFrameColor := Value;
    if (FrameWidth <> 0) and not Display.Empty then
      Invalidate;
  end;
end;

procedure TCustomPicShow.SetFrameWidth(Value: TBorderWidth);
begin
  if FrameWidth <> Value then
  begin
    fFrameWidth := Value;
    if AutoSize then
      AdjustSize;
    if not Display.Empty then
    begin
      UpdateDisplayRect;
      Invalidate;
    end;
  end;
end;

procedure TCustomPicShow.SetCenter(Value: Boolean);
begin
  if Center <> Value then
  begin
    fCenter := Value;
    UpdateDisplayRect;
    if not Display.Empty then
      Invalidate;
  end;
end;

procedure TCustomPicShow.SetStretch(Value: Boolean);
begin
  if Stretch <> Value then
  begin
    fStretch := Value;
    UpdateDisplayRect;
    if not Display.Empty then
      Invalidate;
  end;
end;

procedure TCustomPicShow.SetProportional(Value: Boolean);
begin
  if Proportional <> Value then
  begin
    fProportional := Value;
    UpdateDisplayRect;
    if not Display.Empty then
      Invalidate;
  end;
end;

procedure TCustomPicShow.SetStep(Value: Word);
begin
  if Value <= Low(TPercent) then
    fStep := Succ(Low(TPercent))
  else if Value > High(TPercent) then
    fStep := Pred(High(TPercent))
  else
    fStep := Value;
end;

procedure TCustomPicShow.SetStyle(Value: TShowStyle);
begin
  if (Style <> Value) and (Value in [Low(TShowStyle)..High(TShowStyle)]) then
  begin
    fStyle := Value;
    if Busy and Manual and not Stopping then
    begin
      UpdateDisplay;
      InvalidateRect(Handle, @DisplayRect, False);
    end;
  end;
end;

procedure TCustomPicShow.SetStyleName(const Value: String);
var
  TheStyle: TShowStyle;
begin
  if AnsiCompareText(CustomEffectName, Value) = 0 then
    Style := 0
  else
    for TheStyle := Low(PSEffects) to High(PSEffects) do
      if AnsiCompareText(PSEffects[TheStyle].Name, Value) = 0 then
      begin
        Style := TheStyle;
        Break;
      end;
end;

function TCustomPicShow.GetStyleName: String;
begin
  if Style = 0 then
    Result := CustomEffectName
  else
    Result := PSEffects[Style].Name;
end;

function TCustomPicShow.GetEmpty: Boolean;
begin
  Result := (Picture.Graphic = nil) or Picture.Graphic.Empty;
end;

procedure TCustomPicShow.PictureChange(Sender: TObject);
begin
  if not (csDestroying in ComponentState) then
  begin
    if (Picture.Graphic <> nil) and AutoSize then
      AdjustSize;
    DoChange;
  end;
end;

procedure TCustomPicShow.BgPictureChange(Sender: TObject);
begin
  if BgMode <> bmNone then
  begin
    if DynamicOldPic and Assigned(OldPic) then
      UpdateOldPic;
    Invalidate;
  end;
end;

procedure TCustomPicShow.SetProgress(Value: TPercent);
var
  DC: HDC;
begin
  if Value < Low(TPercent) then
    Value := Low(TPercent)
  else if Value > High(TPercent) then
    Value := High(TPercent);
  if Busy and (Progress <> Value) then
  begin
    fProgress := Value;
    UpdateDisplay;
    if HandleAllocated then
    begin
      EnterCriticalSection(CS);
      try
        Display.Canvas.Lock;
        try
          DC := GetDC(WindowHandle);
          try
            SetStretchBltMode(DC, COLORONCOLOR);
            with DisplayRect do
              StretchBlt(DC, Left, Top, Right - Left, Bottom - Top,
                Display.Canvas.Handle, 0, 0, PicRect.Right, PicRect.Bottom, SRCCOPY);
          finally
            ReleaseDC(WindowHandle, DC);
          end;
        finally
          Display.Canvas.Unlock;
        end;
        ValidateRect(WindowHandle, @DisplayRect);
      finally
        LeaveCriticalSection(CS);
      end;
      if Threaded and not Manual then
        PostMessage(WindowHandle, PS_PROGRESSCHANGED, fProgress, 0)
      else
        DoProgress;
    end
    else
      DoProgress;
  end;
end;

procedure TCustomPicShow.SetManual(Value: Boolean);
begin
  if Manual <> Value then
  begin
    fManual := Value;
    StopTimer;
    if not Busy then
      if Reverse then
        fProgress := High(TPercent)
      else
        fProgress := Low(TPercent)
    else if not Manual then
      Animate;
  end;
end;

{$IFNDEF COMPILER4_UP}
procedure TCustomPicShow.SetAutoSize(Value: Boolean);
begin
  if AutoSize <> Value then
  begin
    fAutoSize := Value;
    if AutoSize then AdjustSize;
  end;
end;
{$ENDIF}

function TCustomPicShow.GetStyleNames(Names: TStrings): Integer;
var
  I: Integer;
begin
  Result := 0;
  Names.BeginUpdate;
  try
    for I := Low(PSEffects) to High(PSEffects) do
    begin
      Names.Add(PSEffects[I].Name);
      Inc(Result);
    end;
  finally
    Names.EndUpdate;
  end;
end;

procedure TCustomPicShow.ProgressChanged(var Msg: TMessage);
begin
  DoProgress;
end;

procedure TCustomPicShow.TransitionCompleted(var Msg: TMessage);
begin
  Unprepare;
end;

procedure TCustomPicShow.WMEraseBkgnd(var Msg: TWMEraseBkgnd);
begin
  Msg.Result := 1;
end;

procedure TCustomPicShow.WMPaint(var Msg: TWMPaint);
var
  DC: HDC;
  PS: TPaintStruct;
  DrawImageOnly: Boolean;
begin
  EnterCriticalSection(CS);
  try
    DC := Msg.DC;
    if DC = 0 then
      DC := BeginPaint(Handle, PS)
    else
      GetClipBox(DC, PS.rcPaint);
    try
      with PS.rcPaint do
      begin
        DrawImageOnly := not Display.Empty
          and (Left >= DisplayRect.Left) and (Top >= DisplayRect.Top)
          and (Right <= DisplayRect.Right) and (Bottom <= DisplayRect.Bottom);
      end;
      if DrawImageOnly then
      begin
        Display.Canvas.Lock;
        try
          SetStretchBltMode(DC, COLORONCOLOR);
          with DisplayRect do
            StretchBlt(DC, Left, Top, Right - Left, Bottom - Top,
              Display.Canvas.Handle, 0, 0, PicRect.Right, PicRect.Bottom, SRCCOPY);
        finally
          Display.Canvas.Unlock;
        end;
      end
      else
        PaintWindow(DC);
    finally
      if Msg.DC = 0 then
        EndPaint(Handle, PS);
    end;
    Msg.Result := 0;
  finally
    LeaveCriticalSection(CS);
  end;
end;

procedure TCustomPicShow.CMMouseEnter(var Msg: TMessage);
begin
  inherited;
  if Assigned(fOnMouseEnter) then fOnMouseEnter(Self);
end;

procedure TCustomPicShow.CMMouseLeave(var Msg: TMessage);
begin
  inherited;
  if Assigned (fOnMouseLeave) then fOnMouseLeave(Self);
end;

procedure TCustomPicShow.WMSize(var Msg: TWMSize);
begin
  inherited;
  UpdateDisplayRect;
  if not Display.Empty then
    Invalidate;
end;

procedure TCustomPicShow.WMDestroy(var Msg: TWMDestroy);
begin
  Stop;
  inherited;
end;

procedure TCustomPicShow.DrawBackground(Canvas: TCanvas; const Rect: TRect);
var
  G: TGraphic;
  FillStyle: TBackgroundMode;
  SavedDC: Integer;
  R: TRect;
begin
  if RectVisible(Canvas.Handle, Rect) then
  begin
    BgPicture.OnChange := nil;
    try
      G := BgPicture.Graphic;
      if Assigned(G) and not G.Empty then
        FillStyle := BgMode
      else
        FillStyle := bmNone;
      case FillStyle of
        bmTiled:
          DrawTile(Canvas, Rect, G);
        bmStretched:
          Canvas.StretchDraw(Rect, G);
        bmCentered:
        begin
          R.Left := ((Rect.Right - Rect.Left) - G.Width) div 2;
          R.Top := ((Rect.Bottom - Rect.Top) - G.Height) div 2;
          R.Right := R.Left + G.Width;
          R.Bottom := R.Top + G.Height;
          Canvas.StretchDraw(R, G);
          SavedDC := SaveDC(Canvas.Handle);
          try
            ExcludeClipRect(Canvas.Handle, R.Left, R.Top, R.Right, R.Bottom);
            Canvas.Brush.Color := Color;
            Canvas.FillRect(Rect);
          finally
            RestoreDC(Canvas.Handle, SavedDC);
          end;
        end;
      else
        Canvas.Brush.Color := Color;
        Canvas.FillRect(Rect);
      end;
    finally
      BgPicture.OnChange := BgPictureChange;
    end;
  end;
end;

procedure TCustomPicShow.Draw(Canvas: TCanvas);
var
  SavedDC: HDC;
  FrameRect: TRect;
begin
  if not Display.Empty then
  begin
    if RectVisible(Canvas.Handle, DisplayRect) then
    begin
      Display.Canvas.Lock;
      try
        SetStretchBltMode(Canvas.Handle, COLORONCOLOR);
        Canvas.CopyRect(DisplayRect, Display.Canvas, PicRect);
      finally
        Display.Canvas.Unlock;
      end;
    end;
    FrameRect := DisplayRect;
    if FrameWidth <> 0 then
    begin
      InflateRect(FrameRect, FrameWidth, FrameWidth);
      if RectVisible(Canvas.Handle, FrameRect) then
      begin
        Canvas.Pen.Mode := pmCopy;
        Canvas.Pen.Color := FrameColor;
        Canvas.Pen.Width := FrameWidth;
        Canvas.Pen.Style := psInsideFrame;
        Canvas.Brush.Style := bsClear;
        with FrameRect do
          Canvas.Rectangle(Left, Top, Right, Bottom);
      end;
    end;
    SavedDC := SaveDC(Canvas.Handle);
    try
      with FrameRect do
        ExcludeClipRect(Canvas.Handle, Left, Top, Right, Bottom);
      DrawBackground(Canvas, ClientRect);
    finally
      RestoreDC(Canvas.Handle, SavedDC);
    end;
  end
  else
    DrawBackground(Canvas, ClientRect);
end;

{$IFDEF COMPILER4_UP}
function TCustomPicShow.CanAutoSize(var NewWidth, NewHeight: Integer): Boolean;
begin
  Result := True;
  if (Picture.Graphic <> nil) and (Align <> alClient) then
  begin
    if not (Align in [alTop, alBottom]) then
      NewWidth := Picture.Width + 2 * FrameWidth + (Width - ClientWidth);
    if not (Align in [alLeft, alRight]) then
      NewHeight := Picture.Height + 2 * FrameWidth + (Height - ClientHeight);
  end;
end;
{$ENDIF}

{$IFNDEF COMPILER4_UP}
procedure TCustomPicShow.AdjustSize;
begin
  if (Picture.Graphic <> nil) and (Align <> alClient) then
  begin
    if not (Align in [alTop, alBottom]) then
      ClientWidth := Picture.Width + 2 * FrameWidth;
    if not (Align in [alLeft, alRight]) then
      ClientHeight := Picture.Height + 2 * FrameWidth;;
  end;
end;
{$ENDIF}

procedure TCustomPicShow.Paint;
begin
  Draw(Canvas);
end;

procedure TCustomPicShow.UpdateDisplayRect;
var
  cW, cH, pW, pH: Integer;
begin
  EnterCriticalSection(CS);
  try
    cW := ClientWidth - 2 * FrameWidth;
    cH := ClientHeight - 2 * FrameWidth;
    pW := PicRect.Right - PicRect.Left;
    pH := PicRect.Bottom - PicRect.Top;
    if Proportional and (pW > 0) and (pH > 0) and (Stretch or (pW > cW) or (pH > cH)) then
      if (cW / pW) < (cH / pH) then
      begin
        pH := MulDiv(pH, cW, pW);
        pW := cW;
      end
      else
      begin
        pW := MulDiv(pW, cH, pH);
        pH := cH;
      end
    else if Stretch then
    begin
      pW := cW;
      pH := cH;
    end;
    SetRect(DisplayRect, 0, 0, pW, pH);
    if Center then
      OffsetRect(DisplayRect, FrameWidth + (cW - pW) div 2, FrameWidth + (cH - pH) div 2)
    else
      OffsetRect(DisplayRect, FrameWidth, FrameWidth);
    if DynamicOldPic and Assigned(OldPic) then
      UpdateOldPic;
  finally
    LeaveCriticalSection(CS);
  end;
end;

procedure TCustomPicShow.UpdateOldPic;
var
  BackImage: TBitmap;
begin
  EnterCriticalSection(CS);
  try
    BackImage := TBitmap.Create;
    try
      BackImage.Width := DisplayRect.Right - DisplayRect.Left;
      BackImage.Height := DisplayRect.Bottom - DisplayRect.Top;
      SetViewportOrgEx(BackImage.Canvas.Handle, -DisplayRect.Left, -DisplayRect.Top, nil);
      DrawBackground(BackImage.Canvas, ClientRect);
      SetViewportOrgEx(BackImage.Canvas.Handle, 0, 0, nil);
      OldPic.Canvas.Lock;
      try
        OldPic.Canvas.StretchDraw(PicRect, BackImage);
      finally
        OldPic.Canvas.Unlock;
      end;
      if Busy and Manual and not Stopping then
        UpdateDisplay;
    finally
      BackImage.Free;
    end;
  finally
    LeaveCriticalSection(CS);
  end;
end;

procedure TCustomPicShow.StartTimer;
var
  TimeCaps: TTimeCaps;
begin
  if (TimerID = 0) and HandleAllocated and not (csLoading in ComponentState) then
  begin
    if timeGetDevCaps(@TimeCaps, SizeOf(TTimeCaps)) <> TIMERR_NOERROR then
      FillChar(TimeCaps, SizeOf(TTimeCaps), 0);
    if Delay > TimeCaps.wPeriodMax then
      Delay := TimeCaps.wPeriodMax;
    TimerResolution := Delay div 10;
    if TimerResolution < TimeCaps.wPeriodMin then
    begin
      TimerResolution := TimeCaps.wPeriodMin;
      if Delay < TimerResolution then
        Delay := TimerResolution;
    end;
    if Delay > 0 then
    begin
      timeBeginPeriod(TimerResolution);
      TimerID := timeSetEvent(Delay, TimerResolution, @TimerProc, DWORD(Self), TIME_PERIODIC);
    end;
  end;
end;

procedure TCustomPicShow.StopTimer;
begin
  if TimerID <> 0 then
  begin
    timeKillEvent(TimerID);
    timeEndPeriod(TimerResolution);
    TimerID := 0;
    Sleep(0);
    EnterCriticalSection(CS);
    LeaveCriticalSection(CS);
  end;
end;

procedure TCustomPicShow.DoChange;
begin
  if Assigned(fOnChange) then
    fOnChange(Self);
end;

procedure TCustomPicShow.DoProgress;
begin
  if Assigned(fOnProgress) then
    fOnProgress(Self);
end;

procedure TCustomPicShow.DoCustomDraw(Picture, Screen: TBitmap);
begin
  if Assigned(fOnCustomDraw) then
    fOnCustomDraw(Self, Picture, Screen);
end;

procedure TCustomPicShow.DoBeforeNewFrame(Picture, Screen: TBitmap);
begin
  if Assigned(fOnBeforeNewFrame) then
    fOnBeforeNewFrame(Self, Picture, Screen);
end;

procedure TCustomPicShow.DoAfterNewFrame(Picture, Screen: TBitmap);
begin
  if Assigned(fOnAfterNewFrame) then
    fOnAfterNewFrame(Self, Picture, Screen);
end;

procedure TCustomPicShow.DoComplete;
begin
  if Assigned(fOnComplete) then
    fOnComplete(Self);
end;

procedure TCustomPicShow.DoStart(NewPicture, OldPicture: TBitmap);
begin
  if Assigned(fOnStart) then
    fOnStart(Self, NewPicture, OldPicture);
end;

procedure TCustomPicShow.DoStop;
begin
  if Assigned(fOnStop) then
    fOnStop(Self);
end;

Procedure TCustomPicShow.Clear;
begin
  if not (Busy or Display.Empty) then
  begin
    Display.Assign(nil);
    FillChar(PicRect, SizeOf(TRect), 0);
    FillChar(DisplayRect, SizeOf(TRect), 0);
    Invalidate;
  end;
end;

procedure TCustomPicShow.Stop;
begin
  if Busy and not Stopping then
  begin
    Stopping := True;
    try
      StopTimer;
      Unprepare;
    finally
      Stopping := False;
    end;
  end;
end;

procedure TCustomPicShow.Execute;
begin
  if (Picture.Graphic <> nil) and not Busy then
  begin
    fBusy := True;
    try
      HandleNeeded;
      Prepare;
      if not (Manual or Stopping) then Animate;
    except
      if Pic <> nil then FreeAndNil(Pic);
      if OldPic <> nil then FreeAndNil(OldPic);
      fBusy := False;
      raise;
    end;
  end;
end;

procedure TCustomPicShow.Animate;
var
  ResumeTime: DWORD;
begin
  LastUpdateTime := GetTickCount;
  if not Threaded then
  begin
    while UpdateProgress and not (Manual or Stopping) do
    begin
      ResumeTime := GetTickCount + Delay;
      repeat
        Application.ProcessMessages
      until GetTickCount >= ResumeTime;
    end;
    if Stopping or not Manual then
      Unprepare;
  end
  else
    StartTimer;
end;

function TCustomPicShow.UpdateProgress: Boolean;
var
  ProgressStep: Integer;
begin
  if ExactTiming then
    ProgressStep := MulDiv(Step, GetTickCount - LastUpdateTime, Delay)
  else
    ProgressStep := Step;
  LastUpdateTime := GetTickCount;
  if Reverse then
    if Progress > ProgressStep then
      Progress := Progress - ProgressStep
    else
      Progress := Low(TPercent)
  else
    if Progress < High(TPercent) - ProgressStep then
      Progress := Progress + ProgressStep
    else
      Progress := High(TPercent);
  Result := (Reverse and (Progress <> Low(TPercent))) or
            (not Reverse and (Progress <> High(TPercent)));
end;

procedure TCustomPicShow.Prepare;
var
  Width, Height: Integer;
begin
  Width := Picture.Width;
  Height := Picture.Height;
  // Prepares old picture
  OldPic := TBitmap.Create;
  if OverDraw and not Display.Empty and
    (Width = Display.Width) and (Height = Display.Height) then
  begin
    DynamicOldPic := False;
    OldPic.Assign(Display);   
  end
  else
  begin
    DynamicOldPic := True;
    OldPic.Width := Width;
    OldPic.Height := Height;
  end;
  OldPic.PixelFormat := pf32bit;
  // Prepares current picture
  Pic := TBitmap.Create;
  Pic.Canvas.Brush.Color := Color;
  Pic.Width := Width;
  Pic.Height := Height;
  Picture.OnChange := nil;
  try
    Pic.Canvas.Draw(0, 0, Picture.Graphic);
  finally
    Picture.OnChange := PictureChange;
  end;
  Pic.PixelFormat := pf32bit;
  // Prepares display
  Display.Width := Width;
  Display.Height := Height;
  Display.PixelFormat := pf32bit;
  // Prepares bounding rectangles
  SetRect(PicRect, 0, 0, Width, Height);
  UpdateDisplayRect;
  Display.Assign(OldPic);
  if Reverse then
    fProgress := High(TPercent)
  else
    fProgress := Low(TPercent);
  Invalidate;
  DoStart(Pic, OldPic);
end;

procedure TCustomPicShow.Unprepare;
begin
  fBusy := False;
  if Pic <> nil then FreeAndNil(Pic);
  if OldPic <> nil then FreeAndNil(OldPic);
  if not (csDestroying in ComponentState) then
  begin
    if not Stopping then
      DoComplete;
    DoStop;
  end;
end;

procedure TCustomPicShow.UpdateDisplay;
var
  X, Y: Integer;
begin
  EnterCriticalSection(CS);
  try
    Pic.Canvas.Lock;
    Display.Canvas.Lock;
    try
      OldPic.Canvas.Lock;
      try
        BitBlt(Display.Canvas.Handle, 0, 0, PicRect.Right, PicRect.Bottom,
               OldPic.Canvas.Handle, 0, 0, SRCCOPY);
      finally
        OldPic.Canvas.Unlock;
      end;
      if Assigned(fOnBeforeNewFrame) then
        fOnBeforeNewFrame(Self, Pic, Display);
      if Progress = High(TPercent) then
        BitBlt(Display.Canvas.Handle, 0, 0, PicRect.Right, PicRect.Bottom,
               Pic.Canvas.Handle, 0, 0, SRCCOPY)
      else if Progress <> Low(TPercent) then
      begin
        if Style = 0 then
          DoCustomDraw(Pic, Display)
        else
        begin
          SetStretchBltMode(Display.Canvas.Handle, COLORONCOLOR);
          if PicRect.Right >= PicRect.Bottom then
          begin
            X := MulDiv(PicRect.Right, Progress, High(TPercent));
            Y := MulDiv(X, PicRect.Bottom, PicRect.Right);
          end
          else
          begin
            Y := MulDiv(PicRect.Bottom, Progress, High(TPercent));
            X := MulDiv(Y, PicRect.Right, PicRect.Bottom);
          end;
          PSEffects[Style].Proc(Display, Pic, PicRect.Right, PicRect.Bottom, X, Y, Progress);
        end;
      end;
      if Assigned(fOnAfterNewFrame) then
        fOnAfterNewFrame(Self, Pic, Display);
    finally
      Display.Canvas.Unlock;
      Pic.Canvas.Unlock;
    end;
  finally
    LeaveCriticalSection(CS);
  end;
end;

{ TDBPicShow }

constructor TDBPicShow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fAutoDisplay := True;
  fDataLink := TFieldDataLink.Create;
  fDataLink.Control := Self;
  fDataLink.OnDataChange := DataChange;
  fDataLink.OnUpdateData := UpdateData;
  fDataLink.OnEditingChange := EditingChange;
end;

destructor TDBPicShow.Destroy;
begin
  fDataLink.Free;
  fDataLink := nil;
  inherited Destroy;
end;

function TDBPicShow.GetDataSource: TDataSource;
begin
  Result := fDataLink.DataSource;
end;

procedure TDBPicShow.SetDataSource(Value: TDataSource);
begin
  if not (fDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    fDataLink.DataSource := Value;
  if fDataLink.DataSource <> nil then
    fDataLink.DataSource.FreeNotification(Self);
end;

function TDBPicShow.GetDataField: string;
begin
  Result := fDataLink.FieldName;
end;

procedure TDBPicShow.SetDataField(const Value: string);
begin
  fDataLink.FieldName := Value;
end;

function TDBPicShow.GetReadOnly: Boolean;
begin
  Result := fDataLink.ReadOnly;
end;

procedure TDBPicShow.SetReadOnly(Value: Boolean);
begin
  fDataLink.ReadOnly := Value;
end;

function TDBPicShow.GetField: TField;
begin
  Result := fDataLink.Field;
end;

procedure TDBPicShow.SetAutoDisplay(Value: Boolean);
begin
  if AutoDisplay <> Value then
  begin
    fAutoDisplay := Value;
    if AutoDisplay and not fDataLink.Editing then LoadPicture;
  end;
end;

procedure TDBPicShow.DoChange;
begin
  inherited DoChange;
  if fLoaded and fDataLink.Editing then
  begin
    fDataLink.Modified;
    fModified := True;
    if Busy then
      Stop;
    if (Picture.Graphic = nil) or Picture.Graphic.Empty then
      Clear
    else
      Execute;
  end;
end;

procedure TDBPicShow.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fDataLink <> nil) and (AComponent = DataSource) then
    DataSource := nil;
end;

function TDBPicShow.FindGraphicClass(Stream: TMemoryStream): TGraphicClass;
var
  I: Integer;
begin
  Result := nil;
  for I := Low(GraphicSigns) to High(GraphicSigns) do
    with GraphicSigns[I] do
      if (DWORD(Stream.Size) >= (Offset + Length)) then
        if CompareMem(Pointer(DWORD(Stream.Memory) + Offset), Signature, Length) then
      begin
        Result := GraphicClass;
        Break;
      end;
  {$IFDEF GRAPHICEX}
  if not Assigned(Result) then
    Result := FileFormatList.GraphicFromContent(Stream);
  {$ENDIF}
  if Assigned(fOnGetGraphicClass) then
    fOnGetGraphicClass(Self, Result);
end;

procedure TDBPicShow.LoadPictureFromStream(Stream: TMemoryStream;
  GraphicClass: TGraphicClass);
var
  Graphic: TGraphic;
begin
  if GraphicClass = nil then
  begin
    Picture.Graphic := nil;
    raise EInvalidGraphic.Create('Unknown picture format');
  end
  else if GraphicClass = TBitmap then
    Picture.Bitmap.LoadFromStream(Stream)
  else if GraphicClass = TMetafile then
    Picture.Metafile.LoadFromStream(Stream)
  else if GraphicClass = TIcon then
    Picture.Icon.LoadFromStream(Stream)
  else
  begin
    Graphic := GraphicClass.Create;
    try
      Graphic.LoadFromStream(Stream);
      Picture.Assign(Graphic);
    finally
      Graphic.Free;
    end;
  end;
end;

procedure TDBPicShow.LoadPicture;
var
  Stream: TMemoryStream;
begin
  if not fLoaded and (fDataLink.Field <> nil) and (fDataLink.Field is TBlobField) then
  begin
    if Busy then Stop;
    try
      if not fDataLink.Field.IsNull then
      begin
        if Assigned(fOnBeforeLoadPicture) then
          fOnBeforeLoadPicture(Self);
        Stream := TMemoryStream.Create;
        try
          TBlobField(fDataLink.Field).SaveToStream(Stream);
          if Stream.Size > 0 then
          begin
            Stream.Seek(0, soFromBeginning);
            Stream.Seek(0, soFromBeginning);
            LoadPictureFromStream(Stream, FindGraphicClass(Stream));
          end;
        finally
          Stream.Free;
        end;
        if Assigned(fOnAfterLoadPicture) then
          fOnAfterLoadPicture(Self);
      end;
    finally
      fLoaded := True;
      if (Picture.Graphic = nil) or Picture.Graphic.Empty then
        Clear
      else
        Execute;
    end;
  end;
end;

procedure TDBPicShow.DataChange(Sender: TObject);
begin
  if not fSkipLoading then
  begin
    fLoaded := False;
    fModified := False;
    Picture.Graphic := nil;
    if AutoDisplay then LoadPicture;
  end;
  fSkipLoading := False;
end;

procedure TDBPicShow.EditingChange(Sender: TObject);
begin
  if fDataLink.Editing then
    fSkipLoading := (fDataLink.DataSet.State <> dsInsert)
  else
    fSkipLoading := not fModified;
end;

procedure TDBPicShow.UpdateData(Sender: TObject);
var
  Stream: TMemoryStream;
begin
  fModified := False;
  fDataLink.Field.Clear;
  if (Picture.Graphic <> nil) and not Picture.Graphic.Empty and
     (fDataLink.Field is TBlobField) then
  begin
    Stream := TMemoryStream.Create;
    try
      Picture.Graphic.SaveToStream(Stream);
      Stream.Seek(0, soFromBeginning);
      TBlobField(fDataLink.Field).LoadFromStream(Stream);
    finally
      Stream.Free;
    end;
  end;
end;

procedure TDBPicShow.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(fDataLink);
end;

end.
