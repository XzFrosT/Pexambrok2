.class Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;

.field private a:[Ljava/lang/Float;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array p1, p2, [Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a:[Ljava/lang/Float;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;ILcom/google/appinventor/components/runtime/BufferedSingleValueSensor$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;-><init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V

    return-void
.end method

.method private a()F
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 62
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a:[Ljava/lang/Float;

    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 63
    aget-object v5, v4, v0

    if-eqz v5, :cond_0

    .line 64
    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    int-to-double v0, v1

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    :goto_1
    double-to-float v0, v2

    return v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;)F
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a()F

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;Ljava/lang/Float;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a(Ljava/lang/Float;)V

    return-void
.end method

.method private a(Ljava/lang/Float;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a:[Ljava/lang/Float;

    iget v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a:I

    aput-object p1, v0, v1

    .line 53
    array-length p1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->a:I

    :cond_0
    return-void
.end method
