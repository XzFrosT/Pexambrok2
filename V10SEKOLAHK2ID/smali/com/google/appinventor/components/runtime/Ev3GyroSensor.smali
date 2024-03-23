.class public Lcom/google/appinventor/components/runtime/Ev3GyroSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a gyro sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:I = 0x32

.field private static final b:I = 0x20


# instance fields
.field private a:D

.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/common/GyroSensorMode;

.field private final a:Ljava/lang/Runnable;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    const-string v0, "Ev3GyroSensor"

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 45
    sget-object p1, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Lcom/google/appinventor/components/common/GyroSensorMode;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 46
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:D

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Z

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Ljava/lang/Runnable;

    .line 81
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->ModeAbstract(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChangedEventEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:D

    return-wide v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:D

    return-wide p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private a(Ljava/lang/String;)D
    .locals 6

    .line 187
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorPortNumber:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 191
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x0

    const/16 v4, 0x20

    move-object v0, p0

    move-object v1, p1

    .line 187
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object p0
.end method

.method private a(Lcom/google/appinventor/components/common/GyroSensorMode;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Lcom/google/appinventor/components/common/GyroSensorMode;

    if-eq p1, v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 196
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:D

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-void
.end method


# virtual methods
.method public GetSensorValue()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current angle or rotation speed based on current mode, or -1 if the value cannot be read from sensor."
    .end annotation

    const-string v0, ""

    .line 95
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public Mode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/GyroSensorMode;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor mode can be a text constant of either \"rate\" or \"angle\", which correspond to SetAngleMode or SetRateMode respectively."
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Mode(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/GyroSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "angle"
        editorType = "lego_ev3_gyro_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/google/appinventor/components/common/GyroSensorMode;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Mode"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 112
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    return-void
.end method

.method public ModeAbstract()Lcom/google/appinventor/components/common/GyroSensorMode;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object v0
.end method

.method public ModeAbstract(Lcom/google/appinventor/components/common/GyroSensorMode;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    return-void
.end method

.method public SensorValueChanged(D)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called then the sensor value changed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 183
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "SensorValueChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SensorValueChangedEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 175
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Z

    return-void
.end method

.method public SensorValueChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the SensorValueChanged event should fire when the sensor value changed."
    .end annotation

    .line 165
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a:Z

    return v0
.end method

.method public SetAngleMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the orientation of the sensor."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    return-void
.end method

.method public SetRateMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the angular velocity of the sensor."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 205
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    return-void
.end method
