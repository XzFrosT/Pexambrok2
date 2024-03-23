.class public Lcom/google/appinventor/components/runtime/NxtColorSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a color sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtColorSensor$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x100

.field private static final a:Ljava/lang/String; = "3"

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/NxtSensorType;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:I = 0x2ff

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

.field private final a:Ljava/lang/Runnable;

.field private a:Z

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z

.field private e:I

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/util/Map;

    const/high16 v1, -0x10000

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorType;->ColorRed:Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/util/Map;

    const v2, -0xff0100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/common/NxtSensorType;->ColorGreen:Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/util/Map;

    const v3, -0xffff01

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/appinventor/components/common/NxtSensorType;->ColorBlue:Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/util/Map;

    const v4, 0xffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/google/appinventor/components/common/NxtSensorType;->ColorNone:Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Ljava/util/Map;

    const/4 v4, 0x1

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, -0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    const-string v0, "NxtColorSensor"

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 90
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    .line 91
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    const p1, 0xffffff

    .line 92
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c:I

    .line 93
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    const-string v0, "3"

    .line 144
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->SensorPort(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->DetectColor(Z)V

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChangedEventEnabled(Z)V

    const/16 v1, 0x100

    .line 151
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BottomOfRange(I)V

    const/16 v1, 0x2ff

    .line 152
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->TopOfRange(I)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRangeEventEnabled(Z)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRangeEventEnabled(Z)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRangeEventEnabled(Z)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->GenerateColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c:I

    return p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getBooleanValueFromBytes([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getSWORDValueFromBytes([BI)I

    move-result p1

    .line 259
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 261
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 267
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Lcom/google/appinventor/components/runtime/NxtColorSensor$a;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtColorSensor;Lcom/google/appinventor/components/runtime/NxtColorSensor$a;)Lcom/google/appinventor/components/runtime/NxtColorSensor$a;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a()Z
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Z

    if-eqz v0, :cond_0

    .line 551
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Z

    return v0

    .line 553
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->e:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 336
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getBooleanValueFromBytes([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 338
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getUWORDValueFromBytes([BI)I

    move-result p1

    .line 339
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 344
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object p1
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->e:I

    return p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->e:Z

    return p0
.end method

.method static synthetic e(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range. The AboveRange event will not occur if the DetectColor property is set to True or if the AboveRangeEventEnabled property is set to False."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    .line 510
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 492
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result v0

    .line 494
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->e:Z

    .line 496
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 501
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    .line 502
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the DetectColor property is set to False and the light level goes above the TopOfRange."
    .end annotation

    .line 482
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->e:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range. The BelowRange event will not occur if the DetectColor property is set to True or if the BelowRangeEventEnabled property is set to False."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    .line 429
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 411
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result v0

    .line 413
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c:Z

    .line 415
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 420
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    .line 421
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the DetectColor property is set to False and the light level goes below the BottomOfRange."
    .end annotation

    .line 401
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 355
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->d:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 366
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->d:I

    .line 367
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    return-void
.end method

.method public ColorChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Detected color has changed. The ColorChanged event will not occur if the DetectColor property is set to False or if the ColorChangedEventEnabled property is set to False."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ColorChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ColorChangedEventEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result v0

    .line 290
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Z

    .line 292
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const p1, 0xffffff

    .line 297
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c:I

    .line 298
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public ColorChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the ColorChanged event should fire when the DetectColor property is set to True and the detected color changes."
    .end annotation

    .line 278
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b:Z

    return v0
.end method

.method public DetectColor(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 211
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result v0

    .line 213
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Z

    .line 214
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DetectColor"

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->initializeSensor(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const v1, 0xffffff

    .line 222
    iput v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c:I

    .line 223
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 225
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public DetectColor()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the sensor should detect color or light. True indicates that the sensor should detect color; False indicates that the sensor should detect light. If the DetectColor property is set to True, the BelowRange, WithinRange, and AboveRange events will not occur and the sensor will not generate color. If the DetectColor property is set to False, the ColorChanged event will not occur."
    .end annotation

    .line 199
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Z

    return v0
.end method

.method public GenerateColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color that should generated by the sensor. Only None, Red, Green, or Blue are valid values. The sensor will not generate color when the DetectColor property is set to True."
    .end annotation

    .line 524
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->f:I

    return v0
.end method

.method public GenerateColor(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "lego_nxt_generated_color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 538
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GenerateColor"

    if-eqz v0, :cond_0

    .line 539
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->f:I

    .line 540
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 541
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->initializeSensor(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v0, 0x1a3

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public GetColor()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current detected color, or the color None if the color can not be read or if the DetectColor property is set to False."
    .end annotation

    const-string v0, "GetColor"

    .line 235
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const v2, 0xffffff

    if-nez v1, :cond_0

    return v2

    .line 238
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Z

    if-nez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1a1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v2

    .line 244
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 245
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Z

    if-eqz v1, :cond_2

    .line 246
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    return v2
.end method

.method public GetLightLevel()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current light level as a value between 0 and 1023, or -1 if the light level can not be read or if the DetectColor property is set to True."
    .end annotation

    const-string v0, "GetLightLevel"

    .line 315
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 318
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Z

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1a2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v2

    .line 324
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 325
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Z

    if-eqz v1, :cond_2

    .line 326
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    return v2
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 176
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->setSensorPort(Ljava/lang/String;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 378
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->e:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "767"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 389
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->e:I

    .line 390
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range. The WithinRange event will not occur if the DetectColor property is set to True or if the WithinRangeEventEnabled property is set to False."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    .line 471
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 453
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result v0

    .line 455
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->d:Z

    .line 457
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 462
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    .line 463
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the DetectColor property is set to False and the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 442
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->d:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->ColorFull:Lcom/google/appinventor/components/common/NxtSensorType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/util/Map;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->f:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtSensorType;

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Raw:Lcom/google/appinventor/components/common/NxtSensorMode;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->resetInputScaledValue(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)V

    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    return-void
.end method
