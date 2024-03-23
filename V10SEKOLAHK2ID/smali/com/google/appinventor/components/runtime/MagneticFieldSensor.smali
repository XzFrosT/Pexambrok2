.class public Lcom/google/appinventor/components/runtime/MagneticFieldSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that measures the ambient geomagnetic field for all three physical axes (x, y, z) in Tesla https://en.wikipedia.org/wiki/Tesla_(unit).</p>"
    iconName = "images/magneticSensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:D

.field private a:F

.field private a:Landroid/hardware/Sensor;

.field private final a:Landroid/hardware/SensorManager;

.field private a:Z

.field private b:F

.field private b:Z

.field private c:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Z

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x2

    .line 49
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Landroid/hardware/Sensor;

    .line 50
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a()V

    return-void
.end method

.method private a()Landroid/hardware/Sensor;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private a()V
    .locals 3

    .line 137
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 138
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b:Z

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b:Z

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:F

    .line 148
    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b:F

    .line 149
    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->c:F

    :cond_0
    return-void
.end method


# virtual methods
.method public AbsoluteStrength()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the absolute strength of the field."
    .end annotation

    .line 91
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:D

    return-wide v0
.end method

.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates that there is a magnetic field sensor in the device and it is available."
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

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
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Z

    if-eq v0, p1, :cond_0

    .line 75
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Z

    .line 77
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Z

    if-eqz p1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b()V

    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates whether or not the magnetic field sensor is enabled and working."
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Z

    return v0
.end method

.method public MagneticChanged(FFFD)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when magnetic field has changed, setting the new values in parameters."
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
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

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "MagneticChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the maximum range the magnetic sensor can reach."
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public XStrength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the field\'s strength in the X-axis."
    .end annotation

    .line 96
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:F

    return v0
.end method

.method public YStrength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the field\'s strength in the Y-axis."
    .end annotation

    .line 101
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b:F

    return v0
.end method

.method public ZStrength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the field\'s strength in the Z-axis."
    .end annotation

    .line 106
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->c:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 154
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    .line 156
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:F

    .line 157
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b:F

    .line 158
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->c:F

    .line 159
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:F

    mul-float v0, v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:D

    .line 160
    iget v3, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->c:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->MagneticChanged(FFFD)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->a:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->b()V

    :cond_0
    return-void
.end method
