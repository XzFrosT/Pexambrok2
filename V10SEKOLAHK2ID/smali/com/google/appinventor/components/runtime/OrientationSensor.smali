.class public Lcom/google/appinventor/components/runtime/OrientationSensor;
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
    description = "<p>Non-visible component providing information about the device\'s physical orientation in three dimensions: <ul> <li> <strong>Roll</strong>: 0 degrees when the device is level, increases to      90 degrees as the device is tilted up on its left side, and      decreases to -90 degrees when the device is tilted up on its right side.      </li> <li> <strong>Pitch</strong>: 0 degrees when the device is level, up to      90 degrees as the device is tilted so its top is pointing down,      up to 180 degrees as it gets turned over.  Similarly, as the device      is tilted so its bottom points down, pitch decreases to -90      degrees, then further decreases to -180 degrees as it gets turned all the way      over.</li> <li> <strong>Azimuth</strong>: 0 degrees when the top of the device is      pointing north, 90 degrees when it is pointing east, 180 degrees      when it is pointing south, 270 degrees when it is pointing west,      etc.</li></ul>     These measurements assume that the device itself is not moving.</p>"
    iconName = "images/orientationsensor.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final a:Ljava/lang/String; = "OrientationSensor"

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3


# instance fields
.field private a:F

.field private final a:Landroid/hardware/Sensor;

.field private final a:Landroid/hardware/SensorManager;

.field private a:Z

.field private final a:[F

.field private b:F

.field private final b:Landroid/hardware/Sensor;

.field private b:Z

.field private final b:[F

.field private c:F

.field private c:Z

.field private final c:[F

.field private d:Z

.field private final d:[F

.field private e:I

.field private final e:[F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 121
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 101
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:[F

    new-array v1, v0, [F

    .line 102
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:[F

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 111
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:[F

    new-array v1, v1, [F

    .line 112
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->d:[F

    new-array v0, v0, [F

    .line 113
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->e:[F

    .line 125
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Landroid/hardware/Sensor;

    .line 127
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:Landroid/hardware/Sensor;

    .line 130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 131
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->Enabled(Z)V

    return-void
.end method

.method static a(FF)F
    .locals 2

    float-to-double v0, p0

    .line 293
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    float-to-double p0, p1

    .line 295
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    neg-double p0, p0

    .line 293
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private a()I
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v1, "window"

    .line 338
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 339
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 340
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 341
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->getRotation(Landroid/view/Display;)I

    move-result v0

    return v0

    .line 343
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 3

    .line 138
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:Z

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:Z

    .line 153
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:Z

    .line 154
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Angle()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 273
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->a(FF)F

    move-result v0

    return v0
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    .line 189
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public Azimuth()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 254
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:F

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

    .line 214
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Z

    if-eq v0, p1, :cond_1

    .line 215
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Z

    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->a()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 200
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Z

    return v0
.end method

.method public Magnitude()F
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 320
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 321
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 322
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public OrientationChanged(FFF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the orientation has changed."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 175
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

    const-string p1, "OrientationChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Pitch()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 232
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:F

    return v0
.end method

.method public Roll()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 243
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 438
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->b()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 444
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 450
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Z

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->a()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 357
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:Z

    if-eqz v0, :cond_6

    .line 358
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const-string v1, "OrientationSensor"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected sensor type: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 372
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:[F

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->d:Z

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:[F

    invoke-static {v0, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:Z

    .line 367
    iget p1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->e:I

    .line 382
    :goto_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->d:Z

    if-eqz p1, :cond_6

    .line 383
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:[F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->d:[F

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:[F

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:[F

    invoke-static {p1, v0, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 387
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:[F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->e:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 390
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->e:[F

    aget p1, p1, v4

    float-to-double v6, p1

    .line 391
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p1, v6

    .line 390
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeAzimuth(F)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:F

    .line 392
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->e:[F

    aget p1, p1, v5

    float-to-double v6, p1

    .line 393
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p1, v6

    .line 392
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizePitch(F)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:F

    .line 396
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->e:[F

    aget p1, p1, v3

    float-to-double v6, p1

    .line 397
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    neg-double v6, v6

    double-to-float p1, v6

    .line 396
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeRoll(F)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    .line 400
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->a()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value for getScreenRotation(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 413
    :cond_2
    iget p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:F

    .line 414
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:F

    .line 415
    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    goto :goto_1

    .line 410
    :cond_3
    iget p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    neg-float p1, p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    goto :goto_1

    .line 405
    :cond_4
    iget p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:F

    neg-float p1, p1

    .line 406
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    neg-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:F

    .line 407
    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    .line 424
    :cond_5
    :goto_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->a:F

    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->b:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->c:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->OrientationChanged(FFF)V

    :cond_6
    return-void
.end method
