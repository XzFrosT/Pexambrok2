.class public Lcom/google/appinventor/components/runtime/NxtLightSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a light sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtLightSensor$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x100

.field private static final a:Ljava/lang/String; = "3"

.field private static final b:I = 0x2ff


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

.field private final a:Ljava/lang/Runnable;

.field private a:Z

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "NxtLightSensor"

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 60
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Landroid/os/Handler;

    .line 61
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    .line 62
    new-instance p1, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtLightSensor;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Ljava/lang/Runnable;

    const-string p1, "3"

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->SensorPort(Ljava/lang/String;)V

    const/16 p1, 0x100

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BottomOfRange(I)V

    const/16 p1, 0x2ff

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->TopOfRange(I)V

    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BelowRangeEventEnabled(Z)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->WithinRangeEventEnabled(Z)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->AboveRangeEventEnabled(Z)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->GenerateLight(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->c:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtLightSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

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

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getBooleanValueFromBytes([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getUWORDValueFromBytes([BI)I

    move-result p1

    .line 169
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 174
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Lcom/google/appinventor/components/runtime/NxtLightSensor$a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtLightSensor;Lcom/google/appinventor/components/runtime/NxtLightSensor$a;)Lcom/google/appinventor/components/runtime/NxtLightSensor$a;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->c:Z

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

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    .line 331
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

    .line 315
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a()Z

    move-result v0

    .line 317
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->c:Z

    .line 319
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 324
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    .line 325
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the light level goes above the TopOfRange."
    .end annotation

    .line 305
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->c:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    .line 257
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

    .line 241
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a()Z

    move-result v0

    .line 243
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Z

    .line 245
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 250
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    .line 251
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the light level goes below the BottomOfRange."
    .end annotation

    .line 231
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->c:I

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

    .line 196
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->c:I

    .line 197
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    return-void
.end method

.method public GenerateLight(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 140
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->d:Z

    .line 141
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GenerateLight"

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->initializeSensor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public GenerateLight()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the light sensor should generate light."
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->d:Z

    return v0
.end method

.method public GetLightLevel()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current light level as a value between 0 and 1023, or -1 if the light level can not be read."
    .end annotation

    const-string v0, "GetLightLevel"

    .line 150
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 154
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 155
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Z

    if-eqz v1, :cond_1

    .line 156
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
        defaultValue = "3"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->setSensorPort(Ljava/lang/String;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 208
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->d:I

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

    .line 219
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->d:I

    .line 220
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    .line 294
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

    .line 278
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a()Z

    move-result v0

    .line 280
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->b:Z

    .line 282
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 287
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Lcom/google/appinventor/components/runtime/NxtLightSensor$a;

    .line 288
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 268
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->b:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->d:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->LightOn:Lcom/google/appinventor/components/common/NxtSensorType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->LightOff:Lcom/google/appinventor/components/common/NxtSensorType;

    :goto_0
    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Percentage:Lcom/google/appinventor/components/common/NxtSensorMode;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 343
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    return-void
.end method
