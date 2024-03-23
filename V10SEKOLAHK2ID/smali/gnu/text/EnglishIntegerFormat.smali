.class public Lgnu/text/EnglishIntegerFormat;
.super Ljava/text/NumberFormat;
.source "EnglishIntegerFormat.java"


# static fields
.field private static cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final ones:[Ljava/lang/String;

.field public static final onesth:[Ljava/lang/String;

.field private static ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final power1000s:[Ljava/lang/String;

.field public static final tens:[Ljava/lang/String;

.field public static final tensth:[Ljava/lang/String;


# instance fields
.field public ordinal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const-string v4, "one"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string/jumbo v4, "two"

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const-string/jumbo v4, "three"

    const/4 v7, 0x3

    aput-object v4, v1, v7

    const-string v4, "four"

    const/4 v8, 0x4

    aput-object v4, v1, v8

    const-string v4, "five"

    const/4 v9, 0x5

    aput-object v4, v1, v9

    const-string/jumbo v4, "six"

    const/4 v10, 0x6

    aput-object v4, v1, v10

    const-string/jumbo v4, "seven"

    const/4 v11, 0x7

    aput-object v4, v1, v11

    const-string v4, "eight"

    const/16 v12, 0x8

    aput-object v4, v1, v12

    const-string v4, "nine"

    const/16 v13, 0x9

    aput-object v4, v1, v13

    const-string/jumbo v4, "ten"

    const/16 v14, 0xa

    aput-object v4, v1, v14

    const-string v4, "eleven"

    const/16 v15, 0xb

    aput-object v4, v1, v15

    const-string/jumbo v4, "twelve"

    const/16 v16, 0xc

    aput-object v4, v1, v16

    const-string/jumbo v4, "thirteen"

    const/16 v17, 0xd

    aput-object v4, v1, v17

    const-string v4, "fourteen"

    const/16 v18, 0xe

    aput-object v4, v1, v18

    const-string v4, "fifteen"

    const/16 v19, 0xf

    aput-object v4, v1, v19

    const-string/jumbo v4, "sixteen"

    const/16 v20, 0x10

    aput-object v4, v1, v20

    const-string/jumbo v4, "seventeen"

    const/16 v21, 0x11

    aput-object v4, v1, v21

    const-string v4, "eighteen"

    const/16 v22, 0x12

    aput-object v4, v1, v22

    const-string v4, "nineteen"

    const/16 v23, 0x13

    aput-object v4, v1, v23

    .line 34
    sput-object v1, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v4, "first"

    aput-object v4, v1, v5

    const-string/jumbo v4, "second"

    aput-object v4, v1, v6

    const-string/jumbo v4, "third"

    aput-object v4, v1, v7

    const-string v4, "fourth"

    aput-object v4, v1, v8

    const-string v4, "fifth"

    aput-object v4, v1, v9

    const-string/jumbo v4, "sixth"

    aput-object v4, v1, v10

    const-string/jumbo v4, "seventh"

    aput-object v4, v1, v11

    const-string v4, "eighth"

    aput-object v4, v1, v12

    const-string v4, "ninth"

    aput-object v4, v1, v13

    const-string/jumbo v4, "tenth"

    aput-object v4, v1, v14

    const-string v4, "eleventh"

    aput-object v4, v1, v15

    const-string/jumbo v4, "twelveth"

    aput-object v4, v1, v16

    const-string/jumbo v4, "thirteenth"

    aput-object v4, v1, v17

    const-string v4, "fourteenth"

    aput-object v4, v1, v18

    const-string v4, "fifteenth"

    aput-object v4, v1, v19

    const-string/jumbo v4, "sixteenth"

    aput-object v4, v1, v20

    const-string/jumbo v4, "seventeenth"

    aput-object v4, v1, v21

    const-string v4, "eighteenth"

    aput-object v4, v1, v22

    const-string v4, "nineteenth"

    aput-object v4, v1, v23

    .line 42
    sput-object v1, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    new-array v1, v14, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v3, v1, v5

    const-string/jumbo v4, "twenty"

    aput-object v4, v1, v6

    const-string/jumbo v4, "thirty"

    aput-object v4, v1, v7

    const-string v4, "forty"

    aput-object v4, v1, v8

    const-string v4, "fifty"

    aput-object v4, v1, v9

    const-string/jumbo v4, "sixty"

    aput-object v4, v1, v10

    const-string/jumbo v4, "seventy"

    aput-object v4, v1, v11

    const-string v4, "eighty"

    aput-object v4, v1, v12

    const-string v4, "ninety"

    aput-object v4, v1, v13

    .line 50
    sput-object v1, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    new-array v1, v14, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v3, v1, v5

    const-string/jumbo v4, "twentieth"

    aput-object v4, v1, v6

    const-string/jumbo v4, "thirtieth"

    aput-object v4, v1, v7

    const-string v4, "fortieth"

    aput-object v4, v1, v8

    const-string v4, "fiftieth"

    aput-object v4, v1, v9

    const-string/jumbo v4, "sixtieth"

    aput-object v4, v1, v10

    const-string/jumbo v4, "seventieth"

    aput-object v4, v1, v11

    const-string v4, "eightieth"

    aput-object v4, v1, v12

    const-string v4, "ninetieth"

    aput-object v4, v1, v13

    .line 56
    sput-object v1, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, " thousand"

    aput-object v2, v1, v5

    const-string v2, " million"

    aput-object v2, v1, v6

    const-string v2, " billion"

    aput-object v2, v1, v7

    const-string v2, " trillion"

    aput-object v2, v1, v8

    const-string v2, " quadrillion"

    aput-object v2, v1, v9

    const-string v2, " quintillion"

    aput-object v2, v1, v10

    const-string v2, " sextillion"

    aput-object v2, v1, v11

    const-string v2, " septillion"

    aput-object v2, v1, v12

    const-string v2, " octillion"

    aput-object v2, v1, v13

    const-string v2, " nonillion"

    aput-object v2, v1, v14

    const-string v2, " decillion"

    aput-object v2, v1, v15

    const-string v2, " undecillion"

    aput-object v2, v1, v16

    const-string v2, " duodecillion"

    aput-object v2, v1, v17

    const-string v2, " tredecillion"

    aput-object v2, v1, v18

    const-string v2, " quattuordecillion"

    aput-object v2, v1, v19

    const-string v2, " quindecillion"

    aput-object v2, v1, v20

    const-string v2, " sexdecillion"

    aput-object v2, v1, v21

    const-string v2, " septendecillion"

    aput-object v2, v1, v22

    const-string v2, " octodecillion"

    aput-object v2, v1, v23

    const-string v2, " novemdecillion"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, " vigintillion"

    aput-object v2, v1, v0

    .line 62
    sput-object v1, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 15
    iput-boolean p1, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    return-void
.end method

.method public static getInstance(Z)Lgnu/text/EnglishIntegerFormat;
    .locals 1

    if-eqz p0, :cond_1

    .line 22
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez p0, :cond_0

    .line 23
    new-instance p0, Lgnu/text/EnglishIntegerFormat;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object p0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 24
    :cond_0
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez p0, :cond_2

    .line 29
    new-instance p0, Lgnu/text/EnglishIntegerFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object p0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 30
    :cond_2
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    return-object p0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    double-to-long v0, p1

    long-to-double v2, v0

    cmpl-double v4, v2, p1

    if-nez v4, :cond_0

    .line 181
    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 182
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_1

    .line 160
    iget-boolean p1, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "zeroth"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "zero"

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    cmp-long p4, p1, v0

    if-gez p4, :cond_2

    const-string p4, "minus "

    .line 165
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    neg-long p1, p1

    :cond_2
    move-wide v2, p1

    const/4 v4, 0x0

    .line 168
    iget-boolean v5, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    :goto_1
    return-object p3
.end method

.method format(Ljava/lang/StringBuffer;JIZ)V
    .locals 12

    move-object v6, p1

    move/from16 v7, p4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e8

    cmp-long v0, p2, v10

    if-ltz v0, :cond_1

    .line 110
    div-long v2, p2, v10

    add-int/lit8 v4, v7, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 111
    rem-long v0, p2, v10

    cmp-long v2, v0, v8

    if-lez v2, :cond_0

    const-string v2, ", "

    .line 113
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_2

    const-string/jumbo v2, "th"

    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    move-wide v0, p2

    :cond_2
    :goto_0
    cmp-long v2, v0, v8

    if-lez v2, :cond_5

    long-to-int v1, v0

    if-eqz p5, :cond_3

    if-nez v7, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object v8, p0

    .line 119
    invoke-virtual {p0, p1, v1, v0}, Lgnu/text/EnglishIntegerFormat;->format999(Ljava/lang/StringBuffer;IZ)V

    .line 120
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    array-length v1, v0

    if-lt v7, v1, :cond_4

    const-string v0, " times ten to the "

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v7, 0x3

    int-to-long v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 123
    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    const-string v0, " power"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-lez v7, :cond_6

    .line 127
    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    move-object v8, p0

    :cond_6
    :goto_2
    return-void
.end method

.method format999(Ljava/lang/StringBuffer;IZ)V
    .locals 3

    const/16 v0, 0x64

    if-lt p2, v0, :cond_2

    .line 79
    div-int/lit8 v0, p2, 0x64

    .line 80
    rem-int/lit8 p2, p2, 0x64

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-le v0, v1, :cond_0

    .line 83
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "hundred"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez p2, :cond_1

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v0, "th"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    const/16 v0, 0x14

    if-lt p2, v0, :cond_4

    .line 94
    div-int/lit8 v0, p2, 0xa

    .line 95
    rem-int/lit8 p2, p2, 0xa

    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    .line 96
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    :goto_1
    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez p2, :cond_4

    const/16 v0, 0x2d

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    if-lez p2, :cond_6

    if-eqz p3, :cond_5

    .line 102
    sget-object p3, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object p3, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    :goto_2
    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 188
    new-instance p1, Ljava/lang/Error;

    const-string p2, "EnglishIntegerFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .locals 2

    int-to-long v0, p1

    .line 133
    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0, p1, p2, v0, v1}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/4 p2, 0x0

    invoke-interface {p3, v0, p2, p1}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 2

    .line 149
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method
