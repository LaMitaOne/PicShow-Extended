{ TPicshow 4.21}

{Based on PicShow 4.20 by DelphiArea http://www.delphiarea.com/products/delphi-components/picshow/
Original copyright: Mohammad Hossein Daneshpajouh
Extended with 39 additional effects by Lara Miriam Tamy Reschke}


{$I DELPHIAREA.INC}

unit PSEffect;

interface

uses
  Windows, SysUtils, Classes, Graphics;

type
  PRGBQuadChannles = ^TRGBQuadChannles;
  TRGBQuadChannles = array[0..3] of Byte;

type
  TEffectProc = procedure(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);

procedure Effect001(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect002(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect003(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect004(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect005(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect006(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect007(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect008(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect009(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect010(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect011(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect012(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect013(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect014(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect015(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect016(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect017(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect018(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect019(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect020(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect021(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect022(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect023(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect024(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect025(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect026(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect027(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect028(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect029(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect030(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect031(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect032(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect033(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect034(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect035(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect036(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect037(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect038(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect039(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect040(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect041(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect042(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect043(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect044(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect045(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect046(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect047(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect048(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect049(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect050(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect051(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect052(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect053(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect054(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect055(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect056(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect057(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect058(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect059(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect060(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect061(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect062(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect063(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect064(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect065(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect066(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect067(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect068(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect069(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect070(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect071(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect072(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect073(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect074(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect075(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect076(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect077(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect078(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect079(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect080(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect081(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect082(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect083(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect084(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect085(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect086(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect087(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect088(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect089(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect090(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect091(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect092(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect093(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect094(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect095(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect096(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect097(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect098(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect099(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect100(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect101(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect102(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect103(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect104(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect105(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect106(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect107(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect108(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect109(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect110(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect111(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect112(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect113(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect114(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect115(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect116(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect117(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect118(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect119(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect120(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect121(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect122(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect123(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect124(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect125(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect126(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect127(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect128(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect129(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect130(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect131(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect132(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect133(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect134(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect135(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect136(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect137(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect138(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect139(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect140(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect141(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect142(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect143(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect144(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect145(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect146(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect147(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect148(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect149(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect150(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect151(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect152(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect153(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect154(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect155(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect156(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect157(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect158(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect159(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect160(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect161(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect162(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect163(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect164(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect165(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect166(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect167(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect168(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect169(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect170(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect171(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect172(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect173(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect174(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect175(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect176(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect177(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect178(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect179(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect180(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect181(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect182(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect183(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect184(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect185(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect186(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect187(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect188(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect189(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect190(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect191(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect192(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect193(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect194(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect195(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect196(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect197(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect198(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect199(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect200(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect201(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect202(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect203(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect204(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect205(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect206(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect207(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect208(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect209(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect210(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect211(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect212(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect213(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect214(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
procedure Effect215(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);

type
  TEffect = record
    Name: String;
    Proc: TEffectProc;
  end;

const
  CustomEffectName = 'Custom';
  PSEffects: array[1..215] of TEffect = (
    (Name: 'Expand from right';	                                        Proc: Effect001),
    (Name: 'Expand from left';	                                        Proc: Effect002),
    (Name: 'Slide in from right';	                                      Proc: Effect003),
    (Name: 'Slide in from left';	                                      Proc: Effect004),
    (Name: 'Reveal from left';	                                        Proc: Effect005),
    (Name: 'Reveal from right';	                                        Proc: Effect006),
    (Name: 'Expand in from right';	                                    Proc: Effect007),
    (Name: 'Expand in from left';	                                      Proc: Effect008),
    (Name: 'Expand in to middle';	                                      Proc: Effect009),
    (Name: 'Expand out from middle';	                                  Proc: Effect010),
    (Name: 'Reveal out from middle';	                                  Proc: Effect011),
    (Name: 'Reveal in from sides';	                                    Proc: Effect012),
    (Name: 'Expand in from sides';	                                    Proc: Effect013),
    (Name: 'Unroll from left';	                                        Proc: Effect014),
    (Name: 'Unroll from right';	                                        Proc: Effect015),
    (Name: 'Build up from right';	                                      Proc: Effect016),
    (Name: 'Build up from left';	                                      Proc: Effect017),
    (Name: 'Expand from bottom';	                                      Proc: Effect018),
    (Name: 'Expand from top';	                                          Proc: Effect019),
    (Name: 'Slide in from bottom';                                      Proc: Effect020),
    (Name: 'Slide in from top';	                                        Proc: Effect021),
    (Name: 'Reveal from top';	                                          Proc: Effect022),
    (Name: 'Reveal from bottom';	                                      Proc: Effect023),
    (Name: 'Expand in from bottom';	                                    Proc: Effect024),
    (Name: 'Expand in from top';	                                      Proc: Effect025),
    (Name: 'Expand in to middle (horizontal)';	                        Proc: Effect026),
    (Name: 'Expand out from middle (horizontal)';	                      Proc: Effect027),
    (Name: 'Reveal from middle (horizontal)';	                          Proc: Effect028),
    (Name: 'Slide in from top and bottom';	                            Proc: Effect029),
    (Name: 'Expand in from top and bottom';	                            Proc: Effect030),
    (Name: 'Unroll from top';	                                          Proc: Effect031),
    (Name: 'Unroll from bottom';	                                      Proc: Effect032),
    (Name: 'Expand from bottom';	                                      Proc: Effect033),
    (Name: 'Expand in from top';	                                      Proc: Effect034),
    (Name: 'Expand from bottom right';	                                Proc: Effect035),
    (Name: 'Expand from top right';	                                    Proc: Effect036),
    (Name: 'Expand from top left';	                                    Proc: Effect037),
    (Name: 'Expand from bottom left';	                                  Proc: Effect038),
    (Name: 'Slide in from bottom right';	                              Proc: Effect039),
    (Name: 'Slide in from top right';	                                  Proc: Effect040),
    (Name: 'Slide in from top left';	                                  Proc: Effect041),
    (Name: 'Slide in from bottom left';	                                Proc: Effect042),
    (Name: 'Reveal from top left';	                                    Proc: Effect043),
    (Name: 'Reveal from bottom left';	                                  Proc: Effect044),
    (Name: 'Reveal from bottom right';	                                Proc: Effect045),
    (Name: 'Reveal from top right';	                                    Proc: Effect046),
    (Name: 'Appear and Contract to top left';	                          Proc: Effect047),
    (Name: 'Appear and Contract to bottom left';	                      Proc: Effect048),
    (Name: 'Appear and Contract to bottom right';	                      Proc: Effect049),
    (Name: 'Appear and Contract to top right';	                        Proc: Effect050),
    (Name: 'Appear and Contract to middle';	                            Proc: Effect051),
    (Name: 'Expand out from centre';	                                  Proc: Effect052),
    (Name: 'Reveal out from centre';	                                  Proc: Effect053),
    (Name: 'Reveal in to centre';	                                      Proc: Effect054),
    (Name: 'Quarters Reveal in to middle';	                            Proc: Effect055),
    (Name: 'Quarters Expand to middle';	                                Proc: Effect056),
    (Name: 'Quarters Slide in to middle';	                              Proc: Effect057),
    (Name: 'Curved Reveal from left';	                                  Proc: Effect058),
    (Name: 'Curved Reveal from right';	                                Proc: Effect059),
    (Name: 'Bars in from right';	                                      Proc: Effect060),
    (Name: 'Bars in from left';	                                        Proc: Effect061),
    (Name: 'Bars left then right';	                                    Proc: Effect062),
    (Name: 'Bars right then left';	                                    Proc: Effect063),
    (Name: 'Bars from both sides';	                                    Proc: Effect064),
    (Name: 'Uneven shred from right';	                                  Proc: Effect065),
    (Name: 'Uneven shred from left';	                                  Proc: Effect066),
    (Name: 'Uneven shred out from middle (horizontal)';	                Proc: Effect067),
    (Name: 'Uneven shred in to middle (horizontal)';	                  Proc: Effect068),
    (Name: 'Curved Reveal from top';	                                  Proc: Effect069),
    (Name: 'Curved Reveal from bottom';	                                Proc: Effect070),
    (Name: 'Bars from bottom';	                                        Proc: Effect071),
    (Name: 'Bars from top';	                                            Proc: Effect072),
    (Name: 'Bars top then bottom';	                                    Proc: Effect073),
    (Name: 'Bars bottom then top';	                                    Proc: Effect074),
    (Name: 'Bars from top and bottom';	                                Proc: Effect075),
    (Name: 'Unven shred from bottom';	                                  Proc: Effect076),
    (Name: 'Uneven shred from top';	                                    Proc: Effect077),
    (Name: 'Uneven shred from horizon';	                                Proc: Effect078),
    (Name: 'Uneven shred in to horizon';	                              Proc: Effect079),
    (Name: 'Curved reveal from top left';	                              Proc: Effect080),
    (Name: 'Curved reveal from top right';	                            Proc: Effect081),
    (Name: 'Curved reveal from bottom left';	                          Proc: Effect082),
    (Name: 'Curved reveal from bottom right';	                          Proc: Effect083),
    (Name: 'Elliptic reveal out from centre';	                          Proc: Effect084),
    (Name: 'Elliptic reveal in to centre';	                            Proc: Effect085),
    (Name: 'Criss Cross reveal from bottom right';	                    Proc: Effect086),
    (Name: 'Criss Cross reveal from top right';	                        Proc: Effect087),
    (Name: 'Criss Cross reveal from bottom left';	                      Proc: Effect088),
    (Name: 'Criss Cross reveal from top left';	                        Proc: Effect089),
    (Name: 'Criss Cross reveal bounce from top left';	                  Proc: Effect090),
    (Name: 'Criss Cross reveal bounce from bottom left';                Proc: Effect091),
    (Name: 'Criss Cross reveal bounce from top right';	                Proc: Effect092),
    (Name: 'Criss Cross reveal bounce from bottom right';	              Proc: Effect093),
    (Name: 'Criss Cross reveal from right top and bottom';	            Proc: Effect094),
    (Name: 'Criss Cross reveal from left top and bottom';	              Proc: Effect095),
    (Name: 'Criss Cross reveal from left right and bottom';	            Proc: Effect096),
    (Name: 'Criss Cross reveal from left right and top';	              Proc: Effect097),
    (Name: 'Criss Cross reveal from top left right and bottom';	        Proc: Effect098),
    (Name: 'Criss Cross reveal from bottom left top right';	            Proc: Effect099),
    (Name: 'Uneven shred from bottom and right';	                      Proc: Effect100),
    (Name: 'Uneven shred from top and right';	                          Proc: Effect101),
    (Name: 'Uneven shred from bottom and left';	                        Proc: Effect102),
    (Name: 'Uneven shred from top and left';	                          Proc: Effect103),
    (Name: 'Uneven shred from horizon and right';	                      Proc: Effect104),
    (Name: 'Uneven shred from horizon and left';	                      Proc: Effect105),
    (Name: 'Uneven shred from bottom and vert middle';	                Proc: Effect106),
    (Name: 'Uneven shred from top and vert middle';	                    Proc: Effect107),
    (Name: 'Uneven shred from centre';	                                Proc: Effect108),
    (Name: 'Uneven shred to centre';	                                  Proc: Effect109),
    (Name: 'Reveal diagonal from top left';	                            Proc: Effect110),
    (Name: 'Reveal diagonal from top right';	                          Proc: Effect111),
    (Name: 'Reveal diagonal from bottom left';	                        Proc: Effect112),
    (Name: 'Reveal diagonal from bottom right';	                        Proc: Effect113),
    (Name: 'Diagonal sweep from top left bottom right anticlockwise';	  Proc: Effect114),
    (Name: 'Diagonal sweep from top left bottom right clockwise';	      Proc: Effect115),
    (Name: 'Starburst clockwise from center';	                          Proc: Effect116),
    (Name: 'Starburst anticlockwise from center';                       Proc: Effect117),
    (Name: 'Triangular shred';                                          Proc: Effect118),
    (Name: 'Fade';	                                                    Proc: Effect119),
    (Name: 'Pivot from top left';	                                      Proc: Effect120),
    (Name: 'Pivot from bottom left';	                                  Proc: Effect121),
    (Name: 'Pivot from top right';	                                    Proc: Effect122),
    (Name: 'Pivot from bottom right';	                                  Proc: Effect123),
    (Name: 'Speckle appear from right';	                                Proc: Effect124),
    (Name: 'Speckle appear from left';	                                Proc: Effect125),
    (Name: 'Speckle appear from bottom';	                              Proc: Effect126),
    (Name: 'Speckle appear from top';	                                  Proc: Effect127),
    (Name: 'Random squares appear';	                                    Proc: Effect128),
    (Name: 'Push right';                                                Proc: Effect129),
    (Name: 'Push left';	                                                Proc: Effect130),
    (Name: 'Push and squeeze right';                                    Proc: Effect131),
    (Name: 'Push and squeeze left';                                     Proc: Effect132),
    (Name: 'Push down';	                                                Proc: Effect133),
    (Name: 'Push up';	                                                  Proc: Effect134),
    (Name: 'Push and sqeeze down';                                      Proc: Effect135),
    (Name: 'Push and sqeeze up';                                        Proc: Effect136),
    (Name: 'Blind vertically';                                          Proc: Effect137),
    (Name: 'Blind horizontally';                                        Proc: Effect138),
    (Name: 'Uneven blind from left';                                    Proc: Effect139),
    (Name: 'Uneven blind from right';                                   Proc: Effect140),
    (Name: 'Uneven blind from top';	                                    Proc: Effect141),
    (Name: 'Uneven blind from bottom';                                  Proc: Effect142),
    (Name: 'Rectangular shred';                                         Proc: Effect143),
    (Name: 'Sweep clockwise';                                           Proc: Effect144),
    (Name: 'Sweep anticlockwise';                                       Proc: Effect145),
    (Name: 'Rectangles apear from left and disapear to right';          Proc: Effect146),
    (Name: 'Rectangles apear from right and disapear to left';          Proc: Effect147),
    (Name: 'Rectangles apear from up and disapear to bottom';           Proc: Effect148),
    (Name: 'Rectangles apear from bottom and disapear to up';           Proc: Effect149),
    (Name: 'Rotational rectangle in center';                            Proc: Effect150),
    (Name: 'Rotational star in center';                                 Proc: Effect151),
    (Name: 'Spiral rectangle';                                          Proc: Effect152),
    (Name: 'Circular shred';                                            Proc: Effect153),
    (Name: 'Reveal V from left';                                        Proc: Effect154),
    (Name: 'Reveal V from right';                                       Proc: Effect155),
    (Name: 'Reveal V from top';                                         Proc: Effect156),
    (Name: 'Reveal V from bottom';                                      Proc: Effect157),
    (Name: 'Bow Tie Horizontal';                                        Proc: Effect158),
    (Name: 'Bow Tie Vertical';                                          Proc: Effect159),
    (Name: 'Diagonal Cross In';                                         Proc: Effect160),
    (Name: 'Diagonal Cross Out';                                        Proc: Effect161),
    (Name: 'Zigzag Horizontal';                                         Proc: Effect162),
    (Name: 'Zigzag Vertical';                                           Proc: Effect163),
    (Name: 'Diamond shred';                                             Proc: Effect164),
    (Name: 'Reveal diamond out from centre';                            Proc: Effect165),
    (Name: 'Reveal diamond in to centre';                               Proc: Effect166),
    (Name: 'Diagonal Box Out';                                          Proc: Effect167),
    (Name: 'Pixelate';                                                  Proc: Effect168),
    (Name: 'Dissolve';                                                  Proc: Effect169),
    (Name: 'Random Bars Horizontal';                                    Proc: Effect170),
    (Name: 'Random Bars Vertical';                                      Proc: Effect171),
    (Name: 'Channel Mix';                                               Proc: Effect172),
    (Name: 'Slide out from right';                                      Proc: Effect173),
    (Name: 'Slide out from left';                                       Proc: Effect174),
    (Name: 'Slide out from bottom';                                     Proc: Effect175),
    (Name: 'Slide out from top';                                        Proc: Effect176),
    (Name: 'Neural Glitch Reveal';                                      Proc: Effect177),
    (Name: 'Radial clock wipe clockwise';                               Proc: Effect178),
    (Name: 'Radial clock wipe counter-clockwise';                       Proc: Effect179),
    (Name: 'Random Circles';                                            Proc: Effect180),
    (Name: 'Iris Circle Out';                                           Proc: Effect181),
    (Name: 'Iris Circle In';                                            Proc: Effect182),
    (Name: 'Split Reveal Vertical';                                     Proc: Effect183),
    (Name: 'Split Reveal Horizontal';                                   Proc: Effect184),
    (Name: 'Parallelogram Wipe';                                        Proc: Effect185),
    (Name: 'Heart Reveal';                                              Proc: Effect186),
    (Name: 'Squeeze Vertical';                                           Proc: Effect187),
    (Name: 'Squeeze Horizontal';                                         Proc: Effect188),
    (Name: 'Barn Door Vertical';                                         Proc: Effect189),
    (Name: 'Barn Door Horizontal';                                       Proc: Effect190),
    (Name: 'Double Iris';                                                Proc: Effect191),
    (Name: 'Hexagon Reveal';                                            Proc: Effect192),
    (Name: 'Checkerboard Random';                                       Proc: Effect193),
    (Name: 'Rubber Eraser';                                             Proc: Effect194),
    (Name: 'Interlaced Bars';                                           Proc: Effect195),
    (Name: 'Ripple';                                                     Proc: Effect196),
    (Name: 'Pinwheel';                                                   Proc: Effect197),
    (Name: 'Vertical Shred';                                             Proc: Effect198),
    (Name: 'Radar Sweep';                                                Proc: Effect199),
    (Name: 'Box Out';                                                   Proc: Effect200),
    (Name: 'Box In';                                                    Proc: Effect201),
    (Name: 'Spiral Out';                                                Proc: Effect202),
    (Name: 'Starburst';                                                  Proc: Effect203),
    (Name: 'Horizontal Shredder';                                        Proc: Effect204),
    (Name: 'Vertical Shredder';                                          Proc: Effect205),
    (Name: 'Grid Expansion';                                             Proc: Effect206),
    (Name: 'Thick Diagonal Wipe';                                       Proc: Effect207),
    (Name: 'Box Iris';                                                   Proc: Effect208),
    (Name: 'Waterfall';                                                  Proc: Effect209),
    (Name: 'Laser Scan';                                                 Proc: Effect210),
    (Name: 'Wave';                                                       Proc: Effect211),
    (Name: 'Random Mosaic';                                              Proc: Effect212),
    (Name: 'Corner Slide';                                               Proc: Effect213),
    (Name: 'Circle Pulse';                                               Proc: Effect214),
    (Name: 'Vertical Block Slide';                                        Proc: Effect215)
   );

type
  PRGBQuadArray = ^TRGBQuadArray;
  TRGBQuadArray = array[0..0] of TRGBQuad;

type
  {$IFNDEF COMPILER4_UP}
  HRGN = THandle;
  {$ENDIF}
  TComplexRegion = class(TObject)
  private
    RgnData: PRgnData;
    Capacity: Integer;
    Count: Integer;
    Bounds: TRect;
    Rect: PRect;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    procedure AddRect(Left, Top, Right, Bottom: Integer);
    function CreateRegion: HRGN;
  end;

// In the following functions, all the bitmap objects should be 32bit bitmap format.
procedure ApplyHReflect(Bitmap: TBitmap; Amount: Byte; Pos, Size: Integer);
procedure ApplyVReflect(Bitmap: TBitmap; Amount: Byte; Pos, Size: Integer);
procedure MergeTransparent(dstBitmap, srcBitmap: TBitmap; Transparency: Integer; X, Y, Width, Height: Integer);
procedure MergeRotate(dstBitmap, srcBitmap: TBitmap; xOrg, yOrg: Integer; Angle {radians}: Extended);
procedure RotatePoints(var Points: array of TPoint; xOrg, yOrg: Integer; Angle {radians}: Extended);

implementation

uses
  {$IFDEF COMPILER6_UP} Types, {$ENDIF} Math;

{ TComplexRegion }

constructor TComplexRegion.Create;
begin
  Clear;
end;

destructor TComplexRegion.Destroy;
begin
  ReallocMem(RgnData, 0);
  inherited Destroy;
end;

procedure TComplexRegion.Clear;
begin
  ReallocMem(RgnData, 0);
  Count := 0;
  Capacity := 0;
  with Bounds do
  begin
    Left := +MaxInt;
    Top := +MaxInt;
    Right := -MaxInt;
    Bottom := -MaxInt;
  end;
end;

procedure TComplexRegion.AddRect(Left, Top, Right, Bottom: Integer);
begin
  if Count = Capacity then
  begin
    Inc(Capacity, 500);
    ReallocMem(RgnData, SizeOf(TRgnData) + Capacity * SizeOf(TRect));
    Rect := PRect(@(RgnData^.Buffer));
    Inc(Rect, Count);
  end;
  Rect^.Left := Left;
  Rect^.Top := Top;
  Rect^.Right := Right;
  Rect^.Bottom := Bottom;
  Inc(Rect);
  Inc(Count);
  if Bounds.Left > Left then
    Bounds.Left := Left;
  if Bounds.Top > Top then
    Bounds.Top := Top;
  if Bounds.Right < Right then
    Bounds.Right := Right;
  if Bounds.Bottom < Bottom then
    Bounds.Bottom := Bottom;
end;

function TComplexRegion.CreateRegion: HRGN;
begin
  if Assigned(RgnData) then
  begin
    with RgnData^.rdh do
    begin
      dwSize := SizeOf(TRgnDataHeader);
      iType := RDH_RECTANGLES;
      nCount := Count;
      nRgnSize := SizeOf(TRect);
      rcBound := Bounds;
    end;
    Result := ExtCreateRegion(nil, SizeOf(TRgnData) + Count * SizeOf(TRect), RgnData^);
  end
  else
    Result := 0;
end;

{ Global Functions }

procedure ApplyHReflect(Bitmap: TBitmap; Amount: Byte; Pos, Size: Integer);
var
  Pixels: PRGBQuad;
  bmpWidth, bmpHeight: Integer;
  Middle, JumpCount, X, Y, T, S, J: Integer;
  PreCalcDelta: PInteger;
  Delta: PInteger;
begin
  if (Size < 2) or (Amount = 0) then Exit;
  bmpWidth := Bitmap.Width;
  bmpHeight := Bitmap.Height;
  Pixels := Bitmap.ScanLine[bmpHeight - 1];
  Middle := Size div 2;
  JumpCount := bmpWidth - (Pos + Size);
  GetMem(PreCalcDelta, SizeOf(Integer) * Size);
  try
    Delta := PreCalcDelta;
    T := -Amount;
    if Middle < Amount then
    begin
      S := Amount div Middle;
      for X := 1 to Size do
      begin
        Delta^ := T;
        Inc(Delta);
        Inc(T, S);
        if X = Middle then
          S := -S;
      end;
    end
    else
    begin
      S := Middle div Amount;
      J := S;
      for X := 1 to Size do
      begin
        Delta^ := T;
        Inc(Delta);
        if X = J then
        begin
          Inc(J, S);
          if X < Middle then
            Inc(T)
          else
            Dec(T);
        end;
      end;
    end;
    for Y := 0 to Bitmap.Height - 1 do
    begin
      Delta := PreCalcDelta;
      Inc(Pixels, Pos);
      for X := 1 to Size do
      begin
        with Pixels^ do
        begin
          T := rgbRed + Delta^;
          if T < 0 then
            T := 0
          else if T > 255 then
            T := 255;
          rgbRed := T;
          T := rgbGreen + Delta^;
          if T < 0 then
            T := 0
          else if T > 255 then
            T := 255;
          rgbGreen := T;
          T := rgbBlue + Delta^;
          if T < 0 then
            T := 0
          else if T > 255 then
            T := 255;
          rgbBlue := T;
        end;
        Inc(Pixels);
        Inc(Delta);
      end;
      Inc(Pixels, JumpCount);
    end;
  finally
    FreeMem(PreCalcDelta);
  end;
end;

procedure ApplyVReflect(Bitmap: TBitmap; Amount: Byte; Pos, Size: Integer);
var
  Pixels: PRGBQuad;
  Middle, Step, Jump, Delta: Integer;
  X, Y, T, J: Integer;
begin
  if (Size < 2) or (Amount = 0) then Exit;
  Pixels := Bitmap.ScanLine[Pos + Size - 1];
  Middle := Size div 2;
  if Middle < Amount then
  begin
    Jump := 1;
    Step := Amount div Middle;
  end
  else
  begin
    Jump := Middle div Amount;
    Step := 1;
  end;
  J := Jump;
  Delta := -Amount;
  for Y := 1 to Size do
  begin
    for X := 0 to Bitmap.Width - 1 do
    begin
      with Pixels^ do
      begin
        T := rgbRed + Delta;
        if T < 0 then
          T := 0
        else if T > 255 then
          T := 255;
        rgbRed := T;
        T := rgbGreen + Delta;
        if T < 0 then
          T := 0
        else if T > 255 then
          T := 255;
        rgbGreen := T;
        T := rgbBlue + Delta;
        if T < 0 then
          T := 0
        else if T > 255 then
          T := 255;
        rgbBlue := T;
      end;
      Inc(Pixels);
    end;
    if Y = J then
    begin
      if Y < Middle then
        Inc(Delta, Step)
      else
        Dec(Delta, Step);
      Inc(J, Jump);
    end;
  end;
end;

procedure MergeTransparent(dstBitmap, srcBitmap: TBitmap; Transparency: Integer;
  X, Y, Width, Height: Integer);
var
  dstPixel, srcPixel: PRGBQuad;
  JumpCount, Weight: Integer;
  R, C: Integer;
begin
  JumpCount := srcBitmap.Width - (X + Width);
  srcPixel := srcBitmap.ScanLine[Y + Height - 1];
  dstPixel := dstBitmap.ScanLine[Y + Height - 1];
  Weight := MulDiv(256, Transparency, 100);
  for R := 0 to Height - 1 do
  begin
    Inc(srcPixel, X);
    Inc(dstPixel, X);
    for C := 0 to Width - 1 do
    begin
      with dstPixel^ do
      begin
        Inc(rgbRed, (Weight * (srcPixel^.rgbRed - rgbRed)) shr 8);
        Inc(rgbGreen, (Weight * (srcPixel^.rgbGreen - rgbGreen)) shr 8);
        Inc(rgbBlue, (Weight * (srcPixel^.rgbBlue - rgbBlue)) shr 8);
      end;
      Inc(srcPixel);
      Inc(dstPixel);
    end;
    Inc(srcPixel, JumpCount);
    Inc(dstPixel, JumpCount);
  end;
end;

procedure MergeRotate(dstBitmap, srcBitmap: TBitmap; xOrg, yOrg: Integer;
  Angle: Extended);
var
  CosTheta, SinTheta: Extended;
  iCosTheta, iSinTheta: Integer;
  xSrc, ySrc: Integer;
  xDst, yDst: Integer;
  xPrime, yPrime: Integer;
  bmpWidth, bmpHeight: Integer;
  yPrimeSinTheta, yPrimeCosTheta: Integer;
  srcBits: PRGBQuadArray;
  dstBits: PRGBQuad;
begin
  SinCos(-Angle, SinTheta, CosTheta);
  iSinTheta := Trunc(SinTheta * (1 shl 16));
  iCosTheta := Trunc(CosTheta * (1 shl 16));
  bmpWidth := srcBitmap.Width;
  bmpHeight := srcBitmap.Height;
  srcBits := srcBitmap.ScanLine[bmpHeight-1];
  dstBits := @(PRGBQuadArray(dstBitmap.ScanLine[0])[bmpWidth-1]);
  yPrime := bmpHeight - yOrg;
  for yDst := bmpHeight - 1 downto 0 do
  begin
    yPrimeSinTheta := yPrime * iSinTheta;
    yPrimeCosTheta := yPrime * iCosTheta;
    xPrime := bmpWidth - xOrg;
    for xDst := bmpWidth - 1 downto 0 do
    begin
      xSrc := SmallInt((xPrime * iCosTheta - yPrimeSinTheta) shr 16) + xOrg;
      ySrc := SmallInt((xPrime * iSinTheta + yPrimeCosTheta) shr 16) + yOrg;
      {$IFDEF COMPILER4_UP}
      if (DWORD(ySrc) < DWORD(bmpHeight)) and (DWORD(xSrc) < DWORD(bmpWidth)) then
      {$ELSE} // Delphi 3 compiler ignores unsigned type cast and generates signed comparison code!
      if (ySrc >= 0) and (ySrc < bmpHeight) and (xSrc >= 0) and (xSrc < bmpWidth) then
      {$ENDIF}
      begin
        dstBits^ := srcBits[ySrc * bmpWidth + xSrc];
      end;
      Dec(dstBits);
      Dec(xPrime);
    end;
    Dec(yPrime);
  end;
end;

procedure RotatePoints(var Points: array of TPoint; xOrg, yOrg: Integer;
  Angle: Extended);
var
  Sin, Cos: Extended;
  xPrime, yPrime: Integer;
  I: Integer;
begin
 SinCos(Angle, Sin, Cos);
 for I := Low(Points) to High(Points) do
   with Points[I] do
   begin
     xPrime := X - xOrg;
     yPrime := Y - yOrg;
     X := Round(xPrime * Cos - yPrime * Sin) + xOrg;
     Y := Round(xPrime * Sin + yPrime * Cos) + yOrg;
   end;
end;

{ Helper Functions }

{$IFNDEF COMPILER4_UP}
function Min(A, B: Integer): Integer;
begin
  if A < B then
    Result := A
  else
    Result := B;
end;
{$ENDIF}

{$IFNDEF COMPILER4_UP}
function Max(A, B: Integer): Integer;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;
{$ENDIF}

function CreateBarRgn(X, Y, W, H: Integer; XMode, YMode: Integer): HRGN;
var
  X1, Y1, D: Integer;
  ComplexRgn: TComplexRegion;
begin
  D := (Min(W, H) div 50) + 1;
  ComplexRgn := TComplexRegion.Create;
  try
    if X <= W then
      Y1 := 0
    else
      Y1 := D;
    while Y1 < H + D do
    begin
      if X > W then
      begin
        if XMode in [1, 4] then
          ComplexRgn.AddRect(2 * W - X, Y1, W, Y1 + D)
        else if XMode in [2, 5] then
          ComplexRgn.AddRect(0, Y1, X - W, Y1 + D);
        ComplexRgn.AddRect(0, Y1 - D, W, Y1);
      end
      else
      begin
        if XMode in [1, 5] then
          ComplexRgn.AddRect(W - X, Y1, W, Y1 + D)
        else if XMode in [2, 4] then
          ComplexRgn.AddRect(0, Y1, X, Y1 + D)
        else if XMode = 3 then
        begin
          ComplexRgn.AddRect(0, Y1 + D, X, Y1 + D + D);
          ComplexRgn.AddRect(W - X, Y1, W, Y1 + D);
        end;
      end;
      Inc(Y1, 2 * D);
    end;
    if Y <= H then
      X1 := 0
    else
      X1 := D;
    while X1 < W + D do
    begin
      if Y > H then
      begin
        if YMode in [1, 4] then
          ComplexRgn.AddRect(X1, 2 * H - Y, X1 + D, H)
        else if YMode in [2, 5] then
          ComplexRgn.AddRect(X1, 0, X1 + D, Y - H);
        ComplexRgn.AddRect(X1 - D, 0, X1, H);
      end
      else
      begin
        if YMode in [1, 5] then
          ComplexRgn.AddRect(X1, H - Y, X1 + D, H)
        else if YMode in [2, 4] then
          ComplexRgn.AddRect(X1, 0, X1 + D, Y)
        else if YMode = 3 then
        begin
          ComplexRgn.AddRect(X1, H - Y, X1 + D, H);
          ComplexRgn.AddRect(X1 + D, 0, X1 + D + D, Y);
        end;
      end;
      Inc(X1, 2 * D);
    end;
    Result := ComplexRgn.CreateRegion;
  finally
    ComplexRgn.Free;
  end;
end;

function CreatePourRgn(X, Y, W, H, XMode, YMode: Integer): HRGN;
var
  X1, Y1, mW, mH, WD, HD, N, R, mR, D: Integer;
  ComplexRegion: TComplexRegion;
begin
  ComplexRegion := TComplexRegion.Create;
  try
    D := (Min(W, H) div 200) + 1;
    WD := W mod D;
    HD := H mod D;
    mW := W div 2;
    mH := H div 2;
    if XMode <> 0 then
    begin
      if X < W then
        N := W div 10
      else
        N := 0;
      Y1 := 0;
      while Y1 < H do
      begin
        R := X + (Random(2 * N) - N);
        if XMode = 1 then
          ComplexRegion.AddRect(W - R, Y1, W, Y1 + D + HD)
        else if XMode = 2 then
          ComplexRegion.AddRect(0, Y1, R, Y1 + D + HD)
        else if XMode = 3 then
        begin
          mR := R div 2;
          ComplexRegion.AddRect(mW - mR, Y1, mW, Y1 + D + HD);
          ComplexRegion.AddRect(mW, Y1, mW + mR, Y1 + D + HD);
        end
        else
        begin
          mR := R div 2;
          ComplexRegion.AddRect(W - mR, Y1, W, Y1 + D + HD);
          ComplexRegion.AddRect(0, Y1, mR, Y1 + D + HD);
        end;
        Inc(Y1, D);
      end;
    end;
    if YMode <> 0 then
    begin
      if Y < H then
        N := H div 10
      else
        N := 0;
      X1 := 0;
      while X1 < W do
      begin
        R := Y + Random(2 * N) - N;
        if YMode = 1 then
          ComplexRegion.AddRect(X1, H - R, X1 + D + WD, H)
        else if YMode = 2 then
          ComplexRegion.AddRect(X1, 0, X1 + D + WD, R)
        else if YMode = 3 then
        begin
          mR := R div 2;
          ComplexRegion.AddRect(X1, mH - mR, X1 + D + WD, mH);
          ComplexRegion.AddRect(X1, mH, X1 + D + WD, mH + mR);
        end
        else
        begin
          mR := R div 2;
          ComplexRegion.AddRect(X1, H - mR, X1 + D + WD, H);
          ComplexRegion.AddRect(X1, 0, X1 + D + WD, mR);
        end;
        Inc(X1, D);
      end;
    end;
    Result := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
end;

function CreateSwarmRgn(X, Y, W, H, XMode, YMode: Integer): HRGN;
var
  X1, Y1, N, M, I, C, L, S: Integer;
  ComplexRegion: TComplexRegion;
begin
  ComplexRegion := TComplexRegion.Create;
  try
    if XMode <> 0 then
    begin
      if X < W then
        N := W div 10
      else
        N := 0;
      M := N div 20;
      if M < 2 then
        M := 2;
      S := M div 2;
      L := N div M;
      C := (3 * N) div (4 * M);
      Y1 := 0;
      while Y1 < H do
      begin
        if XMode = 1 then
        begin
          ComplexRegion.AddRect(W - X, Y1, W, Y1 + M);
          for I := L downto 1 do
            if Random(I) <= Ord(I <= C) then
            begin
              X1 := (W - X) - (I * M);
              ComplexRegion.AddRect(X1, Y1, X1 + M, Y1 + M);
            end;
        end
        else
        begin
          ComplexRegion.AddRect(0, Y1, X, Y1 + M);
          for I := L downto 1 do
            if Random(I) <= Ord(I <= C) then
            begin
              X1 := X + (I * M);
              ComplexRegion.AddRect(X1 - M, Y1, X1, Y1 + M);
            end;
        end;
        Inc(Y1, S);
      end;
    end;
    if YMode <> 0 then
    begin
      if Y < H then
        N := H div 10
      else
        N := 0;
      M := N div 20;
      if M < 2 then
        M := 2;
      S := M div 2;
      L := N div M;
      C := (3 * N) div (4 * M);
      X1 := 0;
      while X1 < W do
      begin
        if YMode = 1 then
        begin
          ComplexRegion.AddRect(X1, H - Y, X1 + M, H);
          for I := L downto 1 do
            if Random(I) <= Ord(I <= C) then
            begin
              Y1 := (H - Y) - (I * M);
              ComplexRegion.AddRect(X1, Y1, X1 + M, Y1 + M);
            end;
        end
        else
        begin
          ComplexRegion.AddRect(X1, 0, X1 + M, Y);
          for I := N div M downto 1 do
            if Random(I) <= Ord(I <= C) then
            begin
              Y1 := Y + (I * M);
              ComplexRegion.AddRect(X1, Y1 - M, X1 + M, Y1);
            end;
        end;
        Inc(X1, S);
      end;
    end;
    Result := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
end;

function CreateSliceRgn(mX, mY, Radius: Integer; StartAngle, EndAngle: Extended;
  NumPts: Integer): HRGN;
var
  Pts, Pt: PPoint;
  Sin, Cos, Delta: Extended;
  I: Integer;
begin
  GetMem(Pts, (NumPts + 1) * SizeOf(TPoint));
  try
    Pt := Pts;
    Pt.X := mX;
    Pt.Y := mY;
    Delta := (EndAngle - StartAngle) / NumPts;
    for I := 1 to NumPts do
    begin
      Inc(Pt);
      SinCos(StartAngle, Sin, Cos);
      Pt.X := mX + Round(Radius * Cos);
      Pt.Y := mY + Round(Radius * Sin);
      StartAngle := StartAngle + Delta;
    end;
    Result := CreatePolygonRgn(Pts^, NumPts + 1, WINDING);
  finally
    FreeMem(Pts);
  end;
end;

function CreatePolygonRgnEx(const Pts: array of Integer): HRGN;
begin
  Result := CreatePolygonRgn(Pts, (High(Pts) - Low(Pts) + 1) shr 1, WINDING);
end;

{ Transition Effects }

// Expand from right
procedure Effect001(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, W - X, 0, X, H,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Expand from left
procedure Effect002(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, 0, X, H,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Slide in from right
procedure Effect003(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, W - X, 0, W, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Slide in from left
procedure Effect004(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, X - W, 0, W, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Reveal from left
procedure Effect005(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, 0, 0, X, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Reveal from right
procedure Effect006(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, W - X, 0, X, H,
         Image.Canvas.Handle, W - X, 0,
         SRCCOPY);
end;

// Expand in from right
procedure Effect007(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, 0, (2 * W) - X, H,
             Image.Canvas.Handle, 0, 0, X, H,
             SRCCOPY);
end;

// Expand in from left
procedure Effect008(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, X - W, 0, (2 * W) - X, H,
             Image.Canvas.Handle, W - X, 0, X, H,
             SRCCOPY);
end;

// Expand in to middle
procedure Effect009(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, X - W, 0, (3 * W) - (2 * X), H,
             Image.Canvas.Handle, (W - X) div 2, 0, X, H,
             SRCCOPY);
end;

// Expand out from middle
procedure Effect010(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, (W - X) div 2, 0, X, H,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Reveal out from middle
procedure Effect011(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mWX: Integer;
begin
  mWX := (W - X) div 2;
  BitBlt(Display.Canvas.Handle, mWX, 0, X, H,
         Image.Canvas.Handle, mWX, 0,
         SRCCOPY);
end;

// Reveal in from sides
procedure Effect012(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mX: Integer;
begin
  mX := X div 2;
  BitBlt(Display.Canvas.Handle, 0, 0, mX, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
  BitBlt(Display.Canvas.Handle, W - mX, 0, mX, H,
         Image.Canvas.Handle, W - mX, 0,
         SRCCOPY);
end;

// Expand in from sides
procedure Effect013(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mX, mW: Integer;
begin
  mX := X div 2;
  mW := W div 2;
  StretchBlt(Display.Canvas.Handle, 0, 0, mX, H,
             Image.Canvas.Handle, 0, 0, mW, H,
             SRCCOPY);
  StretchBlt(Display.Canvas.Handle, W - mX, 0, mX, H,
             Image.Canvas.Handle, mW, 0, mW, H,
             SRCCOPY);
end;

// Unroll from left
procedure Effect014(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  N: Integer;
begin
  N := W div 10;
  if N > X then
    N := X
  else if 2 * N > W - X then
    N := (W - X) div 2;
  StretchBlt(Display.Canvas.Handle, X + N - 1, 0, -N, H,
             Image.Canvas.Handle, X + N, 0, N, H,
             SRCCOPY);
  BitBlt(Display.Canvas.Handle, 0, 0, X, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
  ApplyHReflect(Display, 64, X, N);
end;

// Unroll from right
procedure Effect015(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  N: Integer;
begin
  N := W div 10;
  if N > X then
    N := X
  else if 2 * N > W - X then
    N := (W - X) div 2;
  StretchBlt(Display.Canvas.Handle, W - X - 1, 0, -N, H,
             Image.Canvas.Handle, W - X - 2 * N - 1, 0, N, H,
             SRCCOPY);
  BitBlt(Display.Canvas.Handle, W - X, 0, X, H,
         Image.Canvas.Handle, W - X, 0,
         SRCCOPY);
  ApplyHReflect(Display, 64, W - X - N, N);
end;

// Build up from right
procedure Effect016(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  N: Integer;
begin
  BitBlt(Display.Canvas.Handle, 0, 0, X, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
  N := Min(W - X, W div 10);
  StretchBlt(Display.Canvas.Handle, X, 0, W - X, H,
             Image.Canvas.Handle, X, 0, N, H,
             SRCCOPY);
end;

// Build up from left
procedure Effect017(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  N: Integer;
begin
  BitBlt(Display.Canvas.Handle, W - X, 0, X, H,
         Image.Canvas.Handle, W - X, 0,
         SRCCOPY);
  N := Max((W - X) - (W div 10), 0);
  StretchBlt(Display.Canvas.Handle, 0, 0, W - X, H,
             Image.Canvas.Handle, N, 0, W - X - N, H,
             SRCCOPY);
end;

// Expand from bottom
procedure Effect018(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, H - Y, W, Y,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Expand from top
procedure Effect019(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, 0, W, Y,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Slide in from bottom
procedure Effect020(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, 0, H - Y, W, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Slide in from top
procedure Effect021(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, 0, Y - H, W, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Reveal from top
procedure Effect022(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, 0, 0, W, Y,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Reveal from bottom
procedure Effect023(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, 0, H - Y, W, Y,
         Image.Canvas.Handle, 0, H - Y,
         SRCCOPY);
end;

// Expand in from bottom
procedure Effect024(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, 0, W, (2 * H) - Y,
             Image.Canvas.Handle, 0, 0, W, Y,
             SRCCOPY);
end;

// Expand in from top
procedure Effect025(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, Y - H, W, (2 * H) - Y,
             Image.Canvas.Handle, 0, H - Y, W, Y,
             SRCCOPY);
end;

// Expand in to middle (horiz)
procedure Effect026(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, Y - H, W, (3 * H) - (2 * Y),
             Image.Canvas.Handle, 0, (H - Y) div 2, W, Y,
             SRCCOPY);
end;

// Expand out from middle (horiz)
procedure Effect027(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, (H - Y) div 2, W, Y,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Reveal from middle (horiz)
procedure Effect028(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mHY: Integer;
begin
  mHY := (H - Y) div 2;
  BitBlt(Display.Canvas.Handle, 0, mHY, W, Y,
         Image.Canvas.Handle, 0, mHY,
         SRCCOPY);
end;

// Slide in from top / bottom
procedure Effect029(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mY: Integer;
begin
  mY := Y div 2;
  BitBlt(Display.Canvas.Handle, 0, 0, W, mY,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
  BitBlt(Display.Canvas.Handle, 0, H - mY, W, mY,
         Image.Canvas.Handle, 0, H - mY,
         SRCCOPY);
end;

// Expand in from top / bottom
procedure Effect030(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mY, mH: Integer;
begin
  mY := Y div 2;
  mH := H div 2;
  StretchBlt(Display.Canvas.Handle, 0, 0, W, mY,
             Image.Canvas.Handle, 0, 0, W, mH,
             SRCCOPY);
  StretchBlt(Display.Canvas.Handle, 0, H - mY, W, mY,
             Image.Canvas.Handle, 0, mH, W, mH,
             SRCCOPY);
end;

// Unroll from top
procedure Effect031(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  N: Integer;
begin
  N := H div 10;
  if N > Y then
    N := Y
  else if 2 * N > H - Y then
    N := (H - Y) div 2;
  StretchBlt(Display.Canvas.Handle, 0, Y + N - 1, W, -N,
             Image.Canvas.Handle, 0, Y + N, W, N,
             SRCCOPY);
  BitBlt(Display.Canvas.Handle, 0, 0, W, Y,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
  ApplyVReflect(Display, 64, Y, N);
end;

// Unroll from bottom
procedure Effect032(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  N: Integer;
begin
  N := H div 10;
  if N > Y then
    N := Y
  else if 2 * N > H - Y then
    N := (H - Y) div 2;
  StretchBlt(Display.Canvas.Handle, 0, H - Y - 1, W, -N,
             Image.Canvas.Handle, 0, H - Y - 2 * N - 1, W, N,
             SRCCOPY);
  BitBlt(Display.Canvas.Handle, 0, H - Y, W, Y,
         Image.Canvas.Handle, 0, H - Y,
         SRCCOPY);
  ApplyVReflect(Display, 64, H - Y - N, N);
end;

// Expand from bottom
procedure Effect033(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  N: Integer;
begin
  BitBlt(Display.Canvas.Handle, 0, 0, W, Y,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
  N := Min(H - Y, H div 10);
  StretchBlt(Display.Canvas.Handle, 0, Y, W, H - Y,
             Image.Canvas.Handle, 0, Y, W, N,
             SRCCOPY);
end;

// Expand in from top
procedure Effect034(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  N: Integer;
begin
  BitBlt(Display.Canvas.Handle, 0, H - Y, W, Y,
         Image.Canvas.Handle, 0, H - Y,
         SRCCOPY);
  N := Max((H - Y) - H div 10, 0);
  StretchBlt(Display.Canvas.Handle, 0, 0, W, H - Y,
             Image.Canvas.Handle, 0, N, W, H - Y - N,
             SRCCOPY);
end;

// Expand from bottom right
procedure Effect035(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, W - X, H - Y, X, Y,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Expand from top right
procedure Effect036(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, W - X, 0, X, Y,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Expand from top left
procedure Effect037(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, 0, X, Y,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Expand from bottom left
procedure Effect038(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, H - Y, X, Y,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Slide in from bottom right
procedure Effect039(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, W - X, H - Y, W, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Slide in from top right
procedure Effect040(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, W - X, Y - H, W, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Slide in from top left
procedure Effect041(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, X - W, Y - H, W, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Slide in from bottom left
procedure Effect042(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, X - W, H - Y, W, H,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Reveal from top left
procedure Effect043(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, 0, 0, X, Y,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
end;

// Reveal from bottom left
procedure Effect044(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, 0, H - Y, X, Y,
         Image.Canvas.Handle, 0, H - Y,
         SRCCOPY);
end;

// Reveal from bottom right
procedure Effect045(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, W - X, H - Y, X, Y,
         Image.Canvas.Handle, W - X, H - Y,
         SRCCOPY);
end;

// Reveal from top right
procedure Effect046(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, W - X, 0, X, Y,
         Image.Canvas.Handle, W - X, 0,
         SRCCOPY);
end;

// Appear and Contract to top left
procedure Effect047(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, 0, (2 * W) - X, (2 * H) - Y,
             Image.Canvas.Handle, 0, 0, X, Y,
             SRCCOPY);
end;

// Appear and Contract to bottom left
procedure Effect048(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, 0, Y - H, (2 * W) - X, (2 * H) - Y,
             Image.Canvas.Handle, 0, H - Y, X, Y,
             SRCCOPY);
end;

// Appear and Contract to bottom right
procedure Effect049(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, X - W, Y - H, (2 * W) - X, (2 * H) - Y,
             Image.Canvas.Handle, W - X, H - Y, X, Y,
             SRCCOPY);
end;

// Appear and Contract to top right
procedure Effect050(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, X - W, 0, (2 * W) - X, (2 * H) - Y,
             Image.Canvas.Handle, W - X, 0, X, Y,
             SRCCOPY);
end;

// Appear and Contract to middle
procedure Effect051(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, X - W, Y - H, (3 * W) - (2 * X), (3 * H) - (2 * Y),
             Image.Canvas.Handle, (W - X) div 2, (H - Y) div 2, X, Y,
             SRCCOPY);
end;

// Expand out from centre
procedure Effect052(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  StretchBlt(Display.Canvas.Handle, (W - X) div 2, (H - Y) div 2, X, Y,
             Image.Canvas.Handle, 0, 0, W, H,
             SRCCOPY);
end;

// Reveal out from centre
procedure Effect053(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  BitBlt(Display.Canvas.Handle, (W - X) div 2, (H - Y) div 2, X, Y,
         Image.Canvas.Handle, (W - X) div 2, (H - Y) div 2,
         SRCCOPY);
end;

// Reveal in to centre
procedure Effect054(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mX, mY: Integer;
begin
  mX := X div 2;
  mY := Y div 2;
  with Display.Canvas do
  begin
    ExcludeClipRect(Handle, mX, mY, W - mX, H - mY);
    try
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    finally
      SelectClipRgn(Handle, 0);
    end;
  end;
end;

// Quarters Reveal in to middle
procedure Effect055(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mX, mY: Integer;
begin
  mX := X div 2;
  mY := Y div 2;
  BitBlt(Display.Canvas.Handle, 0, 0, mX, mY,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
  BitBlt(Display.Canvas.Handle, 0, H - mY, mX, mY,
         Image.Canvas.Handle, 0, H - mY,
         SRCCOPY);
  BitBlt(Display.Canvas.Handle, W - mX, H - mY, mX, mY,
         Image.Canvas.Handle, W - mX, H - mY,
         SRCCOPY);
  BitBlt(Display.Canvas.Handle, W - mX, 0, mX, mY,
         Image.Canvas.Handle, W - mX, 0,
         SRCCOPY);
end;

// Quarters Expand to middle
procedure Effect056(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mX, mY, mW, mH: Integer;
begin
  mX := X div 2;
  mY := Y div 2;
  mW := W div 2;
  mH := H div 2;
  StretchBlt(Display.Canvas.Handle, 0, 0, mX, mY,
             Image.Canvas.Handle, 0, 0, mW, mH,
             SRCCOPY);
  StretchBlt(Display.Canvas.Handle, 0, H - mY, mX, mY,
             Image.Canvas.Handle, 0, mH, mW, mH,
             SRCCOPY);
  StretchBlt(Display.Canvas.Handle, W - mX, H - mY, mX, mY,
             Image.Canvas.Handle, mW, mH, mW, mH,
             SRCCOPY);
  StretchBlt(Display.Canvas.Handle, W - mX, 0, mX, mY,
             Image.Canvas.Handle, mW, 0, mW, mH,
             SRCCOPY);
end;

// Quarters Slide in to middle
procedure Effect057(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mX, mY, mW, mH: Integer;
begin
  mX := X div 2;
  mY := Y div 2;
  mW := W div 2;
  mH := H div 2;
  BitBlt(Display.Canvas.Handle, mX - mW, 0, mW, mH,
         Image.Canvas.Handle, 0, 0,
         SRCCOPY);
  BitBlt(Display.Canvas.Handle, mW, mY - mH, mW, mH,
         Image.Canvas.Handle, mW, 0,
         SRCCOPY);
  BitBlt(Display.Canvas.Handle, W - mX, mH, mW, mH,
         Image.Canvas.Handle, mW, mH,
         SRCCOPY);
  BitBlt(Display.Canvas.Handle, 0, H - mY, mW, mH,
         Image.Canvas.Handle, 0, mH,
         SRCCOPY);
end;

// Curved Reveal from left
procedure Effect058(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateRoundRectRgn(-2 * W, 0, 2 * X, H + 1, 2 * W, 2 * W);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Curved Reveal from right
procedure Effect059(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateRoundRectRgn(W - 2 * X, 0, 3 * W, H + 1, 2 * W, 2 * W);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars in from right
procedure Effect060(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 0, W, H, 1, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars in from left
procedure Effect061(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 0, W, H, 2, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars left then right
procedure Effect062(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 0, W, H, 4, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars right then left
procedure Effect063(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 0, W, H, 5, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars from both sides
procedure Effect064(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(X, 0, W, H, 3, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from right
procedure Effect065(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, 0, W, H, 1, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from left
procedure Effect066(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, 0, W, H, 2, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred out from middle (horiz)
procedure Effect067(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, 0, W, H, 3, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred in to middle (horiz)
procedure Effect068(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, 0, W, H, 4, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Curved Reveal from top
procedure Effect069(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateRoundRectRgn(0, -2 * H, W + 1, 2 * Y, 2 * H, 2 * H);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Curved Reveal from bottom
procedure Effect070(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateRoundRectRgn(0, H - 2 * Y, W + 1, 3 * H, 2 * H, 2 * H);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars from bottom
procedure Effect071(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(0, 2 * Y, W, H, 0, 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars from top
procedure Effect072(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(0, 2 * Y, W, H, 0, 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars top then bottom
procedure Effect073(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(0, 2 * Y, W, H, 0, 4);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars bottom then top
procedure Effect074(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(0, 2 * Y, W, H, 0, 5);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bars from top and bottom
procedure Effect075(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(0, Y, W, H, 0, 3);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Unven shred from bottom
procedure Effect076(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(0, Y, W, H, 0, 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from top
procedure Effect077(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(0, Y, W, H, 0, 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from horizon
procedure Effect078(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(0, Y, W, H, 0, 3);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred in to horizon
procedure Effect079(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(0, Y, W, H, 0, 4);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Curved reveal from top left
procedure Effect080(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateRoundRectRgn(-W, -H, 3 * X div 2, 3 * Y div 2, 2 * W, 2 * H);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Curved reveal from top right
procedure Effect081(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateRoundRectRgn(W - 3 * X div 2, -H, 2 * W, 3 * Y div 2, 2 * W, 2 * H);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Curved reveal from bottom left
procedure Effect082(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateRoundRectRgn(-W, H - 3 * Y div 2, 3 * X div 2, 2 * H, 2 * W, 2 * H);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Curved reveal from bottom right
procedure Effect083(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateRoundRectRgn(W - 3 * X div 2, H - 3 * Y div 2, 2 * W, 2 * H, 2 * W, 2 * H);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Elliptic reveal out from centre
procedure Effect084(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH: Integer;
  Rgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  Rgn := CreateRoundRectRgn(mW - X, mH - Y, mW + X, mH + Y, 9 * X div 5, 9 * Y div 5);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Elliptic reveal in to centre
procedure Effect085(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH: Integer;
  Rgn, TmpRgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  Rgn := CreateRectRgn(0, 0, W, H);
  TmpRgn := CreateRoundRectRgn(X - mW, Y - mH, 3 * mW - X,
            3 * mH - Y, 9 * (W - X) div 5, 9 * (H - Y) div 5);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_XOR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from bottom right
procedure Effect086(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, 1, 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from top right
procedure Effect087(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, 1, 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from bottom left
procedure Effect088(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, 2, 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from top left
procedure Effect089(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, 2, 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal bounce from top left
procedure Effect090(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, 4, 4);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal bounce from bottom left
procedure Effect091(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, 4, 5);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal bounce from top right
procedure Effect092(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, 5, 4);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal bounce from bottom right
procedure Effect093(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, 5, 5);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from right top and bottom
procedure Effect094(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(X, Y, W, H, 1, 3);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from left top and bottom
procedure Effect095(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(X, Y, W, H, 2, 3);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from left right and bottom
procedure Effect096(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(X, Y, W, H, 3, 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from left right and top
procedure Effect097(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(X, Y, W, H, 3, 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from top left right and bottom
procedure Effect098(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateBarRgn(X, Y, W, H, 3, 3);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Criss Cross reveal from bottom left top right
procedure Effect099(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, TmpRgn: HRGN;
begin
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, 1, 1);
  TmpRgn := CreateBarRgn(2 * X, 2 * Y, W, H, 2, 2);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_AND);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from bottom and right
procedure Effect100(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 1, 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from top and right
procedure Effect101(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 1, 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from bottom and left
procedure Effect102(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 2, 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from top and left
procedure Effect103(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 2, 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from horiz and right
procedure Effect104(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 1, 3);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from horiz and left
procedure Effect105(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 2, 3);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from bottom and vert middle
procedure Effect106(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 3, 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from top and vert middle
procedure Effect107(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 3, 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred from centre
procedure Effect108(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 3, 3);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Uneven shred to centre
procedure Effect109(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePourRgn(X, Y, W, H, 4, 4);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Reveal diagonal from top left
procedure Effect110(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePolygonRgnEx([0, 0, 2 * X, 0, 0, 2 * Y]);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Reveal diagonal from top right
procedure Effect111(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePolygonRgnEx([W, 0, W - 2 * X, 0, W, 2 * Y]);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Reveal diagonal from bottom left
procedure Effect112(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePolygonRgnEx([0, H, 2 * X, H, 0, H - 2 * Y]);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Reveal diagonal from bottom right
procedure Effect113(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreatePolygonRgnEx([W, H, W - 2 * X, H, W, H - 2 * Y]);
  SelectClipRgn(Display.Canvas.Handle, Rgn);
  DeleteObject(Rgn);
  Display.Canvas.Draw(0, 0, Image);
  SelectClipRgn(Display.Canvas.Handle, 0);
end;

// Diagonal sweep from top left bottom right anticlockwise
procedure Effect114(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, TmpRgn: HRGN;
begin
  Rgn := CreatePolygonRgnEx([0, H, 0, 0, X, H]);
  TmpRgn := CreatePolygonRgnEx([W, H, W, 0, W - X, 0]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Diagonal sweep from top left bottom right clockwise
procedure Effect115(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, TmpRgn: HRGN;
begin
  Rgn := CreatePolygonRgnEx([W, 0, 0, 0, W, Y]);
  TmpRgn := CreatePolygonRgnEx([W, H, 0, H, 0, H - Y]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Starburst clockwise from center
procedure Effect116(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH: Integer;
  Rgn, TmpRgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  Rgn := CreatePolygonRgnEx([mW, mH, 0, 0, X, 0]);
  TmpRgn := CreatePolygonRgnEx([mW, mH, 0, H, 0, H - Y]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  TmpRgn := CreatePolygonRgnEx([mW, mH, W, H, W - X, H]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  TmpRgn := CreatePolygonRgnEx([mW, mH, W, 0, W, Y]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Starburst anticlockwise from center
procedure Effect117(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH: Integer;
  Rgn, TmpRgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  Rgn := CreatePolygonRgnEx([mW, mH, 0, 0, 0, Y]);
  TmpRgn := CreatePolygonRgnEx([mW, mH, 0, H, X, H]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  TmpRgn := CreatePolygonRgnEx([mW, mH, W, H, W, H - Y]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  TmpRgn := CreatePolygonRgnEx([mW, mH, W, 0, W - X, 0]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Triangular shred
procedure Effect118(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  sW, sH, dW, dH: Integer;
  Rgn, TmpRgn: HRGN;
begin
  sW := (W div 10) + 1;
  sH := (H div 10) + 1;
  dW := MulDiv(sW, Progress, 50);
  dH := MulDiv(sH, Progress, 50);
  Rgn := 0;
  X := 0;
  while X < W do
  begin
    Inc(X, sW);
    Y := 0;
    while Y < H + sH do
    begin
      Inc(Y, sH);
      TmpRgn := CreatePolygonRgnEx([X - dW, Y - dH, X, Y + dH, X + dW, Y - dH]);
      if Rgn <> 0 then
      begin
        CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
        DeleteObject(TmpRgn);
      end
      else
        Rgn := TmpRgn;
      Inc(Y, sH);
    end;
    Inc(X, sW);
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Fade
procedure Effect119(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  dstPixel, srcPixel: PRGBQuad;
  Weight: Integer;
  I: Integer;
begin
  srcPixel := Image.ScanLine[H - 1];
  dstPixel := Display.ScanLine[H - 1];
  Weight := MulDiv(256, Progress, 100);
  for I := (W * H) - 1 downto 0 do
  begin
    with dstPixel^ do
    begin
      Inc(rgbRed, (Weight * (srcPixel^.rgbRed - rgbRed)) shr 8);
      Inc(rgbGreen, (Weight * (srcPixel^.rgbGreen - rgbGreen)) shr 8);
      Inc(rgbBlue, (Weight * (srcPixel^.rgbBlue - rgbBlue)) shr 8);
    end;
    Inc(srcPixel);
    Inc(dstPixel);
  end;
end;

// Pivot from top left
procedure Effect120(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  MergeRotate(Display, Image, -1, -1, (100 - Progress) * PI / 200);
end;

// Pivot from bottom left
procedure Effect121(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  MergeRotate(Display, Image, -1, H, (Progress - 100) * PI / 200);
end;

// Pivot from top right
procedure Effect122(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  MergeRotate(Display, Image, W, -1, (Progress - 100) * PI / 200);
end;

// Pivot from bottom right
procedure Effect123(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  MergeRotate(Display, Image, W, H, (100 - Progress) * PI / 200);
end;

// Speckle appear from right
procedure Effect124(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateSwarmRgn(X, Y, W, H, 1, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Speckle appear from left
procedure Effect125(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateSwarmRgn(X, Y, W, H, 2, 0);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Speckle appear from bottom
procedure Effect126(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateSwarmRgn(X, Y, W, H, 0, 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Speckle appear from top
procedure Effect127(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateSwarmRgn(X, Y, W, H, 0, 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Random squares appear
procedure Effect128(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, SavedRandSeed: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);
  S := (Min(W, H) div 50) + 1;
  ComplexRegion := TComplexRegion.Create;
  try
    X := 0;
    while X < W do
    begin
      Inc(X, S);
      Y := 0;
      while Y < H do
      begin
        Inc(Y, S);
        if Random(100) < Progress then
          ComplexRegion.AddRect(X - S, Y - S, X + S, Y + S);
        Inc(Y, S);
      end;
      Inc(X, S);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
    RandSeed := SavedRandSeed;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Push right
procedure Effect129(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    BitBlt(Handle, X, 0, W - X, H,
           Handle, 0, 0,
           SRCCOPY);
    BitBlt(Handle, 0, 0, X, H,
           Image.Canvas.Handle, W - X, 0,
           SRCCOPY);
  end;
end;

// Push left
procedure Effect130(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    BitBlt(Handle, 0, 0, W - X, H,
           Handle, X, 0,
           SRCCOPY);
    BitBlt(Handle, W - X, 0, X, H,
           Image.Canvas.Handle, 0, 0,
           SRCCOPY);
  end;
end;

// Push and squeeze right
procedure Effect131(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    StretchBlt(Handle, X, 0, W - X, H, Handle, 0, 0, W, H, SRCCOPY);
    BitBlt(Handle, 0, 0, X, H, Image.Canvas.Handle, W - X, 0, SRCCOPY);
  end;
end;

// Push and squeeze left
procedure Effect132(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    StretchBlt(Handle, 0, 0, W - X, H, Handle, 0, 0, W, H, SRCCOPY);
    BitBlt(Handle, W - X, 0, X, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
  end;
end;

// Push down
procedure Effect133(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    BitBlt(Handle, 0, Y, W, H - Y, Handle, 0, 0, SRCCOPY);
    BitBlt(Handle, 0, 0, W, Y, Image.Canvas.Handle, 0, H - Y, SRCCOPY);
  end;
end;

// Push up
procedure Effect134(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    BitBlt(Handle, 0, 0, W, H - Y, Handle, 0, Y, SRCCOPY);
    BitBlt(Handle, 0, H - Y, W, Y, Image.Canvas.Handle, 0, 0, SRCCOPY);
  end;
end;

// Push and sqeeze down
procedure Effect135(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    StretchBlt(Handle, 0, Y, W, H - Y, Handle, 0, 0, W, H, SRCCOPY);
    BitBlt(Handle, 0, 0, W, Y, Image.Canvas.Handle, 0, H - Y, SRCCOPY);
  end;
end;

// Push and sqeeze up
procedure Effect136(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    StretchBlt(Handle, 0, 0, W, H - Y, Handle, 0, 0, W, H, SRCCOPY);
    BitBlt(Handle, 0, H - Y, W, Y, Image.Canvas.Handle, 0, 0, SRCCOPY);
  end;
end;

// Blind vertically
procedure Effect137(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  S := (W div 40) + 1;
  D := MulDiv(S, Progress, 100);
  ComplexRegion := TComplexRegion.Create;
  try
    X := 0;
    while X < W do
    begin
      Inc(X, S);
      ComplexRegion.AddRect(X - D, 0, X + D, H);
      Inc(X, S);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Blind horizontally
procedure Effect138(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  S := (H div 40) + 1;
  D := MulDiv(S, Progress, 100);
  ComplexRegion := TComplexRegion.Create;
  try
    Y := 0;
    while Y < H do
    begin
      Inc(Y, S);
      ComplexRegion.AddRect(0, Y - D, W, Y + D);
      Inc(Y, S);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Uneven blind from left
procedure Effect139(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  if X = 0 then Exit;
  S := X;
  D := MulDiv(S, Progress, 100);
  ComplexRegion := TComplexRegion.Create;
  try
    X := 0;
    while X < W do
    begin
      ComplexRegion.AddRect(X, 0, X + D, H);
      Inc(X, S);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Uneven blind from right
procedure Effect140(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  if X = 0 then Exit;
  S := X;
  D := MulDiv(S, Progress, 100);
  ComplexRegion := TComplexRegion.Create;
  try
    X := W;
    while X > 0 do
    begin
      ComplexRegion.AddRect(X - D, 0, X, H);
      Dec(X, S);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Uneven blind from top
procedure Effect141(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  if Y = 0 then Exit;
  S := Y;
  D := MulDiv(S, Progress, 100);
  ComplexRegion := TComplexRegion.Create;
  try
    Y := 0;
    while Y < H do
    begin
      ComplexRegion.AddRect(0, Y, W, Y + D);
      Inc(Y, S);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Uneven blind from bottom
procedure Effect142(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  if Y = 0 then Exit;
  S := Y;
  D := MulDiv(S, Progress, 100);
  ComplexRegion := TComplexRegion.Create;
  try
    Y := H;
    while Y > 0 do
    begin
      ComplexRegion.AddRect(0, Y - D, W, Y);
      Dec(Y, S);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Rectangular shred
procedure Effect143(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  S := (Min(W, H) div 10) + 1;
  D := MulDiv(S, Progress, 100);
  ComplexRegion := TComplexRegion.Create;
  try
    X := 0;
    while X < W do
    begin
      Inc(X, S);
      Y := 0;
      while Y < H do
      begin
        Inc(Y, S);
        ComplexRegion.AddRect(X - D, Y - D, X + D, Y + D);
        Inc(Y, S);
      end;
      Inc(X, S);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Sweep clockwise
procedure Effect144(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mX, mY: Integer;
  mPI: Extended;
  Rgn: HRGN;
begin
  mX := W div 2;
  mY := H div 2;
  mPI := PI / 2;
  Rgn := CreateSliceRgn(mX, mY, Ceil(Hypot(mX, mY)),
    -mPI, (PI * Progress / 50) - mPI, Progress);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Sweep anticlockwise
procedure Effect145(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mX, mY: Integer;
  mPI: Extended;
  Rgn: HRGN;
begin
  mX := W div 2;
  mY := H div 2;
  mPI := PI / 2;
  Rgn := CreateSliceRgn(mX, mY, Ceil(Hypot(mX, mY)),
    -mPI, (-PI * Progress / 50) - mPI, Progress);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Rectangles apear from left and disapear to right
procedure Effect146(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  SW, SH, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  SW := X;
  SH := H div 20;
  if (SW = 0) or (SH = 0) then Exit;
  ComplexRegion := TComplexRegion.Create;
  try
    D := MulDiv(SH, Progress, 100);
    Y := -SH;
    while Y < H do
    begin
      ComplexRegion.AddRect(0, Y - D, W, Y + D);
      Inc(Y, 3 * SH);
    end;
    D := MulDiv(SW, Progress, 100);
    X := 0;
    while X < W do
    begin
      ComplexRegion.AddRect(X, 0, X + D, H);
      Inc(X, SW);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Rectangles apear from right and disapear to left
procedure Effect147(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  SW, SH, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  SW := X;
  SH := H div 20;
  if (SW = 0) or (SH = 0) then Exit;
  ComplexRegion := TComplexRegion.Create;
  try
    D := MulDiv(SH, Progress, 100);
    Y := -SH;
    while Y < H do
    begin
      ComplexRegion.AddRect(0, Y - D, W, Y + D);
      Inc(Y, 3 * SH);
    end;
    D := MulDiv(SW, Progress, 100);
    X := W;
    while X > 0 do
    begin
      ComplexRegion.AddRect(X - D, 0, X, H);
      Dec(X, SW);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Rectangles apear from up and disapear to bottom
procedure Effect148(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  SW, SH, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  SW := W div 20;
  SH := Y;
  if (SW = 0) or (SH = 0) then Exit;
  ComplexRegion := TComplexRegion.Create;
  try
    D := MulDiv(SW, Progress, 100);
    X := -SW;
    while X < W do
    begin
      ComplexRegion.AddRect(X - D, 0, X + D, H);
      Inc(X, 3 * SW);
    end;
    D := MulDiv(SH, Progress, 100);
    Y := 0;
    while Y < H do
    begin
      ComplexRegion.AddRect(0, Y, W, Y + D);
      Inc(Y, SH);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Rectangles apear from bottom and disapear to up
procedure Effect149(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  SW, SH, D: Integer;
  ComplexRegion: TComplexRegion;
  Rgn: HRGN;
begin
  SW := W div 20;
  SH := Y;
  if (SW = 0) or (SH = 0) then Exit;
  ComplexRegion := TComplexRegion.Create;
  try
    D := MulDiv(SW, Progress, 100);
    X := -SW;
    while X < W do
    begin
      ComplexRegion.AddRect(X - D, 0, X + D, H);
      Inc(X, 3 * SW);
    end;
    D := MulDiv(SH, Progress, 100);
    Y := H;
    while Y > 0 do
    begin
      ComplexRegion.AddRect(0, Y - D, W, Y);
      Dec(Y, SH);
    end;
    Rgn := ComplexRegion.CreateRegion;
  finally
    ComplexRegion.Free;
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Rotational rectangle in center
procedure Effect150(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH, mX, mY: Integer;
  Pts: array[1..4] of TPoint;
  Angle: Extended;
  Rgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  mX := X div 2;
  mY := Y div 2;
  Pts[1].X := mW - mX;
  Pts[1].Y := mH - mY;
  Pts[2].X := mW + mX;
  Pts[2].Y := mH - mY;
  Pts[3].X := mW + mX;
  Pts[3].Y := mH + mY;
  Pts[4].X := mW - mX;
  Pts[4].Y := mH + mY;
  Angle := PI * Progress / 50;
  if Odd(Integer(Image.Handle)) then Angle := -Angle;
  RotatePoints(Pts, mW, mH, Angle);
  Rgn := CreatePolygonRgn(Pts, 4, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Rotational star in center
procedure Effect151(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH, mX, mY, dX, dY: Integer;
  Pts: array[1..8] of TPoint;
  Angle: Extended;
  Rgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  mX := X div 2;
  mY := Y div 2;
  dX := 2 * X;
  dY := 2 * Y;
  Pts[1].X := mW - dX;
  Pts[1].Y := mH;
  Pts[2].X := mW - mX;
  Pts[2].Y := mH - mY;
  Pts[3].X := mW;
  Pts[3].Y := mH - dY;
  Pts[4].X := mW + mX;
  Pts[4].Y := mH - mY;
  Pts[5].X := mW + dX;
  Pts[5].Y := mH;
  Pts[6].X := mW + mX;
  Pts[6].Y := mH + mY;
  Pts[7].X := mW;
  Pts[7].Y := mH + dY;
  Pts[8].X := mW - mX;
  Pts[8].Y := mH + mY;
  Angle := PI * Progress / 50;
  if Odd(Integer(Image.Handle)) then Angle := -Angle;
  RotatePoints(Pts, mW, mH, Angle);
  Rgn := CreatePolygonRgn(Pts, 8, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Spiral rectangle
procedure Effect152(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH, mX, mY: Integer;
  Pts: array[1..4] of TPoint;
  Angle: Extended;
  Rgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  mX := X div 2;
  mY := Y div 2;
  Pts[1].X := mW - mX;
  Pts[1].Y := mH - mY;
  Pts[2].X := mW + mX;
  Pts[2].Y := mH - mY;
  Pts[3].X := mW + mX;
  Pts[3].Y := mH + mY;
  Pts[4].X := mW - mX;
  Pts[4].Y := mH + mY;
  Angle := PI * Progress / 50;
  if Odd(Integer(Image.Handle)) then Angle := -Angle;
  RotatePoints(Pts, X, Y, Angle);
  Rgn := CreatePolygonRgn(Pts, 4, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Circular shred
procedure Effect153(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, D: Integer;
  Rgn, TmpRgn: HRGN;
begin
  S := (Min(W, H) div 10) + 1;
  D := MulDiv(3 * S, Progress, 200);
  Rgn := 0;
  X := 0;
  while X < W do
  begin
    Inc(X, S);
    Y := 0;
    while Y < H do
    begin
      Inc(Y, S);
      TmpRgn := CreateEllipticRgn(X - D, Y - D, X + D, Y + D);
      if Rgn <> 0 then
      begin
        CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
        DeleteObject(TmpRgn);
      end
      else
        Rgn := TmpRgn;
      Inc(Y, S);
    end;
    Inc(X, S);
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Reveal V from left
procedure Effect154(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mH: Integer;
  Rgn: HRGN;
begin
  mH := H div 2;
  Rgn := CreatePolygonRgnEx([0, mH - Y, 2 * X, mH, 0, mH + Y]);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Reveal V from right
procedure Effect155(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mH: Integer;
  Rgn: HRGN;
begin
  mH := H div 2;
  Rgn := CreatePolygonRgnEx([W, mH - Y, W - 2 * X, mH, W, mH + Y]);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Reveal V from top
procedure Effect156(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW: Integer;
  Rgn: HRGN;
begin
  mW := W div 2;
  Rgn := CreatePolygonRgnEx([mW - X, 0, mW, 2 * Y, mW + X, 0]);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Reveal V from bottom
procedure Effect157(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW: Integer;
  Rgn: HRGN;
begin
  mW := W div 2;
  Rgn := CreatePolygonRgnEx([mW - X, H, mW, H - 2 * Y, mW + X, H]);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bow Tie Horizontal
procedure Effect158(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mH: Integer;
  Rgn, TmpRgn: HRGN;
begin
  mH := H div 2;
  Rgn := CreatePolygonRgnEx([0, mH - Y, X, mH, 0, mH + Y]);
  TmpRgn := CreatePolygonRgnEx([W, mH - Y, W - X, mH, W, mH + Y]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Bow Tie Vertical
procedure Effect159(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW: Integer;
  Rgn, TmpRgn: HRGN;
begin
  mW := W div 2;
  Rgn := CreatePolygonRgnEx([mW - X, 0, mW, 2 * Y, mW + X, 0]);
  TmpRgn := CreatePolygonRgnEx([mW - X, H, mW, H - 2 * Y, mW + X, H]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Diagonal Cross In
procedure Effect160(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH, mX, mY: Integer;
  Rgn, TmpRgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  mX := X div 2;
  mY := Y div 2;
  Rgn := CreatePolygonRgnEx([0, mH - mY, mX, mH, 0, mH + mY]);
  TmpRgn := CreatePolygonRgnEx([W, mH - mY, W - mX, mH, W, mH + mY]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  TmpRgn := CreatePolygonRgnEx([mW - mX, 0, mW, mY, mW + mX, 0]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  TmpRgn := CreatePolygonRgnEx([mW - mX, H, mW, H - mY, mW + mX, H]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Diagonal Cross Out
procedure Effect161(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH, mX, mY: Integer;
  Rgn, TmpRgn: HRGN;
begin
  X := W - X;
  Y := H - Y;
  mW := W div 2;
  mH := H div 2;
  mX := X div 2;
  mY := Y div 2;
  Rgn := CreateRectRgn(0, 0, W, H);
  TmpRgn := CreatePolygonRgnEx([0, mH - mY, mX, mH, 0, mH + mY]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_XOR);
  DeleteObject(TmpRgn);
  TmpRgn := CreatePolygonRgnEx([W, mH - mY, W - mX, mH, W, mH + mY]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_XOR);
  DeleteObject(TmpRgn);
  TmpRgn := CreatePolygonRgnEx([mW - mX, 0, mW, mY, mW + mX, 0]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_XOR);
  DeleteObject(TmpRgn);
  TmpRgn := CreatePolygonRgnEx([mW - mX, H, mW, H - mY, mW + mX, H]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_XOR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Zigzag Horizontal
procedure Effect162(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mH, mY, sH, sW: Integer;
  YY: array[1..4] of Integer;
  U, D, I, J: Integer;
  Pts: array[1..24] of TPoint;
  Rgn: HRGN;
begin
  sH := H div 10;
  sW := W div 10;
  mH := H div 2;
  mY := Y div 2 + MulDiv(sH, Progress, 100);
  YY[1] := mH + sH - mY;
  YY[2] := mH - sH - mY;
  YY[3] := mH + sH + mY;
  YY[4] := mH - sH + mY;
  X := 0;
  U := Low(Pts);
  D := High(Pts);
  for I := 1 to 6 do
  begin
    for J := 1 to 2 do
    begin
      Pts[U].X := X;
      Pts[U].Y := YY[J];
      Inc(U);
      Pts[D].X := X;
      Pts[D].Y := YY[J + 2];
      Dec(D);
      Inc(X, sW);
    end;
  end;
  Rgn := CreatePolygonRgn(Pts, 24, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Zigzag Vertical
procedure Effect163(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mX, sH, sW: Integer;
  XX: array[1..4] of Integer;
  L, R, I, J: Integer;
  Pts: array[1..24] of TPoint;
  Rgn: HRGN;
begin
  sH := H div 10;
  sW := W div 10;
  mW := W div 2;
  mX := X div 2 + MulDiv(sW, Progress, 100);
  XX[1] := mW + sW - mX;
  XX[2] := mW - sW - mX;
  XX[3] := mW + sW + mX;
  XX[4] := mW - sW + mX;
  Y := 0;
  L := Low(Pts);
  R := High(Pts);
  for I := 1 to 6 do
  begin
    for J := 1 to 2 do
    begin
      Pts[L].X := XX[J];
      Pts[L].Y := Y;
      Inc(L);
      Pts[R].X := XX[J + 2];
      Pts[R].Y := Y;
      Dec(R);
      Inc(Y, sH);
    end;
  end;
  Rgn := CreatePolygonRgn(Pts, 24, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Diamond shred
procedure Effect164(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, D: Integer;
  Rgn, TmpRgn: HRGN;
begin
  S := (Min(W, H) div 10) + 1;
  D := MulDiv(S, Progress, 50);
  Rgn := 0;
  X := 0;
  while X < W do
  begin
    Inc(X, S);
    Y := 0;
    while Y < H do
    begin
      Inc(Y, S);
      TmpRgn := CreatePolygonRgnEx([X - D, Y, X, Y - D, X + D, Y, X, Y + D]);
      if Rgn <> 0 then
      begin
        CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
        DeleteObject(TmpRgn);
      end
      else
        Rgn := TmpRgn;
      Inc(Y, S);
    end;
    Inc(X, S);
  end;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Reveal diamond out from centre
procedure Effect165(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH: Integer;
  Rgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  Rgn := CreatePolygonRgnEx([mW - X, mH, mW, mH - Y, mW + X, mH, mW, mH + Y]);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Reveal diamond in to centre
procedure Effect166(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH: Integer;
  Rgn, TmpRgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  Rgn := CreateRectRgn(0, 0, W, H);
  TmpRgn := CreatePolygonRgnEx([X - mW, mH, mW, Y - mH, 3 * mW - X, mH, mW, 3 * mH - Y]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_XOR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Diagonal Box Out
procedure Effect167(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  mW, mH, mX, mY: Integer;
  Rgn, TmpRgn: HRGN;
begin
  mW := W div 2;
  mH := H div 2;
  mX := X div 2;
  mY := Y div 2;
  Rgn := CreatePolygonRgnEx([-mX, mH, mW, -mY, 2 * mW + mX, mH, mW, 2 * mH + mY]);
  TmpRgn := CreatePolygonRgnEx([mX, mH, mW, mY, 2 * mW - mX, mH, mW, 2 * mH - mY]);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_XOR);
  DeleteObject(TmpRgn);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Pixelate
procedure Effect168(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  S, sW, sH: Integer;
  SrcDC, DstDC: HDC;
begin
  DstDC := Display.Canvas.Handle;
  if Progress <= 50 then    
  begin
    SrcDC := DstDC;
    S := 180 - MulDiv(Progress, 180 - 98, 50);
  end
  else
  begin
    SrcDC := Image.Canvas.Handle;
    X := W - X;
    Y := H - Y;
    S := 180 + MulDiv((Progress - 100), 180 - 98, 50);
  end;
  X := MulDiv(X, S, 100);
  Y := MulDiv(Y, S, 100);
  sW := Max(W - 2 * X, 2);
  sH := Max(H - 2 * Y, 2);
  if (Progress >= 41) and (Progress <= 59) then
  begin
    MergeTransparent(Display, Image, 5 + (Progress - 41) * 5, X, Y, sW, sH);
    SrcDC := DstDC;
  end;
  StretchBlt(DstDC, -2 * X, -2 * Y, W + 4 * X, H + 4 * Y,
             SrcDC, X, Y, sW, sH,
             SRCCOPY)
end;

// Dissolve
procedure Effect169(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  SavedRandSeed: Integer;
  dstPixel, srcPixel: PRGBQuad;
  I: Integer;
begin
  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);
  srcPixel := Image.ScanLine[H - 1];
  dstPixel := Display.ScanLine[H - 1];
  for I := (W * H) - 1 downto 0 do
  begin
    if Random(100) < Progress then
      dstPixel^ := srcPixel^;
    Inc(srcPixel);
    Inc(dstPixel);
  end;
  RandSeed := SavedRandSeed;
end;

// Random Bars Horizontal
procedure Effect170(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  SavedRandSeed: Integer;
  dstPixel, srcPixel: PRGBQuad;
begin
  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);
  srcPixel := Image.ScanLine[H - 1];
  dstPixel := Display.ScanLine[H - 1];
  for Y := 0 to H - 1 do
    if Random(100) < Progress then
    begin
      for X := 0 to W - 1 do
      begin
        dstPixel^ := srcPixel^;
        Inc(srcPixel);
        Inc(dstPixel);
      end;
    end
    else
    begin
      Inc(srcPixel, W);
      Inc(dstPixel, W);
    end;
  RandSeed := SavedRandSeed;
end;

// Random Bars Vertical
procedure Effect171(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  SavedRandSeed, N: Integer;
  dstPixel, srcPixel: PRGBQuad;
begin
  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);
  N := W * H;
  srcPixel := Image.ScanLine[H - 1];
  dstPixel := Display.ScanLine[H - 1];
  for X := 0 to W - 1 do
  begin
    if Random(100) < Progress then
    begin
      for Y := 0 to H - 1 do
      begin
        dstPixel^ := srcPixel^;
        Inc(srcPixel, W);
        Inc(dstPixel, W);
      end;
      Dec(srcPixel, N);
      Dec(dstPixel, N);
    end;
    Inc(srcPixel);
    Inc(dstPixel);
  end;
  RandSeed := SavedRandSeed;
end;

// Channel Mix
procedure Effect172(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  SavedRandSeed: Integer;
  dstPixel, srcPixel: PRGBQuadChannles;
  C1, C2, C3, Weight, I: Integer;
begin
  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);
  C1 := Random(3);
  repeat C2 := Random(3) until C1 <> C2;
  C3 := not (C1 or C2) and $03;
  RandSeed := SavedRandSeed;
  srcPixel := Image.ScanLine[H - 1];
  dstPixel := Display.ScanLine[H - 1];
  if Progress <= 33 then
  begin
    Weight := MulDiv(256, Progress, 33);
    for I := (W * H) - 1 downto 0 do
    begin
      Inc(dstPixel^[C1], (Weight * (srcPixel^[C1] - dstPixel^[C1])) shr 8);
      Inc(srcPixel);
      Inc(dstPixel);
    end;
  end
  else if Progress <= 66 then
  begin
    Weight := MulDiv(256, Progress - 33, 33);
    for I := (W * H) - 1 downto 0 do
    begin
      dstPixel^[C1] := srcPixel^[C1];
      Inc(dstPixel^[C2], (Weight * (srcPixel^[C2] - dstPixel^[C2])) shr 8);
      Inc(srcPixel);
      Inc(dstPixel);
    end;
  end
  else
  begin
    Weight := MulDiv(256, Progress - 66, 33);
    for I := (W * H) - 1 downto 0 do
    begin
      dstPixel^[C1] := srcPixel^[C1];
      dstPixel^[C2] := srcPixel^[C2];
      Inc(dstPixel^[C3], (Weight * (srcPixel^[C3] - dstPixel^[C3])) shr 8);
      Inc(srcPixel);
      Inc(dstPixel);
    end;
  end;
end;

// Slide out from right
procedure Effect173(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    BitBlt(Handle, X, 0, W - X, H, Handle, 0, 0, SRCCOPY);
    BitBlt(Handle, 0, 0, X, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
  end;
end;

// Slide out from left
procedure Effect174(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    BitBlt(Handle, 0, 0, W - X, H, Handle, X, 0, SRCCOPY);
    BitBlt(Handle, W - X, 0, X, H, Image.Canvas.Handle, W - X, 0, SRCCOPY);
  end;
end;

// Slide out from bottom
procedure Effect175(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    BitBlt(Handle, 0, Y, W, H - Y, Handle, 0, 0, SRCCOPY);
    BitBlt(Handle, 0, 0, W, Y, Image.Canvas.Handle, 0, 0, SRCCOPY);
  end;
end;

// Slide out from top
procedure Effect176(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
begin
  with Display.Canvas do
  begin
    BitBlt(Handle, 0, 0, W, H - Y, Handle, 0, Y, SRCCOPY);
    BitBlt(Handle, 0, H - Y, W, Y, Image.Canvas.Handle, 0, H - Y, SRCCOPY);
  end;
end;

procedure Effect177(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  dstPixel, srcPixel: PRGBQuadChannles;
  I, R, G, B: Integer;
begin
  srcPixel := Image.ScanLine[H - 1];
  dstPixel := Display.ScanLine[H - 1];

  for I := (W * H) - 1 downto 0 do
  begin
    if Random(100) < Progress then
      dstPixel^ := srcPixel^
    else
    begin
      // Generiere zufällige Farben für Rot, Grün, Blau
      R := Random(40);
      G := Random(40);
      B := Random(40);

      // Setze den Wert für dstPixel
      dstPixel^[0] := R;  // R
      dstPixel^[1] := G;  // G
      dstPixel^[2] := B;  // B
      dstPixel^[3] := 255; // A (Alpha-Kanal auf 255 setzen, falls erforderlich)
    end;

    Inc(srcPixel);
    Inc(dstPixel);
  end;
end;



// Effect178: Radial clock wipe from center (clockwise)
procedure Effect178(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn: HRGN;
  centerX, centerY: Integer;
  angle: Extended;
begin
  centerX := W div 2;
  centerY := H div 2;
  angle := (Progress / 100) * 2 * Pi;  // Full circle over 0..100 progress
  rgn := CreateRectRgn(0, 0, W, H);
  try
    CombineRgn(rgn, rgn, CreateSliceRgn(centerX, centerY, Max(W,H)*2, 0, angle, 64), RGN_AND);
    SelectClipRgn(Display.Canvas.Handle, rgn);
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
  finally
    DeleteObject(rgn);
  end;
end;
// Effect179: Radial clock wipe – counter-clockwise
procedure Effect179(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn: HRGN;
  centerX, centerY: Integer;
  angle: Extended;
begin
  centerX := W div 2;
  centerY := H div 2;
  angle := 2 * Pi - (Progress / 100) * 2 * Pi;  // Reverse direction
  rgn := CreateRectRgn(0, 0, W, H);
  try
    CombineRgn(rgn, rgn, CreateSliceRgn(centerX, centerY, Max(W,H)*2, angle, 2*Pi, 64), RGN_AND);
    SelectClipRgn(Display.Canvas.Handle, rgn);
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
  finally
    DeleteObject(rgn);
  end;
end;


// Effect180: Random Circles Reveal
procedure Effect180(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  GridSize: Integer;
  cX, cY: Integer;
  Rgn, TmpRgn: HRGN;
  SavedRandSeed: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);
  GridSize := Max(W, H) div 10;
  if GridSize < 20 then GridSize := 20;
  Rgn := 0;

  for cX := -1 to (W div GridSize) + 1 do
    for cY := -1 to (H div GridSize) + 1 do
      if (Random(100) < Progress) or (Progress > 80) then
      begin
        TmpRgn := CreateEllipticRgn(cX * GridSize, cY * GridSize, (cX + 1) * GridSize, (cY + 1) * GridSize);
        if Rgn = 0 then
          Rgn := TmpRgn
        else
        begin
          CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
          DeleteObject(TmpRgn);
        end;
      end;

  RandSeed := SavedRandSeed;
  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Effect181: Iris Circle Out
procedure Effect181(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn: HRGN;
  cx, cy, radX, radY: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  radX := MulDiv(W div 2, Progress, 100);
  radY := MulDiv(H div 2, Progress, 100);

  rgn := CreateEllipticRgn(cx - radX, cy - radY, cx + radX + 1, cy + radY + 1);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect182: Iris Circle In
procedure Effect182(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn, rgnFull, rgnHole: HRGN;
  cx, cy, radX, radY: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  radX := MulDiv(W div 2, 100 - Progress, 100);
  radY := MulDiv(H div 2, 100 - Progress, 100);

  rgnFull := CreateRectRgn(0, 0, W, H);
  if (radX > 2) and (radY > 2) then
  begin
    rgnHole := CreateEllipticRgn(cx - radX, cy - radY, cx + radX + 1, cy + radY + 1);
    rgn := CreateRectRgn(0, 0, 0, 0);
    CombineRgn(rgn, rgnFull, rgnHole, RGN_DIFF);
    DeleteObject(rgnHole);
  end
  else
    rgn := rgnFull;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect183: Split Reveal Vertical
procedure Effect183(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn, rgn1, rgn2: HRGN;
  SplitX: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  SplitX := MulDiv(W, Progress, 200);
  rgn1 := CreateRectRgn(0, 0, SplitX, H);
  rgn2 := CreateRectRgn(W - SplitX, 0, W, H);
  rgn := CreateRectRgn(0, 0, 0, 0);
  CombineRgn(rgn, rgn1, rgn2, RGN_OR);
  DeleteObject(rgn1);
  DeleteObject(rgn2);

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect184: Split Reveal Horizontal
procedure Effect184(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn, rgn1, rgn2: HRGN;
  SplitY: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  SplitY := MulDiv(H, Progress, 200);
  rgn1 := CreateRectRgn(0, 0, W, SplitY);
  rgn2 := CreateRectRgn(0, H - SplitY, W, H);
  rgn := CreateRectRgn(0, 0, 0, 0);
  CombineRgn(rgn, rgn1, rgn2, RGN_OR);
  DeleteObject(rgn1);
  DeleteObject(rgn2);

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect185: Parallelogram Wipe
procedure Effect185(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn: HRGN;
  Step: Integer;
  pts: array[1..4] of TPoint;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  Step := MulDiv(W + 100, Progress, 100);
  if Step = 0 then Exit;

  pts[1].X := 0; pts[1].Y := -50;
  pts[2].X := Step; pts[2].Y := (H div 3) - 50;
  pts[3].X := Step; pts[3].Y := H + (H div 3);
  pts[4].X := 0; pts[4].Y := H + 50;

  rgn := CreatePolygonRgn(pts, 4, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect186: Heart Reveal (Renumbered from 188)
procedure Effect186(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  pts: array[0..100] of TPoint;
  i, cnt: Integer;
  a: Extended;
  Scale, cx, cy: Integer;
  rgn: HRGN;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  // Linear scaling
  Scale := MulDiv(Min(W, H), Progress, 140);

  cnt := 0;
  for i := 0 to 100 do
  begin
    a := (PI * 2 * i) / 100;
    pts[cnt].X := cx + Round(Scale * 16 * Power(Sin(a), 3));
    pts[cnt].Y := cy - Round(Scale * (13 * Cos(a) - 5 * Cos(2*a) - 2 * Cos(3*a) - Cos(4*a)));
    Inc(cnt);
  end;

  rgn := CreatePolygonRgn(pts, cnt, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect187: Squeeze Vertical (Renumbered from 189)
procedure Effect187(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn: HRGN;
  WidthX: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  WidthX := MulDiv(W, Progress, 100);
  if WidthX < 1 then WidthX := 1;
  rgn := CreateRectRgn((W - WidthX) div 2, 0, (W + WidthX) div 2, H);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect188: Squeeze Horizontal (Renumbered from 190)
procedure Effect188(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn: HRGN;
  HeightY: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  HeightY := MulDiv(H, Progress, 100);
  if HeightY < 1 then HeightY := 1;
  rgn := CreateRectRgn(0, (H - HeightY) div 2, W, (H + HeightY) div 2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect189: Barn Door Vertical (Renumbered from 191)
procedure Effect189(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn, rgn1, rgn2: HRGN;
  DoorWidth: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  DoorWidth := MulDiv(W div 2, Progress, 100);
  rgn1 := CreateRectRgn((W div 2) - DoorWidth, 0, W div 2, H);
  rgn2 := CreateRectRgn(W div 2, 0, (W div 2) + DoorWidth, H);
  rgn := CreateRectRgn(0,0,0,0);
  CombineRgn(rgn, rgn1, rgn2, RGN_OR);
  DeleteObject(rgn1);
  DeleteObject(rgn2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect190: Barn Door Horizontal (Renumbered from 192)
procedure Effect190(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn, rgn1, rgn2: HRGN;
  DoorHeight: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  DoorHeight := MulDiv(H div 2, Progress, 100);
  rgn1 := CreateRectRgn(0, (H div 2) - DoorHeight, W, H div 2);
  rgn2 := CreateRectRgn(0, H div 2, W, (H div 2) + DoorHeight);
  rgn := CreateRectRgn(0,0,0,0);
  CombineRgn(rgn, rgn1, rgn2, RGN_OR);
  DeleteObject(rgn1);
  DeleteObject(rgn2);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect191: Double Iris (Renumbered from 193)
procedure Effect191(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn, rgn1, rgn2: HRGN;
  cx, cy, radX, radY: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  radX := MulDiv(W div 2, Progress, 100);
  radY := MulDiv(H, Progress, 100);

  rgn1 := CreateEllipticRgn(cx - radX - 20, cy - radY, cx - 20, cy + radY);
  rgn2 := CreateEllipticRgn(cx + 20, cy - radY, cx + radX + 20, cy + radY);
  rgn := CreateRectRgn(0,0,0,0);
  CombineRgn(rgn, rgn1, rgn2, RGN_OR);
  DeleteObject(rgn1);
  DeleteObject(rgn2);

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect192: Hexagon Reveal (Renumbered from 194)
procedure Effect192(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  rgn: HRGN;
  pts: array[0..5] of TPoint;
  i, angle: Integer;
  cx, cy, rad: Integer;
  aRad: Extended;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  rad := Round(Sqrt(W*W + H*H) * (Progress / 200));

  for i := 0 to 5 do
  begin
    angle := i * 60;
    aRad := DegToRad(angle);
    pts[i].X := cx + Round(rad * Cos(aRad));
    pts[i].Y := cy + Round(rad * Sin(aRad));
  end;

  rgn := CreatePolygonRgn(pts, 6, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(rgn);
  end;
end;

// Effect193: Checkerboard Random (Renumbered from 195)
procedure Effect193(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  GridSize, cX, cY: Integer;
  rgn, rgnTmp: HRGN;
  SavedRandSeed: Integer;
  TotalCells, CellsToReveal, CellsRevealed: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);
  GridSize := Max(W, H) div 10;
  if GridSize < 20 then GridSize := 20;
  rgn := 0;

  TotalCells := ((W div GridSize) + 2) * ((H div GridSize) + 2);
  CellsToReveal := MulDiv(TotalCells, Progress, 100);
  CellsRevealed := 0;

  for cX := -1 to (W div GridSize) + 1 do
    for cY := -1 to (H div GridSize) + 1 do
      if (cX + cY) mod 2 = 0 then
      begin
        if (CellsRevealed < CellsToReveal) then
        begin
          rgnTmp := CreateRectRgn(cX * GridSize, cY * GridSize, (cX+1)*GridSize, (cY+1)*GridSize);
          if rgn = 0 then
            rgn := rgnTmp
          else
          begin
            CombineRgn(rgn, rgn, rgnTmp, RGN_OR);
            DeleteObject(rgnTmp);
          end;
          Inc(CellsRevealed);
        end;
      end;

  RandSeed := SavedRandSeed;

  if rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(rgn);
    end;
end;

// Effect194: Rubber Eraser (Renumbered from 196)
procedure Effect194(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  GridSize: Integer;
  cX, cY: Integer;
  Rgn, TmpRgn: HRGN;
  SavedRandSeed: Integer;
  TotalCells, CellsToReveal: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);
  GridSize := Max(W, H) div 15;
  if GridSize < 20 then GridSize := 20;
  Rgn := 0;

  TotalCells := ((W div GridSize) + 2) * ((H div GridSize) + 2);
  CellsToReveal := MulDiv(TotalCells, Progress, 100);

  for cX := 0 to CellsToReveal do
  begin
    TmpRgn := CreateEllipticRgn(
      Random(W) - GridSize, Random(H) - GridSize,
      Random(W) + GridSize, Random(H) + GridSize
    );
    if Rgn = 0 then
      Rgn := TmpRgn
    else
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end;
  end;

  RandSeed := SavedRandSeed;

  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Effect195: Interlaced Bars (Renumbered from 197)
procedure Effect195(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  StripHeight, OffsetY, cY: Integer;
  Rgn, TmpRgn: HRGN;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  StripHeight := 30;
  OffsetY := MulDiv(StripHeight, Progress, 100);
  Rgn := 0;

  for cY := -StripHeight to H + StripHeight do
  begin
    if ((cY div StripHeight) mod 2 = 0) then
      TmpRgn := CreateRectRgn(0, cY, W, cY + OffsetY)
    else
      TmpRgn := CreateRectRgn(0, cY + StripHeight - OffsetY, W, cY + StripHeight);

    if Rgn = 0 then
      Rgn := TmpRgn
    else
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end;
  end;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect196: Ripple (Renumbered from 198)
procedure Effect196(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  cx, cy, i, Radius, MaxRadius: Integer;
  Rgn, TmpRgn: HRGN;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  MaxRadius := Round(Sqrt(W*W + H*H) / 2);
  Radius := MulDiv(MaxRadius, Progress, 100);
  Rgn := 0;

  i := 0;
  while i < Radius do
  begin
    if (i div 30) mod 2 = 0 then
    begin
      TmpRgn := CreateEllipticRgn(cx - i, cy - i, cx + i, cy + i);
      if Rgn = 0 then
        Rgn := TmpRgn
      else
      begin
        CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
        DeleteObject(TmpRgn);
      end;
    end;
    Inc(i);
  end;

  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Effect197: Pinwheel (Fixed: Sweeps the area clean)
procedure Effect197(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  cx, cy: Integer;
  StartAngle, EndAngle: Extended;
  Rgn, Tmp: HRGN;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  StartAngle := 0;
  EndAngle := (Progress / 100) * 2 * PI; // Full sweep based on progress
  Rgn := 0;

  // Create two sweeps (opposing propellers) to fill screen nicely
  Tmp := CreateSliceRgn(cx, cy, Max(W,H), StartAngle, EndAngle, 32);
  Rgn := Tmp;

  Tmp := CreateSliceRgn(cx, cy, Max(W,H), StartAngle + PI, EndAngle + PI, 32);
  CombineRgn(Rgn, Rgn, Tmp, RGN_OR);
  DeleteObject(Tmp);

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect198: Vertical Shred (Renumbered from 200)
procedure Effect198(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  cX, StripWidth: Integer;
  Offset, RandOffset: Integer;
  Rgn, TmpRgn: HRGN;
  SavedRandSeed: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);
  StripWidth := 20;
  Offset := MulDiv(H, Progress, 100);
  Rgn := 0;

  for cX := 0 to W div StripWidth + 1 do
  begin
    RandOffset := Random(StripWidth * 2);
    TmpRgn := CreateRectRgn(cX * StripWidth, 0, (cX+1) * StripWidth, Offset + RandOffset);
    if Rgn = 0 then
      Rgn := TmpRgn
    else
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end;
  end;

  RandSeed := SavedRandSeed;

  if Rgn <> 0 then
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
end;

// Effect199: Radar Sweep (Fixed: Reveals the swept area)
procedure Effect199(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  cx, cy: Integer;
  Angle: Extended;
  Rgn: HRGN;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  Angle := (Progress / 100) * 2 * PI;

  // Use Slice helper to create the swept region
  Rgn := CreateSliceRgn(cx, cy, Round(Sqrt(W*W + H*H) / 2), 0, Angle, 32);

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect200: Box Out (Corners reveal)
procedure Effect200(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, Tmp: HRGN;
  X1, X2, Y1, Y2: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  X1 := MulDiv(W, Progress, 100);
  Y1 := MulDiv(H, Progress, 100);
  X2 := W - X1;
  Y2 := H - Y1;

  Rgn := 0;
  Tmp := CreatePolygonRgnEx([0,0, X1,0, 0,Y1]); if Rgn=0 then Rgn:=Tmp else begin CombineRgn(Rgn,Rgn,Tmp,RGN_OR); DeleteObject(Tmp); end; // TL
  Tmp := CreatePolygonRgnEx([W,0, W,Y1, X2,0]); if Rgn=0 then Rgn:=Tmp else begin CombineRgn(Rgn,Rgn,Tmp,RGN_OR); DeleteObject(Tmp); end; // TR
  Tmp := CreatePolygonRgnEx([0,H, 0,Y2, X1,H]); if Rgn=0 then Rgn:=Tmp else begin CombineRgn(Rgn,Rgn,Tmp,RGN_OR); DeleteObject(Tmp); end; // BL
  Tmp := CreatePolygonRgnEx([W,H, X2,H, W,Y2]); if Rgn=0 then Rgn:=Tmp else begin CombineRgn(Rgn,Rgn,Tmp,RGN_OR); DeleteObject(Tmp); end; // BR

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect201: Box In (Fixed: Reveals Center Box growing out)
procedure Effect201(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
  cx, cy, Size: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  // Box grows from center
  Size := MulDiv(Min(W,H), Progress, 100);

  Rgn := CreateRectRgn(cx - Size, cy - Size, cx + Size, cy + Size);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect202: Spiral Out
procedure Effect202(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  pts: array[0..200] of TPoint;
  i, cnt: Integer;
  cx, cy: Integer;
  a, r: Extended;
  Rgn: HRGN;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  cnt := 0;
  // Simple Archimedean spiral approximation for polygon
  for i := 0 to 200 do
  begin
    a := (PI * 8 * i) / 200; // 4 full turns
    r := (Max(W,H) / 2) * (i / 200);

    pts[cnt].X := cx + Round(r * Cos(a));
    pts[cnt].Y := cy + Round(r * Sin(a));
    Inc(cnt);

    // Stop if progress reached
    if cnt > Round(Progress * 2) then Break;
  end;

  if cnt > 2 then
  begin
    Rgn := CreatePolygonRgn(pts, cnt, WINDING);
    try
      with Display.Canvas do
      begin
        SelectClipRgn(Handle, Rgn);
        BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
        SelectClipRgn(Handle, 0);
      end;
    finally
      DeleteObject(Rgn);
    end;
  end;
end;

// Effect203: Starburst (Classic 5 point star)
procedure Effect203(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  pts: array[0..10] of TPoint;
  i, cnt: Integer;
  a, rOut, rIn, aRad: Extended;
  cx, cy, Radius: Integer;
  Rgn: HRGN;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  Radius := MulDiv(Max(W,H), Progress, 100);
  rOut := Radius;
  rIn := Radius / 2.5;
  a := -PI / 2; // Start at top

  cnt := 0;
  for i := 0 to 10 do
  begin
    aRad := a;
    if i mod 2 = 0 then
      pts[cnt].X := cx + Round(rOut * Cos(aRad))
    else
      pts[cnt].X := cx + Round(rIn * Cos(aRad));

    if i mod 2 = 0 then
      pts[cnt].Y := cy + Round(rOut * Sin(aRad))
    else
      pts[cnt].Y := cy + Round(rIn * Sin(aRad));

    a := a + PI / 5;
    Inc(cnt);
  end;

  Rgn := CreatePolygonRgn(pts, 10, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect204: Horizontal Shredder (Fixed: Rubber/Jagged Reveal)
procedure Effect204(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, Tmp: HRGN;
  StripWidth, i, MaxStrips: Integer;
  YPos, RandY: Integer;
  SavedRandSeed: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);

  StripWidth := 20;
  MaxStrips := (W div StripWidth) + 1;
  Rgn := 0;

  for i := 0 to MaxStrips do
  begin
    // Base position of the "rubber"
    YPos := MulDiv(H, Progress, 100);

    // Add random jitter to simulate a shredded/rough edge
    RandY := YPos + Random(StripWidth * 2) - StripWidth;

    // Clamp to screen
    if RandY < 0 then RandY := 0;
    if RandY > H then RandY := H;

    // Create a strip from top down to the jagged Y position
    Tmp := CreateRectRgn(i * StripWidth, 0, (i+1) * StripWidth, RandY);

    if Rgn = 0 then Rgn := Tmp
    else
    begin
      CombineRgn(Rgn, Rgn, Tmp, RGN_OR);
      DeleteObject(Tmp);
    end;
  end;

  RandSeed := SavedRandSeed;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect205: Vertical Shredder (Fixed: Rubber/Jagged Reveal)
procedure Effect205(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, Tmp: HRGN;
  StripHeight, i, MaxStrips: Integer;
  XPos, RandX: Integer;
  SavedRandSeed: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  SavedRandSeed := RandSeed;
  RandSeed := Integer(Image.Handle);

  StripHeight := 20;
  MaxStrips := (H div StripHeight) + 1;
  Rgn := 0;

  for i := 0 to MaxStrips do
  begin
    XPos := MulDiv(W, Progress, 100);
    RandX := XPos + Random(StripHeight * 2) - StripHeight;

    if RandX < 0 then RandX := 0;
    if RandX > W then RandX := W;

    Tmp := CreateRectRgn(0, i * StripHeight, RandX, (i+1) * StripHeight);

    if Rgn = 0 then Rgn := Tmp
    else
    begin
      CombineRgn(Rgn, Rgn, Tmp, RGN_OR);
      DeleteObject(Tmp);
    end;
  end;

  RandSeed := SavedRandSeed;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect206: Grid Expansion (Fixed: Grid actually grows from center)
procedure Effect206(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, Tmp: HRGN;
  cx, cy, Dist, MaxDist: Integer;
  i: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  MaxDist := Round(Sqrt(W*W + H*H) / 2);
  Dist := MulDiv(MaxDist, Progress, 100);

  Rgn := 0;

  // Draw Vertical lines expanding out from center
  i := cx - Dist;
  // Ensure we start near center and go out
  if i > cx then i := cx;
  if (i mod 20) <> 0 then i := i - (i mod 20); // Align to grid

  while i <= (cx + Dist) do
  begin
    if (i >= 0) and (i <= W) then
    begin
      Tmp := CreateRectRgn(i - 1, 0, i + 1, H);
      if Rgn = 0 then Rgn := Tmp
      else
      begin
        CombineRgn(Rgn, Rgn, Tmp, RGN_OR);
        DeleteObject(Tmp);
      end;
    end;
    i := i + 20; // Grid spacing
  end;

  // Draw Horizontal lines expanding out from center
  i := cy - Dist;
  if i > cy then i := cy;
  if (i mod 20) <> 0 then i := i - (i mod 20);

  while i <= (cy + Dist) do
  begin
    if (i >= 0) and (i <= H) then
    begin
      Tmp := CreateRectRgn(0, i - 1, W, i + 1);
      if Rgn = 0 then Rgn := Tmp
      else
      begin
        CombineRgn(Rgn, Rgn, Tmp, RGN_OR);
        DeleteObject(Tmp);
      end;
    end;
    i := i + 20;
  end;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;


// Effect207: Thick Diagonal Wipe (Fixed: Reveals top-left area)
procedure Effect207(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
  Offset: Integer;
  pts: array[0..3] of TPoint;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  Offset := MulDiv(W + H, Progress, 100);
  if Offset = 0 then Offset := 1;

  // Define polygon: Top-Left corner and the diagonal line
  pts[0].X := 0; pts[0].Y := 0;
  pts[1].X := Offset; pts[1].Y := 0;
  pts[2].X := Offset; pts[2].Y := H;
  pts[3].X := 0; pts[3].Y := H;

  Rgn := CreatePolygonRgn(pts, 4, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect208: Box Iris (Rounded Square from center)
procedure Effect208(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
  cx, cy, Size: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  Size := MulDiv(Min(W,H), Progress, 100);

  Rgn := CreateRoundRectRgn(cx - Size, cy - Size, cx + Size, cy + Size, 30, 30);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect209: Waterfall (Columns falling)
procedure Effect209(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, Tmp: HRGN;
  ColWidth, i, MaxCols: Integer;
  DropDist: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  ColWidth := 20;
  MaxCols := (W div ColWidth) + 1;
  DropDist := MulDiv(H, Progress, 100);
  Rgn := 0;

  for i := 0 to MaxCols do
  begin
    // Staggered start based on column index to create wave
    Tmp := CreateRectRgn(i * ColWidth, 0, (i+1) * ColWidth, DropDist + (i mod 2) * (ColWidth*2));
    if Rgn = 0 then Rgn := Tmp
    else
    begin
      CombineRgn(Rgn, Rgn, Tmp, RGN_OR);
      DeleteObject(Tmp);
    end;
  end;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect210: Laser Scan (Fixed: Now a "Sawtooth" laser cutter - ZigZag edge)
procedure Effect210(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
  ix, YPos: Integer;
  pts: array[0..300] of TPoint;
  PtsCount: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  YPos := MulDiv(H, Progress, 100);
  PtsCount := 0;

  // Build a shape that looks like a jagged laser beam
  // Top Left -> Top Right -> Bottom Right (ZigZag) -> Bottom Left -> Close

  pts[PtsCount].X := 0; pts[PtsCount].Y := 0; Inc(PtsCount);
  pts[PtsCount].X := W; pts[PtsCount].Y := 0; Inc(PtsCount);
  pts[PtsCount].X := W; pts[PtsCount].Y := YPos; Inc(PtsCount);

  // Create the jagged bottom edge
  ix := W - 20;
  while ix >= 0 do
  begin
    // ZigZag pattern: Every 20px, jump up or down slightly
    if (ix div 20) mod 2 = 0 then
      pts[PtsCount].Y := YPos - 10 // Up
    else
      pts[PtsCount].Y := YPos + 20; // Down (Beam thickness)

    pts[PtsCount].X := ix;
    Inc(PtsCount);
    if PtsCount > High(pts) then Break;
    ix := ix - 20;
  end;

  Rgn := CreatePolygonRgn(pts, PtsCount, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect211: Wave (Fixed: Rebuilt polygon logic for proper fill)
procedure Effect211(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn: HRGN;
  ix, BaseY: Integer;
  // Fixed size array to avoid memory alloc issues in D7
  pts: array[0..300] of TPoint;
  PtsCount: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  BaseY := Round((Progress/100) * H);
  PtsCount := 0;

  // 1. Top Left
  pts[PtsCount].X := 0; pts[PtsCount].Y := 0; Inc(PtsCount);
  // 2. Top Right
  pts[PtsCount].X := W; pts[PtsCount].Y := 0; Inc(PtsCount);
  // 3. Bottom Right (at base height)
  pts[PtsCount].X := W; pts[PtsCount].Y := BaseY; Inc(PtsCount);

  // 4. Wave path going Left
  ix := W - 10;
  // Loop must be manual, Delphi 7 has no 'step' keyword
  while ix >= 0 do
  begin
    pts[PtsCount].X := ix;
    // Calculate Y with Sine wave
    pts[PtsCount].Y := Round(BaseY + (Sin(ix * 0.05) * 30));

    // Clamp Y to prevent invalid polygons
    if pts[PtsCount].Y < 0 then pts[PtsCount].Y := 0;
    if pts[PtsCount].Y > H then pts[PtsCount].Y := H;

    Inc(PtsCount);
    if PtsCount > High(pts) then Break; // Safety
    ix := ix - 10;
  end;

  Rgn := CreatePolygonRgn(pts, PtsCount, WINDING);
  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect212: Random Mosaic (Small squares)
procedure Effect212(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  GridSize, cX, cY: Integer;
  Rgn, Tmp: HRGN;
  TotalCells, CellsToReveal: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  GridSize := 30;
  Rgn := 0;
  TotalCells := ((W div GridSize) + 1) * ((H div GridSize) + 1);
  CellsToReveal := MulDiv(TotalCells, Progress, 100);

  for cX := 0 to (W div GridSize) + 1 do
    for cY := 0 to (H div GridSize) + 1 do
      if ((cX + cY) mod 3 = 0) and (CellsToReveal > 0) then
      begin
        Tmp := CreateRectRgn(cX * GridSize, cY * GridSize, (cX+1)*GridSize, (cY+1)*GridSize);
        if Rgn = 0 then Rgn := Tmp
        else
        begin
          CombineRgn(Rgn, Rgn, Tmp, RGN_OR);
          DeleteObject(Tmp);
        end;
        Dec(CellsToReveal);
      end;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect213: Corner Slide (Image slides in from corners)
procedure Effect213(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, Tmp: HRGN;
  XPos, YPos: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  XPos := MulDiv(W, Progress, 100);
  YPos := MulDiv(H, Progress, 100);

  Rgn := 0;
  // TL Corner
  Tmp := CreateRectRgn(0, 0, XPos, YPos);
  if Rgn = 0 then Rgn := Tmp else begin CombineRgn(Rgn,Rgn,Tmp,RGN_OR); DeleteObject(Tmp); end;
  // BR Corner
  Tmp := CreateRectRgn(W-XPos, H-YPos, W, H);
  if Rgn = 0 then Rgn := Tmp else begin CombineRgn(Rgn,Rgn,Tmp,RGN_OR); DeleteObject(Tmp); end;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect214: Circle Pulse (Alternating rings)
procedure Effect214(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  cx, cy, r, MaxR: Integer;
  Rgn, Tmp: HRGN;
  i: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  cx := W div 2;
  cy := H div 2;
  MaxR := MulDiv(Max(W,H), Progress, 100);
  Rgn := 0;

  // Draw concentric circles
  i := 0;
  while i < MaxR do
  begin
    if (i div 20) mod 2 = 0 then
    begin
      Tmp := CreateEllipticRgn(cx - i, cy - i, cx + i, cy + i);
      if Rgn = 0 then Rgn := Tmp
      else
      begin
        CombineRgn(Rgn, Rgn, Tmp, RGN_OR);
        DeleteObject(Tmp);
      end;
    end;
    Inc(i, 5);
  end;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;

// Effect215: Vertical Block Slide (Fixed: Reveal whole columns)
procedure Effect215(Display, Image: TBitmap; W, H, X, Y, Progress: Integer);
var
  Rgn, Tmp: HRGN;
  ColWidth, i, MaxCols: Integer;
  YPos, RandY: Integer;
begin
  if Progress > 98 then
  begin
    BitBlt(Display.Canvas.Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
    Exit;
  end;

  ColWidth := 30;
  MaxCols := (W div ColWidth) + 1;
  YPos := MulDiv(H, Progress, 100);
  Rgn := 0;

  for i := 0 to MaxCols do
  begin
    // Create a randomized Y offset for the bottom of this column
    // This makes it look like "blocks" sliding, but fills the whole column from top
    if (i mod 2 = 0) then
      RandY := Random(ColWidth)
    else
      RandY := -Random(ColWidth);

    Tmp := CreateRectRgn(i * ColWidth, 0, (i+1) * ColWidth, YPos + RandY);
    if Rgn = 0 then Rgn := Tmp
    else
    begin
      CombineRgn(Rgn, Rgn, Tmp, RGN_OR);
      DeleteObject(Tmp);
    end;
  end;

  try
    with Display.Canvas do
    begin
      SelectClipRgn(Handle, Rgn);
      BitBlt(Handle, 0, 0, W, H, Image.Canvas.Handle, 0, 0, SRCCOPY);
      SelectClipRgn(Handle, 0);
    end;
  finally
    DeleteObject(Rgn);
  end;
end;





end.
