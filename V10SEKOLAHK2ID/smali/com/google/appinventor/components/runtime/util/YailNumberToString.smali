.class public final Lcom/google/appinventor/components/runtime/util/YailNumberToString;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:D = 1000000.0

.field static final a:Ljava/lang/String; = "YailNumberToString"

.field static a:Ljava/text/DecimalFormat; = null

.field static a:Ljava/text/DecimalFormatSymbols; = null

.field static a:Ljava/util/Locale; = null

.field private static final b:D = 1.0E-6

.field private static final b:Ljava/lang/String; = "#####0.0####"

.field static b:Ljava/text/DecimalFormat; = null

.field private static final c:Ljava/lang/String; = "0.####E0"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->a:Ljava/util/Locale;

    .line 44
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->a:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->a:Ljava/text/DecimalFormatSymbols;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->a:Ljava/text/DecimalFormatSymbols;

    const-string v2, "#####0.0####"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->a:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->a:Ljava/text/DecimalFormatSymbols;

    const-string v2, "0.####E0"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->b:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(D)Ljava/lang/String;
    .locals 5

    .line 60
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "-infinity"

    return-object p0

    :cond_0
    const-string p0, "+infinity"

    return-object p0

    .line 68
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_2

    double-to-long p0, p0

    .line 69
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 71
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    .line 73
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_3
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->b:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
