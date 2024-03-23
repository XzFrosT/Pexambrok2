.class public Lcom/google/appinventor/components/runtime/ProximitySensor;
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
    description = "<p>Non-visible component that can measures the proximity of an object in cm relative to the view screen of a device. This sensor is typically used to determine whether a handset is being held up to a persons ear; i.e. lets you determine how far away an object is from a device. Many devices return the absolute distance, in cm, but some return only near and far values. In this case, the sensor usually reports its maximum range value in the far state and a lesser value in the near state.</p>"
    iconName = "images/proximitysensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:F

.field private a:Landroid/hardware/Sensor;

.field private final a:Landroid/hardware/SensorManager;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 63
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:F

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Z

    .line 69
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    .line 70
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Landroid/hardware/Sensor;

    .line 71
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private b()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the device has a proximity sensor."
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 84
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

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the distance from the object to the device"
    .end annotation

    .line 228
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:F

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes in proximity."
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 184
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Z

    if-eqz p1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->a()V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->b()V

    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Z

    return v0
.end method

.method public KeepRunningWhenOnPause(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, it will keep sensing for proximity changes even when the app is not visible"
    .end annotation

    .line 211
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->b:Z

    return-void
.end method

.method public KeepRunningWhenOnPause()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 198
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->b:Z

    return v0
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports the Maximum Range of the device\'s ProximitySensor"
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public ProximityChanged(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when distance (in cm) of the object to the device changes. "
    .end annotation

    .line 216
    iput p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:F

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ProximityChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->b()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->b:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->a()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x0

    .line 139
    aget p1, p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:F

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->ProximityChanged(F)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->a:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->b()V

    :cond_0
    return-void
.end method
