.class public Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1e

.field private static final a:Ljava/lang/String; = "4"

.field private static final b:I = 0x5a


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

.field private final a:Ljava/lang/Runnable;

.field private a:Z

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "NxtUltrasonicSensor"

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Landroid/os/Handler;

    .line 60
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    .line 61
    new-instance p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Ljava/lang/Runnable;

    const-string p1, "4"

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->SensorPort(Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BottomOfRange(I)V

    const/16 p1, 0x5a

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->TopOfRange(I)V

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRangeEventEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->c:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 4
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

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 149
    fill-array-data v0, :array_0

    .line 152
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 156
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsGetStatus(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)I

    move-result v3

    if-lez v3, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsRead(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    .line 161
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getUBYTEValueFromBytes([BI)I

    move-result p1

    if-ltz p1, :cond_1

    const/16 v1, 0xfe

    if-gt p1, v1, :cond_1

    .line 163
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object p1

    :array_0
    .array-data 1
        0x2t
        0x42t
    .end array-data
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 112
    fill-array-data v0, :array_0

    .line 116
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x41t
        0x2t
    .end array-data
.end method

.method private a()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone above the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    .line 328
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

    .line 312
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a()Z

    move-result v0

    .line 314
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->c:Z

    .line 316
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 321
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    .line 322
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .line 302
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->c:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone below the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    .line 254
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

    .line 238
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a()Z

    move-result v0

    .line 240
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Z

    .line 242
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 247
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    .line 248
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .line 228
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 182
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->c:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 193
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->c:I

    .line 194
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    return-void
.end method

.method public GetDistance()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    const-string v0, "GetDistance"

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 138
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 139
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Z

    if-eqz v1, :cond_1

    .line 140
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setSensorPort(Ljava/lang/String;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 205
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->d:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 216
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->d:I

    .line 217
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone within the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    .line 291
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

    .line 275
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a()Z

    move-result v0

    .line 277
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->b:Z

    .line 279
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 284
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;

    .line 285
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 265
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->b:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->Digital12C9V:Lcom/google/appinventor/components/common/NxtSensorType;

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Raw:Lcom/google/appinventor/components/common/NxtSensorMode;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    return-void
.end method
