{
Ultibo Hack_10 font unit.

Arch
====

 <All>

Boards
======

 <All>

Licence
=======

 LGPLv2.1 with static linking exception (See COPYING.modifiedLGPL.txt)

Credits
=======

 This font was originally from the file Hack_10.ufnt

}

{$mode delphi} {Default to Delphi compatible syntax}
{$H+}          {Default to AnsiString}
{$inline on}   {Allow use of Inline procedures}

unit Hack_10;

interface

uses GlobalConfig,GlobalConst,GlobalTypes,Platform,Font;

{==============================================================================}
{const}
 {Hack_10 specific constants}

{==============================================================================}
{type}
 {Hack_10 specific types}

{==============================================================================}
{var}
 {Hack_10 specific variables}

{==============================================================================}
{Initialization Functions}

{==============================================================================}
{==============================================================================}

implementation

{==============================================================================}
{==============================================================================}
var
 {Hack_10 specific variables}
 Hack_10Initialized:Boolean;

 Hack_10FontHeader:TFontHeader = (
  Width:8;
  Height:15;
  Count:256;
  Mode:FONT_MODE_PIXEL;
  Flags:FONT_FLAG_BIGENDIAN or FONT_FLAG_RIGHTALIGN;
  Mask:0;
  CodePage:CP_ACP;
  Name:('Hack_10');
  Description:('Hack_10')
  );

 Hack_10FontData:array[0..255,0..14] of Byte = (
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $18, $3C, $7E, $5E, $1A, $18, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $38, $28, $28, $28, $28, $28, $28, $28, $38, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $18, $18, $18, $18, $18, $10, $00, $18, $18, $00, $00, $00),
   ($00, $00, $00, $24, $24, $24, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $12, $12, $14, $7F, $24, $FE, $28, $48, $48, $00, $00, $00),
   ($00, $00, $08, $08, $3C, $6A, $48, $30, $0E, $0A, $4A, $7C, $08, $08, $00),
   ($00, $00, $00, $70, $90, $90, $77, $18, $EE, $09, $09, $0E, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $10, $10, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $18, $10, $30, $20, $20, $20, $20, $20, $30, $10, $18, $00, $00),
   ($00, $00, $10, $08, $08, $0C, $04, $04, $04, $0C, $08, $08, $10, $00, $00),
   ($00, $00, $00, $10, $10, $76, $18, $28, $24, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $10, $10, $7E, $10, $10, $10, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $18, $08, $18, $10),
   ($00, $00, $00, $00, $00, $00, $00, $00, $7E, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $18, $00, $00, $00),
   ($00, $00, $00, $06, $04, $0C, $08, $18, $10, $10, $20, $20, $40, $00, $00),
   ($00, $00, $00, $3C, $64, $56, $5A, $5A, $52, $46, $64, $3C, $00, $00, $00),
   ($00, $00, $00, $38, $28, $08, $08, $08, $08, $08, $08, $3E, $00, $00, $00),
   ($00, $00, $00, $7C, $44, $06, $04, $0C, $18, $10, $20, $7E, $00, $00, $00),
   ($00, $00, $00, $7C, $06, $06, $18, $06, $02, $02, $46, $7C, $00, $00, $00),
   ($00, $00, $00, $0C, $14, $14, $24, $24, $44, $7E, $04, $04, $00, $00, $00),
   ($00, $00, $00, $7C, $40, $40, $78, $04, $06, $06, $44, $78, $00, $00, $00),
   ($00, $00, $00, $3C, $20, $40, $5C, $66, $42, $42, $66, $3C, $00, $00, $00),
   ($00, $00, $00, $7E, $04, $04, $0C, $08, $08, $10, $10, $30, $00, $00, $00),
   ($00, $00, $00, $3C, $66, $46, $64, $18, $66, $42, $46, $3C, $00, $00, $00),
   ($00, $00, $00, $3C, $44, $42, $46, $66, $3A, $06, $04, $78, $00, $00, $00),
   ($00, $00, $00, $00, $00, $18, $18, $00, $00, $18, $18, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $18, $18, $00, $00, $18, $18, $08, $08, $30),
   ($00, $00, $00, $00, $00, $02, $1C, $60, $60, $1C, $02, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $7E, $00, $00, $7E, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $40, $30, $0E, $06, $38, $40, $00, $00, $00, $00),
   ($00, $00, $00, $3C, $26, $06, $0C, $18, $10, $00, $18, $18, $00, $00, $00),
   ($00, $00, $00, $1C, $62, $42, $8E, $92, $92, $92, $8E, $40, $20, $1E, $00),
   ($00, $00, $00, $18, $18, $38, $24, $24, $64, $7E, $42, $C3, $00, $00, $00),
   ($00, $00, $00, $7C, $46, $42, $46, $7C, $42, $42, $42, $7C, $00, $00, $00),
   ($00, $00, $00, $1E, $22, $60, $40, $40, $40, $60, $22, $1E, $00, $00, $00),
   ($00, $00, $00, $78, $44, $46, $42, $42, $42, $46, $44, $78, $00, $00, $00),
   ($00, $00, $00, $7E, $60, $60, $60, $7E, $60, $60, $60, $7E, $00, $00, $00),
   ($00, $00, $00, $7E, $60, $60, $60, $7E, $60, $60, $60, $60, $00, $00, $00),
   ($00, $00, $00, $3C, $62, $40, $40, $4E, $42, $42, $62, $3C, $00, $00, $00),
   ($00, $00, $00, $42, $42, $42, $42, $7E, $42, $42, $42, $42, $00, $00, $00),
   ($00, $00, $00, $7E, $18, $18, $18, $18, $18, $18, $18, $7E, $00, $00, $00),
   ($00, $00, $00, $3C, $04, $04, $04, $04, $04, $04, $44, $78, $00, $00, $00),
   ($00, $00, $00, $43, $44, $48, $50, $78, $48, $44, $46, $43, $00, $00, $00),
   ($00, $00, $00, $60, $60, $60, $60, $60, $60, $60, $60, $7E, $00, $00, $00),
   ($00, $00, $00, $46, $66, $66, $5A, $5A, $52, $42, $42, $42, $00, $00, $00),
   ($00, $00, $00, $62, $62, $52, $52, $52, $4A, $4A, $46, $46, $00, $00, $00),
   ($00, $00, $00, $3C, $66, $42, $42, $42, $42, $42, $66, $3C, $00, $00, $00),
   ($00, $00, $00, $7C, $46, $42, $46, $7C, $40, $40, $40, $40, $00, $00, $00),
   ($00, $00, $00, $3C, $66, $42, $42, $42, $42, $42, $66, $3C, $06, $00, $00),
   ($00, $00, $00, $7C, $46, $46, $46, $78, $44, $46, $42, $43, $00, $00, $00),
   ($00, $00, $00, $3C, $42, $40, $60, $3C, $06, $02, $46, $7C, $00, $00, $00),
   ($00, $00, $00, $FF, $18, $18, $18, $18, $18, $18, $18, $18, $00, $00, $00),
   ($00, $00, $00, $42, $42, $42, $42, $42, $42, $42, $46, $3C, $00, $00, $00),
   ($00, $00, $00, $C2, $42, $46, $64, $24, $24, $28, $18, $18, $00, $00, $00),
   ($00, $00, $00, $81, $83, $DA, $5A, $5A, $6A, $66, $66, $64, $00, $00, $00),
   ($00, $00, $00, $43, $26, $24, $18, $18, $38, $24, $46, $C3, $00, $00, $00),
   ($00, $00, $00, $C3, $46, $24, $38, $18, $18, $18, $18, $18, $00, $00, $00),
   ($00, $00, $00, $7E, $06, $0C, $08, $10, $30, $20, $40, $7E, $00, $00, $00),
   ($00, $00, $18, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $18, $00),
   ($00, $00, $00, $40, $60, $20, $30, $10, $10, $08, $08, $04, $06, $00, $00),
   ($00, $00, $38, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $38, $00),
   ($00, $00, $00, $18, $2C, $E6, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $7E, $00),
   ($00, $20, $10, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $7C, $06, $3E, $42, $46, $46, $3A, $00, $00, $00),
   ($00, $00, $40, $40, $40, $5C, $66, $42, $42, $42, $66, $5C, $00, $00, $00),
   ($00, $00, $00, $00, $00, $1C, $22, $40, $40, $40, $22, $1E, $00, $00, $00),
   ($00, $00, $06, $06, $06, $3E, $66, $46, $46, $46, $66, $3A, $00, $00, $00),
   ($00, $00, $00, $00, $00, $3C, $66, $42, $7E, $40, $62, $3E, $00, $00, $00),
   ($00, $00, $0E, $10, $10, $7E, $10, $10, $10, $10, $10, $10, $00, $00, $00),
   ($00, $00, $00, $00, $00, $3A, $66, $42, $42, $42, $66, $3A, $02, $44, $3C),
   ($00, $00, $40, $40, $40, $5C, $66, $46, $46, $46, $46, $46, $00, $00, $00),
   ($00, $00, $10, $00, $00, $30, $10, $10, $10, $10, $18, $0E, $00, $00, $00),
   ($00, $00, $08, $00, $00, $38, $08, $08, $08, $08, $08, $08, $08, $08, $38),
   ($00, $00, $60, $60, $60, $66, $6C, $70, $68, $6C, $64, $63, $00, $00, $00),
   ($00, $00, $70, $10, $10, $10, $10, $10, $10, $10, $10, $0E, $00, $00, $00),
   ($00, $00, $00, $00, $00, $76, $5A, $52, $52, $52, $52, $52, $00, $00, $00),
   ($00, $00, $00, $00, $00, $5C, $66, $46, $46, $46, $46, $46, $00, $00, $00),
   ($00, $00, $00, $00, $00, $3C, $66, $42, $42, $42, $66, $3C, $00, $00, $00),
   ($00, $00, $00, $00, $00, $5C, $66, $42, $42, $42, $66, $5C, $40, $40, $40),
   ($00, $00, $00, $00, $00, $3A, $66, $46, $42, $46, $66, $3A, $02, $02, $02),
   ($00, $00, $00, $00, $00, $2E, $32, $20, $20, $20, $20, $20, $00, $00, $00),
   ($00, $00, $00, $00, $00, $3C, $62, $60, $3C, $06, $44, $7C, $00, $00, $00),
   ($00, $00, $00, $10, $10, $7E, $10, $10, $10, $10, $10, $1E, $00, $00, $00),
   ($00, $00, $00, $00, $00, $46, $46, $46, $46, $46, $66, $3A, $00, $00, $00),
   ($00, $00, $00, $00, $00, $42, $46, $24, $24, $2C, $18, $18, $00, $00, $00),
   ($00, $00, $00, $00, $00, $81, $82, $5A, $5A, $5A, $66, $24, $00, $00, $00),
   ($00, $00, $00, $00, $00, $46, $24, $18, $18, $38, $24, $C2, $00, $00, $00),
   ($00, $00, $00, $00, $00, $42, $42, $24, $24, $3C, $18, $18, $10, $10, $60),
   ($00, $00, $00, $00, $00, $7E, $04, $08, $18, $30, $20, $7E, $00, $00, $00),
   ($00, $00, $0C, $10, $10, $10, $10, $10, $60, $10, $10, $10, $10, $0C, $00),
   ($00, $00, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10),
   ($00, $00, $30, $18, $08, $08, $08, $08, $06, $08, $08, $08, $18, $30, $00),
   ($00, $00, $00, $00, $00, $00, $00, $72, $5A, $4E, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $30, $30, $30, $30, $30, $30, $30, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00)
  );

{==============================================================================}
{==============================================================================}
{Initialization Functions}
procedure Hack_10Init;
begin
 {}
 {Check Initialized}
 if Hack_10Initialized then Exit;

 {Load Hack_10}
 if FontLoad(@Hack_10FontHeader,@Hack_10FontData,SizeOf(Hack_10FontData)) = INVALID_HANDLE_VALUE then
  begin
   if PLATFORM_LOG_ENABLED then PlatformLogError('Failed to load Hack_10 font');
  end;

 Hack_10Initialized:=True;
end;

{==============================================================================}
{==============================================================================}

initialization
 Hack_10Init;

{==============================================================================}

finalization
 {Nothing}

{==============================================================================}
{==============================================================================}

end.
