.class public Lcom/google/appinventor/components/runtime/NxtSoundSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a sound sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x100

.field private static final a:Ljava/lang/String; = "2"

.field private static final b:I = 0x2ff


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

.field private final a:Ljava/lang/Runnable;

.field private a:Z

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "NxtSoundSensor"

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Landroid/os/Handler;

    .line 60
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    .line 61
    new-instance p1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Ljava/lang/Runnable;

    const-string p1, "2"

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->SensorPort(Ljava/lang/String;)V

    const/16 p1, 0x100

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->BottomOfRange(I)V

    const/16 p1, 0x2ff

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->TopOfRange(I)V

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->BelowRangeEventEnabled(Z)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->WithinRangeEventEnabled(Z)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->AboveRangeEventEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->c:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtSoundSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

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

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->getBooleanValueFromBytes([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->getUWORDValueFromBytes([BI)I

    move-result p1

    .line 144
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 149
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtSoundSensor;Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;)Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->c:Z

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

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sound level has gone above the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    .line 306
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

    .line 290
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a()Z

    move-result v0

    .line 292
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->c:Z

    .line 294
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 299
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    .line 300
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the sound level goes above the TopOfRange."
    .end annotation

    .line 280
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->c:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sound level has gone below the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    .line 232
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

    .line 216
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a()Z

    move-result v0

    .line 218
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Z

    .line 220
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 225
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    .line 226
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the sound level goes below the BottomOfRange."
    .end annotation

    .line 206
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 160
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->c:I

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

    .line 171
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->c:I

    .line 172
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    return-void
.end method

.method public GetSoundLevel()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current sound level as a value between 0 and 1023, or -1 if the sound level can not be read."
    .end annotation

    const-string v0, "GetSoundLevel"

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 129
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 130
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Z

    if-eqz v1, :cond_1

    .line 131
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
        defaultValue = "2"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->setSensorPort(Ljava/lang/String;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 183
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d:I

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

    .line 194
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d:I

    .line 195
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sound level has gone within the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    .line 269
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

    .line 253
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a()Z

    move-result v0

    .line 255
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->b:Z

    .line 257
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 262
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;

    .line 263
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the sound level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 243
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->b:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->SoundDB:Lcom/google/appinventor/components/common/NxtSensorType;

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Raw:Lcom/google/appinventor/components/common/NxtSensorMode;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 318
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    return-void
.end method
