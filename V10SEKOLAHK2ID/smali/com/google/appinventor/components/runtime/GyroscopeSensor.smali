.class public Lcom/google/appinventor/components/runtime/GyroscopeSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that can measure angular velocity in three dimensions in units of degrees per second.</p><p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have a gyroscope sensor.</p>"
    iconName = "images/gyroscopesensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:F

.field private final a:Landroid/hardware/Sensor;

.field private final a:Landroid/hardware/SensorManager;

.field private a:Z

.field private b:F

.field private b:Z

.field private c:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 59
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    .line 60
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Landroid/hardware/Sensor;

    .line 63
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->Enabled(Z)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 71
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b:Z

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b:Z

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:F

    .line 84
    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b:F

    .line 85
    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->c:F

    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates whether a gyroscope sensor is available."
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then sensor events will be generated and XAngularVelocity, YAngularVelocity, and ZAngularVelocity properties will have meaningful values."
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Z

    if-eq v0, p1, :cond_1

    .line 144
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Z

    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a()V

    goto :goto_0

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Z

    return v0
.end method

.method public GyroscopeChanged(FFFJ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the gyroscope sensor data has changed. The timestamp parameter is the time in nanoseconds at which the event occurred."
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "GyroscopeChanged"

    .line 99
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public XAngularVelocity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angular velocity around the X axis, in degrees per second."
    .end annotation

    .line 164
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:F

    return v0
.end method

.method public YAngularVelocity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angular velocity around the Y axis, in degrees per second."
    .end annotation

    .line 178
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b:F

    return v0
.end method

.method public ZAngularVelocity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angular velocity around the Z axis, in degrees per second."
    .end annotation

    .line 192
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->c:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 204
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:F

    .line 207
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b:F

    .line 208
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v5, v0

    iput v5, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->c:F

    .line 211
    iget v3, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->a:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->b:F

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->GyroscopeChanged(FFFJ)V

    :cond_0
    return-void
.end method
