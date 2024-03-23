.class public Lcom/google/appinventor/components/runtime/AccelerometerSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that can detect shaking and measure acceleration approximately in three dimensions using SI units (m/s<sup>2</sup>).  The components are: <ul>\n<li> <strong>xAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when the phone is tilted to the right (i.e.,      its left side is raised), and negative when the phone is tilted      to the left (i.e., its right size is raised).</li>\n <li> <strong>yAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when its bottom is raised, and negative when      its top is raised. </li>\n <li> <strong>zAccel</strong>: Equal to -9.8 (earth\'s gravity in meters per      second per second when the device is at rest parallel to the ground      with the display facing up,      0 when perpendicular to the ground, and +9.8 when facing down.       The value can also be affected by accelerating it with or against      gravity. </li></ul>"
    iconName = "images/accelerometersensor.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:D = 5.0

.field private static final a:I = 0xa

.field private static final a:Ljava/lang/String; = "AccelerometerSensor"

.field private static final a:Z = true

.field private static final b:D = 13.0

.field private static final c:D = 20.0


# instance fields
.field private a:F

.field private a:J

.field private final a:Landroid/content/res/Resources;

.field private a:Landroid/hardware/Sensor;

.field private final a:Landroid/hardware/SensorManager;

.field private final a:Landroid/os/Handler;

.field private final a:Landroid/view/WindowManager;

.field private a:Lcom/google/appinventor/components/common/Sensitivity;

.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private b:I

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:F

.field private volatile c:I

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 148
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Ljava/util/Queue;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Ljava/util/Queue;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:Z

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Z

    .line 153
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/content/res/Resources;

    .line 154
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/view/WindowManager;

    .line 155
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/hardware/SensorManager;

    .line 156
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/hardware/Sensor;

    .line 157
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/os/Handler;

    .line 158
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a()V

    const/16 p1, 0x190

    .line 159
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->MinimumInterval(I)V

    .line 160
    sget-object p1, Lcom/google/appinventor/components/common/Sensitivity;->Moderate:Lcom/google/appinventor/components/common/Sensitivity;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->SensitivityAbstract(Lcom/google/appinventor/components/common/Sensitivity;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AccelerometerSensor;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:I

    return p1
.end method

.method private a()V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;-><init>(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)V

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private a(Ljava/util/Queue;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 419
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 420
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 422
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/util/Queue;F)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;F)Z"
        }
    .end annotation

    .line 432
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 435
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    sub-float/2addr v1, p2

    .line 436
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 438
    sget-object p2, Lcom/google/appinventor/components/runtime/AccelerometerSensor$2;->a:[I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Lcom/google/appinventor/components/common/Sensitivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Sensitivity;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_5

    const/4 v4, 0x2

    const-wide/high16 v5, 0x402a000000000000L    # 13.0

    if-eq p2, v4, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    return v2

    :cond_1
    float-to-double p1, p1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double v4, p1, v0

    if-lez v4, :cond_2

    cmpg-double v0, p1, v5

    if-gez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    float-to-double p1, p1

    cmpl-double v4, p1, v5

    if-lez v4, :cond_4

    cmpg-double v4, p1, v0

    if-gez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    float-to-double p1, p1

    cmpl-double v4, p1, v0

    if-lez v4, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method private b()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public AccelerationChanged(FFF)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 253
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:F

    .line 254
    iput p2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:F

    .line 255
    iput p3, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:F

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Ljava/util/Queue;

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a(Ljava/util/Queue;F)V

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Ljava/util/Queue;

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a(Ljava/util/Queue;F)V

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:Ljava/util/Queue;

    invoke-direct {p0, v0, p3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a(Ljava/util/Queue;F)V

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Ljava/util/Queue;

    invoke-direct {p0, v2, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a(Ljava/util/Queue;F)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Ljava/util/Queue;

    invoke-direct {p0, v2, p2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a(Ljava/util/Queue;F)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:Ljava/util/Queue;

    invoke-direct {p0, v2, p3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a(Ljava/util/Queue;F)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget v4, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->d:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 267
    :cond_1
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:J

    .line 268
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Shaking()V

    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 271
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "AccelerationChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether the accelerometer is available on the device."
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 368
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 371
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Z

    if-eqz p1, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a()V

    goto :goto_0

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b()V

    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 330
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Z

    return v0
.end method

.method public LegacyMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Prior to the release that added this property the AccelerometerSensor component passed through sensor values directly as received from the Android system. However these values do not compensate for tablets that default to Landscape mode, requiring the MIT App Inventor programmer to compensate. However compensating would result in incorrect results in Portrait mode devices such as phones. We now detect Landscape mode tablets and perform the compensation. However if your project is already compensating for the change, you will now get incorrect results. Although our preferred solution is for you to update your project, you can also just set this property to \u201ctrue\u201d and our compensation code will be deactivated. Note: We recommend that you update your project as we may remove this property in a future release."
        userVisible = false
    .end annotation

    .line 467
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:Z

    return-void
.end method

.method public LegacyMode()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:Z

    return v0
.end method

.method public MinimumInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval, in milliseconds, between phone shakes"
    .end annotation

    .line 175
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->d:I

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 189
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->d:I

    return-void
.end method

.method public Sensitivity()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/Sensitivity;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how sensitive the accelerometer is. The choices are: 1 = weak, 2 = moderate,  3 = strong."
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Lcom/google/appinventor/components/common/Sensitivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Sensitivity;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public Sensitivity(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Sensitivity;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "accelerometer_sensitivity"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/Sensitivity;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Sensitivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x76d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Sensitivity"

    .line 241
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->SensitivityAbstract(Lcom/google/appinventor/components/common/Sensitivity;)V

    return-void
.end method

.method public SensitivityAbstract()Lcom/google/appinventor/components/common/Sensitivity;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Lcom/google/appinventor/components/common/Sensitivity;

    return-object v0
.end method

.method public SensitivityAbstract(Lcom/google/appinventor/components/common/Sensitivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Lcom/google/appinventor/components/common/Sensitivity;

    return-void
.end method

.method public Shaking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Shaking"

    .line 303
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public XAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 388
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:F

    return v0
.end method

.method public YAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 400
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:F

    return v0
.end method

.method public ZAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 412
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:F

    return v0
.end method

.method public getDeviceDefaultOrientation()I
    .locals 6

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    return v1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 281
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccelerometerSensor"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config.orientation = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    .line 288
    :cond_1
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v3, :cond_5

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    :cond_3
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v3
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Z

    if-eqz v0, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Z

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 477
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:Z

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 481
    iget v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:Z

    if-nez v1, :cond_0

    .line 483
    aget v1, v0, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:F

    .line 484
    aget v1, v0, v3

    neg-float v1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:F

    goto :goto_0

    .line 486
    :cond_0
    aget v1, v0, v3

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:F

    .line 487
    aget v1, v0, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:F

    .line 489
    :goto_0
    aget v0, v0, v4

    iput v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:F

    .line 490
    iget p1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:I

    .line 491
    iget p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a:F

    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->c:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->AccelerationChanged(FFF)V

    :cond_1
    return-void
.end method
