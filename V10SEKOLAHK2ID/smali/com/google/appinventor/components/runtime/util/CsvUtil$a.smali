.class Lcom/google/appinventor/components/runtime/util/CsvUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CsvUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private a:J

.field private final a:Ljava/io/Reader;

.field private a:Ljava/lang/Exception;

.field private final a:Ljava/util/regex/Pattern;

.field private a:Z

.field private final a:[C

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\"\""

    .line 95
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/util/regex/Pattern;

    const/16 v0, 0x2800

    new-array v0, v0, [C

    .line 104
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Z

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c:I

    .line 138
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    .line 149
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/io/Reader;

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 211
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    if-lez v0, :cond_0

    .line 212
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b(I)I

    move-result p1

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a()V

    return p1
.end method

.method private a()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    array-length v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    sub-int/2addr v0, v1

    .line 239
    :goto_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/io/Reader;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 243
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Z

    goto :goto_0

    .line 245
    :cond_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 249
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/lang/Exception;

    .line 250
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    aget-char v0, v0, v1

    const/16 v2, 0x22

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c(I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private a(I)Z
    .locals 2

    .line 260
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Syntax Error. unclosed quoted cell"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/lang/Exception;

    const/4 p1, 0x0

    return p1

    .line 261
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    aget-char v0, v0, p1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 262
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c(I)I

    move-result p1

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    aget-char v0, v0, p1

    if-eq v0, v1, :cond_3

    .line 264
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c:I

    .line 265
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b(I)Z

    move-result p1

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private b(I)I
    .locals 5

    .line 223
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    const/4 v1, 0x0

    .line 224
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    .line 225
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    sub-int/2addr v2, v0

    if-lez v2, :cond_0

    .line 227
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    invoke-static {v3, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :cond_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    .line 230
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:J

    sub-int/2addr p1, v0

    return p1
.end method

.method private b(I)Z
    .locals 4

    .line 278
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    return v1

    .line 279
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    aget-char v0, v0, p1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_4

    .line 295
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Syntax Error: non-whitespace between closing quote and delimiter or end"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/lang/Exception;

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/2addr p1, v1

    .line 287
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c(I)I

    move-result p1

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    aget-char v0, v0, p1

    if-ne v0, v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c(I)I

    move-result p1

    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    return v1

    :cond_4
    add-int/2addr p1, v1

    .line 292
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    return v1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private c(I)I
    .locals 1

    .line 310
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private c(I)Z
    .locals 4

    .line 314
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    return v1

    .line 315
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    aget-char v0, v0, p1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_5

    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    const/16 v2, 0x22

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 329
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Syntax Error: quote in unquoted cell"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/lang/Exception;

    const/4 p1, 0x0

    return p1

    .line 324
    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c:I

    add-int/2addr p1, v1

    .line 325
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c(I)I

    move-result p1

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    aget-char v0, v0, p1

    if-ne v0, v2, :cond_4

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c(I)I

    move-result p1

    :cond_4
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    return v1

    .line 318
    :cond_5
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c:I

    add-int/2addr p1, v1

    .line 319
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    return v1
.end method


# virtual methods
.method public getCharPosition()J
    .locals 4

    .line 203
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:J

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a()V

    .line 167
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-ge v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->next()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    aget-char v1, v1, v2

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 180
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c:I

    invoke-direct {v1, v2, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c:I

    add-int/lit8 v5, v5, -0x2

    invoke-direct {v1, v2, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 183
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    const/16 v2, 0x2c

    const/4 v4, 0x0

    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    add-int/2addr v6, v1

    sub-int/2addr v6, v3

    aget-char v1, v5, v6

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 186
    :goto_1
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:I

    const/4 v6, -0x1

    .line 187
    iput v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->c:I

    iput v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->d:I

    .line 188
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-lt v5, v6, :cond_4

    .line 189
    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a(I)I

    move-result v5

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->b:I

    if-ge v5, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 195
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    add-int/lit8 v6, v6, -0x1

    aget-char v4, v4, v6

    if-ne v4, v2, :cond_5

    const-string v2, ""

    .line 196
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 198
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/io/Reader;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:[C

    const/4 v2, 0x0

    long-to-int v3, p1

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:J

    sub-long/2addr p1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public throwAnyProblem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->a:Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    throw v0
.end method
