.class public Lcom/google/appinventor/components/runtime/NxtTouchSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a touch sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "1"


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

.field private final a:Ljava/lang/Runnable;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "NxtTouchSensor"

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 55
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Landroid/os/Handler;

    .line 56
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    .line 57
    new-instance p1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Ljava/lang/Runnable;

    const-string p1, "1"

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->SensorPort(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->PressedEventEnabled(Z)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->ReleasedEventEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    .line 122
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getBooleanValueFromBytes([BI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    .line 124
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getSWORDValueFromBytes([BI)I

    move-result p1

    .line 125
    new-instance v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object v1

    .line 130
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->b:Z

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

.method static synthetic a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public IsPressed()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the touch sensor is pressed."
    .end annotation

    const-string v0, "IsPressed"

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 110
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 111
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Z

    if-eqz v1, :cond_1

    .line 112
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method public Pressed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Touch sensor has been pressed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Pressed"

    .line 167
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PressedEventEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a()Z

    move-result v0

    .line 153
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Z

    .line 155
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 160
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    .line 161
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public PressedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Pressed event should fire when the touch sensor is pressed."
    .end annotation

    .line 141
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Z

    return v0
.end method

.method public Released()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Touch sensor has been released."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Released"

    .line 204
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ReleasedEventEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a()Z

    move-result v0

    .line 190
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->b:Z

    .line 192
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 197
    sget-object p1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    .line 198
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public ReleasedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Released event should fire when the touch sensor is released."
    .end annotation

    .line 178
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->b:Z

    return v0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->setSensorPort(Ljava/lang/String;)V

    return-void
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->Touch:Lcom/google/appinventor/components/common/NxtSensorType;

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Boolean:Lcom/google/appinventor/components/common/NxtSensorMode;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    return-void
.end method
