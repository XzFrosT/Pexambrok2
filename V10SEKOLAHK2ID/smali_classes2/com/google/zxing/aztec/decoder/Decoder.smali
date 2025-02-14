.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final NB_BITS:[I

.field private static final NB_BITS_COMPACT:[I

.field private static final NB_DATABLOCK:[I

.field private static final NB_DATABLOCK_COMPACT:[I

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private codewordSize:I

.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

.field private invertedBitCount:I

.field private numCodewords:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 44
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    const/16 v1, 0x21

    new-array v1, v1, [I

    .line 48
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    new-array v1, v0, [I

    .line 53
    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    const/16 v1, 0x21

    new-array v1, v1, [I

    .line 57
    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    const/16 v1, 0x20

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CTRL_PS"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    const-string v6, " "

    aput-object v6, v2, v5

    const-string v7, "A"

    const/4 v8, 0x2

    aput-object v7, v2, v8

    const-string v7, "B"

    const/4 v9, 0x3

    aput-object v7, v2, v9

    const-string v7, "C"

    const/4 v10, 0x4

    aput-object v7, v2, v10

    const-string v7, "D"

    aput-object v7, v2, v0

    const-string v7, "E"

    const/4 v11, 0x6

    aput-object v7, v2, v11

    const-string v7, "F"

    const/4 v12, 0x7

    aput-object v7, v2, v12

    const-string v7, "G"

    const/16 v13, 0x8

    aput-object v7, v2, v13

    const-string v7, "H"

    const/16 v14, 0x9

    aput-object v7, v2, v14

    const-string v7, "I"

    const/16 v15, 0xa

    aput-object v7, v2, v15

    const-string v7, "J"

    const/16 v16, 0xb

    aput-object v7, v2, v16

    const-string v7, "K"

    const/16 v17, 0xc

    aput-object v7, v2, v17

    const-string v7, "L"

    const/16 v18, 0xd

    aput-object v7, v2, v18

    const-string v7, "M"

    const/16 v19, 0xe

    aput-object v7, v2, v19

    const-string v7, "N"

    const/16 v20, 0xf

    aput-object v7, v2, v20

    const-string v7, "O"

    const/16 v15, 0x10

    aput-object v7, v2, v15

    const-string v7, "P"

    const/16 v22, 0x11

    aput-object v7, v2, v22

    const-string v7, "Q"

    const/16 v23, 0x12

    aput-object v7, v2, v23

    const/16 v7, 0x13

    const-string v24, "R"

    aput-object v24, v2, v7

    const/16 v7, 0x14

    const-string v24, "S"

    aput-object v24, v2, v7

    const/16 v7, 0x15

    const-string v24, "T"

    aput-object v24, v2, v7

    const/16 v7, 0x16

    const-string v24, "U"

    aput-object v24, v2, v7

    const/16 v7, 0x17

    const-string v24, "V"

    aput-object v24, v2, v7

    const/16 v7, 0x18

    const-string v24, "W"

    aput-object v24, v2, v7

    const/16 v7, 0x19

    const-string v24, "X"

    aput-object v24, v2, v7

    const/16 v7, 0x1a

    const-string v24, "Y"

    aput-object v24, v2, v7

    const/16 v7, 0x1b

    const-string v24, "Z"

    aput-object v24, v2, v7

    const/16 v7, 0x1c

    const-string v24, "CTRL_LL"

    aput-object v24, v2, v7

    const/16 v7, 0x1d

    const-string v24, "CTRL_ML"

    aput-object v24, v2, v7

    const/16 v7, 0x1e

    const-string v24, "CTRL_DL"

    aput-object v24, v2, v7

    const/16 v7, 0x1f

    const-string v24, "CTRL_BS"

    aput-object v24, v2, v7

    .line 62
    sput-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v7, "a"

    aput-object v7, v2, v8

    const-string v7, "b"

    aput-object v7, v2, v9

    const-string v7, "c"

    aput-object v7, v2, v10

    const-string v7, "d"

    aput-object v7, v2, v0

    const-string v7, "e"

    aput-object v7, v2, v11

    const-string v7, "f"

    aput-object v7, v2, v12

    const-string v7, "g"

    aput-object v7, v2, v13

    const-string v7, "h"

    aput-object v7, v2, v14

    const-string v7, "i"

    const/16 v21, 0xa

    aput-object v7, v2, v21

    const-string v7, "j"

    aput-object v7, v2, v16

    const-string v7, "k"

    aput-object v7, v2, v17

    const-string v7, "l"

    aput-object v7, v2, v18

    const-string v7, "m"

    aput-object v7, v2, v19

    const-string v7, "n"

    aput-object v7, v2, v20

    const-string v7, "o"

    aput-object v7, v2, v15

    const-string v7, "p"

    aput-object v7, v2, v22

    const-string v7, "q"

    aput-object v7, v2, v23

    const/16 v7, 0x13

    const-string v24, "r"

    aput-object v24, v2, v7

    const/16 v7, 0x14

    const-string v24, "s"

    aput-object v24, v2, v7

    const/16 v7, 0x15

    const-string v24, "t"

    aput-object v24, v2, v7

    const/16 v7, 0x16

    const-string v24, "u"

    aput-object v24, v2, v7

    const/16 v7, 0x17

    const-string v24, "v"

    aput-object v24, v2, v7

    const/16 v7, 0x18

    const-string v24, "w"

    aput-object v24, v2, v7

    const/16 v7, 0x19

    const-string v24, "x"

    aput-object v24, v2, v7

    const/16 v7, 0x1a

    const-string v24, "y"

    aput-object v24, v2, v7

    const/16 v7, 0x1b

    const-string v24, "z"

    aput-object v24, v2, v7

    const/16 v7, 0x1c

    const-string v24, "CTRL_US"

    aput-object v24, v2, v7

    const/16 v7, 0x1d

    const-string v24, "CTRL_ML"

    aput-object v24, v2, v7

    const/16 v7, 0x1e

    const-string v24, "CTRL_DL"

    aput-object v24, v2, v7

    const/16 v7, 0x1f

    const-string v24, "CTRL_BS"

    aput-object v24, v2, v7

    .line 67
    sput-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v7, "\u0001"

    aput-object v7, v2, v8

    const-string v7, "\u0002"

    aput-object v7, v2, v9

    const-string v7, "\u0003"

    aput-object v7, v2, v10

    const-string v7, "\u0004"

    aput-object v7, v2, v0

    const-string v7, "\u0005"

    aput-object v7, v2, v11

    const-string v7, "\u0006"

    aput-object v7, v2, v12

    const-string v7, "\u0007"

    aput-object v7, v2, v13

    const-string v7, "\u0008"

    aput-object v7, v2, v14

    const-string v7, "\t"

    const/16 v21, 0xa

    aput-object v7, v2, v21

    const-string v7, "\n"

    aput-object v7, v2, v16

    const-string v7, "\u000b"

    aput-object v7, v2, v17

    const-string v7, "\u000c"

    aput-object v7, v2, v18

    const-string v7, "\r"

    aput-object v7, v2, v19

    const-string v7, "\u001b"

    aput-object v7, v2, v20

    const-string v7, "\u001c"

    aput-object v7, v2, v15

    const-string v7, "\u001d"

    aput-object v7, v2, v22

    const-string v7, "\u001e"

    aput-object v7, v2, v23

    const/16 v7, 0x13

    const-string v24, "\u001f"

    aput-object v24, v2, v7

    const/16 v7, 0x14

    const-string v24, "@"

    aput-object v24, v2, v7

    const/16 v7, 0x15

    const-string v24, "\\"

    aput-object v24, v2, v7

    const/16 v7, 0x16

    const-string v24, "^"

    aput-object v24, v2, v7

    const/16 v7, 0x17

    const-string v24, "_"

    aput-object v24, v2, v7

    const/16 v7, 0x18

    const-string v24, "`"

    aput-object v24, v2, v7

    const/16 v7, 0x19

    const-string v24, "|"

    aput-object v24, v2, v7

    const/16 v7, 0x1a

    const-string v24, "~"

    aput-object v24, v2, v7

    const/16 v7, 0x1b

    const-string v24, "\u007f"

    aput-object v24, v2, v7

    const/16 v7, 0x1c

    const-string v24, "CTRL_LL"

    aput-object v24, v2, v7

    const/16 v7, 0x1d

    const-string v24, "CTRL_UL"

    aput-object v24, v2, v7

    const/16 v7, 0x1e

    const-string v24, "CTRL_PL"

    aput-object v24, v2, v7

    const/16 v7, 0x1f

    const-string v24, "CTRL_BS"

    aput-object v24, v2, v7

    .line 72
    sput-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    const-string v2, "\r"

    aput-object v2, v1, v5

    const-string v2, "\r\n"

    aput-object v2, v1, v8

    const-string v2, ". "

    aput-object v2, v1, v9

    const-string v2, ", "

    aput-object v2, v1, v10

    const-string v2, ": "

    aput-object v2, v1, v0

    const-string v2, "!"

    aput-object v2, v1, v11

    const-string v2, "\""

    aput-object v2, v1, v12

    const-string v2, "#"

    aput-object v2, v1, v13

    const-string v2, "$"

    aput-object v2, v1, v14

    const-string v2, "%"

    const/16 v7, 0xa

    aput-object v2, v1, v7

    const-string v2, "&"

    aput-object v2, v1, v16

    const-string v2, "\'"

    aput-object v2, v1, v17

    const-string v2, "("

    aput-object v2, v1, v18

    const-string v2, ")"

    aput-object v2, v1, v19

    const-string v2, "*"

    aput-object v2, v1, v20

    const-string v2, "+"

    aput-object v2, v1, v15

    const-string v2, ","

    aput-object v2, v1, v22

    const-string v2, "-"

    aput-object v2, v1, v23

    const/16 v2, 0x13

    const-string v7, "."

    aput-object v7, v1, v2

    const/16 v2, 0x14

    const-string v7, "/"

    aput-object v7, v1, v2

    const/16 v2, 0x15

    const-string v7, ":"

    aput-object v7, v1, v2

    const/16 v2, 0x16

    const-string v7, ";"

    aput-object v7, v1, v2

    const/16 v2, 0x17

    const-string v7, "<"

    aput-object v7, v1, v2

    const/16 v2, 0x18

    const-string v7, "="

    aput-object v7, v1, v2

    const/16 v2, 0x19

    const-string v7, ">"

    aput-object v7, v1, v2

    const/16 v2, 0x1a

    const-string v7, "?"

    aput-object v7, v1, v2

    const/16 v2, 0x1b

    const-string v7, "["

    aput-object v7, v1, v2

    const/16 v2, 0x1c

    const-string v7, "]"

    aput-object v7, v1, v2

    const/16 v2, 0x1d

    const-string v7, "{"

    aput-object v7, v1, v2

    const/16 v2, 0x1e

    const-string v7, "}"

    aput-object v7, v1, v2

    const/16 v2, 0x1f

    const-string v7, "CTRL_UL"

    aput-object v7, v1, v2

    .line 78
    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    new-array v1, v15, [Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object v6, v1, v5

    const-string v2, "0"

    aput-object v2, v1, v8

    const-string v2, "1"

    aput-object v2, v1, v9

    const-string v2, "2"

    aput-object v2, v1, v10

    const-string v2, "3"

    aput-object v2, v1, v0

    const-string v0, "4"

    aput-object v0, v1, v11

    const-string v0, "5"

    aput-object v0, v1, v12

    const-string v0, "6"

    aput-object v0, v1, v13

    const-string v0, "7"

    aput-object v0, v1, v14

    const-string v0, "8"

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-string v0, "9"

    aput-object v0, v1, v16

    const-string v0, ","

    aput-object v0, v1, v17

    const-string v0, "."

    aput-object v0, v1, v18

    const-string v0, "CTRL_UL"

    aput-object v0, v1, v19

    const-string v0, "CTRL_US"

    aput-object v0, v1, v20

    .line 83
    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x68
        0xf0
        0x198
        0x260
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x80
        0x120
        0x1e0
        0x2c0
        0x3c0
        0x4e0
        0x620
        0x780
        0x900
        0xaa0
        0xc60
        0xe40
        0x1040
        0x1260
        0x14a0
        0x1700
        0x1980
        0x1c20
        0x1ee0
        0x21c0
        0x24c0
        0x27e0
        0x2b20
        0x2e80
        0x3200
        0x35a0
        0x3960
        0x3d40
        0x4140
        0x4560
        0x49a0
        0x4e00
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x11
        0x28
        0x33
        0x4c
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x15
        0x30
        0x3c
        0x58
        0x78
        0x9c
        0xc4
        0xf0
        0xe6
        0x110
        0x13c
        0x16c
        0x1a0
        0x1d6
        0x210
        0x24c
        0x28c
        0x2d0
        0x316
        0x360
        0x3ac
        0x3fc
        0x398
        0x3e0
        0x42a
        0x478
        0x4c8
        0x51a
        0x570
        0x5c8
        0x622
        0x680
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private correctBits([Z)[Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x6

    .line 276
    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 277
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 279
    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 280
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    const/16 v0, 0xa

    .line 282
    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 283
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    .line 285
    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 286
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v1

    .line 293
    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    aget v2, v2, v3

    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    iget v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    .line 295
    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v4

    aget v3, v3, v4

    goto :goto_1

    .line 297
    :cond_3
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    aget v2, v2, v3

    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    iget v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    .line 298
    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v4

    aget v3, v3, v4

    :goto_1
    sub-int/2addr v3, v1

    .line 301
    iget v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 302
    :goto_2
    iget v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_6

    const/4 v7, 0x1

    .line 304
    :goto_3
    iget v9, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    if-gt v8, v9, :cond_5

    mul-int v10, v9, v6

    add-int/2addr v10, v9

    sub-int/2addr v10, v8

    add-int/2addr v10, v2

    .line 305
    aget-boolean v9, p1, v10

    if-eqz v9, :cond_4

    .line 306
    aget v9, v4, v6

    add-int/2addr v9, v7

    aput v9, v4, v6

    :cond_4
    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 317
    :cond_6
    :try_start_0
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 318
    invoke-virtual {p1, v4, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    iput v5, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 326
    iget p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int p1, p1, v1

    new-array p1, p1, [Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v0, v1, :cond_c

    .line 331
    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    sub-int/2addr v3, v8

    shl-int v3, v8, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 333
    :goto_5
    iget v10, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    if-ge v6, v10, :cond_b

    .line 335
    aget v10, v4, v0

    and-int/2addr v10, v3

    if-ne v10, v3, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    .line 337
    :goto_6
    iget v11, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    sub-int/2addr v11, v8

    if-ne v7, v11, :cond_9

    if-eq v10, v9, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 347
    iget v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_8

    .line 341
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    :cond_9
    if-ne v9, v10, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_a
    move v9, v10

    const/4 v7, 0x1

    .line 357
    :goto_7
    iget v11, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int v11, v11, v0

    add-int/2addr v11, v6

    sub-int/2addr v11, v2

    aput-boolean v10, p1, v11

    :goto_8
    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    return-object p1

    .line 320
    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    array-length v2, v1

    if-gt v0, v2, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    aget v0, v1, v0

    new-array v0, v0, [Z

    .line 382
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    array-length v2, v1

    if-gt v0, v2, :cond_5

    .line 387
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    aget v0, v1, v0

    new-array v0, v0, [Z

    .line 388
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    .line 392
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-eqz v1, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v9, v8, -0x4

    if-ge v6, v9, :cond_2

    add-int v9, v4, v6

    add-int v10, v5, v7

    .line 400
    div-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v5

    invoke-virtual {p1, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    aput-boolean v10, v0, v9

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x4

    add-int/2addr v8, v6

    add-int v9, v5, v2

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v7

    .line 401
    invoke-virtual {p1, v11, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    .line 402
    rem-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v8, 0x1

    const/4 v7, 0x0

    :goto_3
    const/4 v9, 0x5

    if-le v6, v9, :cond_3

    mul-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x8

    sub-int v10, v8, v6

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    add-int v11, v5, v2

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v7

    .line 407
    div-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p1, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    aput-boolean v11, v0, v9

    mul-int/lit8 v9, v2, 0x6

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0xc

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    add-int v10, v5, v7

    .line 409
    invoke-virtual {p1, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    aput-boolean v10, v0, v9

    add-int/lit8 v7, v7, 0x1

    .line 411
    rem-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v6, v6, -0x10

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x4

    goto :goto_1

    :cond_4
    return-object v0

    .line 385
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 1

    .line 250
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 260
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 258
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 256
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 254
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 252
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getEncodedData([Z)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 117
    iget v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v3

    mul-int v2, v2, v3

    iget v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    sub-int/2addr v2, v3

    .line 118
    array-length v3, v1

    if-gt v2, v3, :cond_10

    .line 122
    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 123
    sget-object v4, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    :cond_0
    if-nez v7, :cond_f

    const/4 v12, 0x1

    if-eqz v8, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    const/16 v13, 0x8

    const/4 v14, 0x5

    if-eqz v9, :cond_7

    sub-int v9, v2, v10

    if-ge v9, v14, :cond_2

    goto/16 :goto_6

    .line 147
    :cond_2
    invoke-static {v1, v10, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v9

    add-int/lit8 v10, v10, 0x5

    if-nez v9, :cond_4

    sub-int v9, v2, v10

    const/16 v14, 0xb

    if-ge v9, v14, :cond_3

    goto/16 :goto_6

    .line 154
    :cond_3
    invoke-static {v1, v10, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v9

    add-int/lit8 v9, v9, 0x1f

    add-int/lit8 v10, v10, 0xb

    :cond_4
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v9, :cond_6

    sub-int v15, v2, v10

    if-ge v15, v13, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    .line 163
    :cond_5
    invoke-static {v1, v10, v13}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v15

    int-to-char v15, v15

    .line 164
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x8

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v9, 0x0

    goto :goto_5

    .line 169
    :cond_7
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v4, v15, :cond_9

    sub-int v12, v2, v10

    if-ge v12, v13, :cond_8

    goto :goto_6

    .line 173
    :cond_8
    invoke-static {v1, v10, v13}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v12

    add-int/lit8 v10, v10, 0x8

    int-to-char v12, v12

    .line 176
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 181
    :cond_9
    sget-object v13, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v4, v13, :cond_a

    const/4 v13, 0x4

    goto :goto_4

    :cond_a
    const/4 v13, 0x5

    :goto_4
    sub-int v15, v2, v10

    if-ge v15, v13, :cond_b

    goto :goto_6

    .line 189
    :cond_b
    invoke-static {v1, v10, v13}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v15

    add-int/2addr v10, v13

    .line 192
    invoke-static {v4, v15}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "CTRL_"

    .line 193
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 195
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v4

    const/4 v15, 0x6

    .line 197
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v6, 0x53

    if-ne v15, v6, :cond_e

    .line 199
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x42

    if-ne v6, v8, :cond_c

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x1

    goto :goto_5

    .line 204
    :cond_d
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_5
    if-eqz v11, :cond_0

    move-object v4, v3

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 218
    :cond_f
    :goto_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 119
    :cond_10
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_4

    const/16 v0, 0x44

    if-eq p0, v0, :cond_3

    const/16 v0, 0x50

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    .line 239
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 232
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 228
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 230
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 234
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 236
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0
.end method

.method private static readCode([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    .line 464
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 7

    .line 427
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 428
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 432
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 434
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 439
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 441
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    goto :goto_2

    .line 445
    :cond_1
    invoke-virtual {p0, v2, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 446
    invoke-virtual {v1, v3, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 94
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder;->removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1, v1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
