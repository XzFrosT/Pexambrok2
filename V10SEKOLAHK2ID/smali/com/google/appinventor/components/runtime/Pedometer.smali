.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Component that acts like a Pedometer. It senses motion via the Accelerometer and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. "
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:F = 0.73f

.field private static final a:I = 0xfa

.field private static final a:Ljava/lang/String; = "Pedometer"

.field private static final b:F = 40.0f

.field private static final b:I = 0x2

.field private static final b:Ljava/lang/String; = "PedometerPrefs"

.field private static final c:I = 0x64


# instance fields
.field private a:J

.field private final a:Landroid/content/Context;

.field private final a:Landroid/hardware/SensorManager;

.field private a:Z

.field private a:[F

.field private a:[J

.field private b:J

.field private b:Z

.field private b:[F

.field private c:F

.field private c:J

.field private c:Z

.field private d:F

.field private d:I

.field private d:Z

.field private e:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/16 v0, 0x7d0

    .line 55
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->f:I

    .line 57
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->g:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->h:I

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:F

    const/16 v2, 0x64

    new-array v2, v2, [F

    .line 59
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    const v2, 0x3f3ae148    # 0.73f

    .line 60
    iput v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:F

    .line 61
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    const/4 v3, 0x2

    new-array v3, v3, [J

    .line 62
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[J

    const-wide/16 v3, 0x0

    .line 63
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:J

    .line 64
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:J

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:J

    .line 65
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Z

    .line 66
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:Z

    const/4 v5, 0x1

    .line 67
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:Z

    .line 68
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:Z

    const/16 v6, 0xa

    new-array v6, v6, [F

    .line 70
    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:[F

    .line 71
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->i:I

    .line 76
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Landroid/content/Context;

    .line 78
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    .line 79
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:Z

    .line 80
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->g:I

    .line 81
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->h:I

    .line 83
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Z

    .line 84
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:F

    const-string/jumbo v5, "sensor"

    .line 86
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Landroid/hardware/SensorManager;

    .line 89
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Landroid/content/Context;

    const-string v5, "PedometerPrefs"

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v5, "Pedometer.stridelength"

    .line 90
    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:F

    const-string v2, "Pedometer.distance"

    .line 91
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    const-string v1, "Pedometer.prevStepCount"

    .line 92
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->h:I

    const-string v0, "Pedometer.clockTime"

    .line 93
    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:J

    .line 94
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->h:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->g:I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:J

    const-string p1, "Pedometer"

    const-string v0, "Pedometer Created"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a()Z
    .locals 11

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[J

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-wide v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    add-int/lit8 v5, v5, 0x1

    long-to-float v6, v6

    add-float/2addr v3, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v5

    div-float/2addr v3, v0

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[J

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    aget-wide v5, v0, v4

    long-to-float v5, v5

    sub-float/2addr v5, v3

    .line 329
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x437a0000    # 250.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private b()Z
    .locals 6

    .line 340
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    add-int/lit8 v0, v0, 0x32

    const/16 v1, 0x64

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-eq v3, v0, :cond_0

    .line 342
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    aget v5, v4, v3

    aget v4, v4, v0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private c()Z
    .locals 6

    .line 353
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    add-int/lit8 v0, v0, 0x32

    const/16 v1, 0x64

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-eq v3, v0, :cond_0

    .line 355
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    aget v5, v4, v3

    aget v4, v4, v0

    cmpg-float v4, v5, v4

    if-gez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public CalibrateStrideLength()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public CalibrationFailed()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The approximate distance traveled in meters."
    .end annotation

    .line 274
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    return v0
.end method

.method public ElapsedTime()J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time elapsed in milliseconds since the pedometer was started."
    .end annotation

    .line 285
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:Z

    if-eqz v0, :cond_0

    .line 286
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:J

    return-wide v0

    .line 288
    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public GPSAvailable()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public GPSLost()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Moving()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Pause()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause counting of steps and distance."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Stop()V

    return-void
.end method

.method public Reset()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets the step counter, distance measure and time running."
    .end annotation

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->g:I

    .line 135
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->h:I

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    const-wide/16 v0, 0x0

    .line 137
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:J

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:J

    return-void
.end method

.method public Resume()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes counting, synonym of Start."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    return-void
.end method

.method public Save()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state."
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Landroid/content/Context;

    const-string v1, "PedometerPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:F

    const-string v2, "Pedometer.stridelength"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    const-string v2, "Pedometer.distance"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 172
    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->h:I

    const-string v2, "Pedometer.prevStepCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:Z

    const-string v2, "Pedometer.clockTime"

    if-eqz v1, :cond_0

    .line 174
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 176
    :cond_0
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:J

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 176
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 179
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "Pedometer.closeTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "Pedometer"

    const-string v1, "Pedometer state saved."

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SimpleStep(IF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "SimpleStep"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SimpleSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of simple steps taken since the pedometer has started."
    .end annotation

    .line 300
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->h:I

    return v0
.end method

.method public Start()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start counting steps"
    .end annotation

    .line 106
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:Z

    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    .line 109
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 108
    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:J

    :cond_0
    return-void
.end method

.method public StartedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Stop()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop counting steps"
    .end annotation

    .line 120
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:Z

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:J

    :cond_0
    return-void
.end method

.method public StopDetectionTimeout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state"
    .end annotation

    .line 253
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:I

    return-void
.end method

.method public StoppedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public StrideLength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 238
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:F

    return v0
.end method

.method public StrideLength(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the average stride length in meters."
    .end annotation

    .line 227
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:F

    return-void
.end method

.method public UseGPS(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public WalkStep(IF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "WalkStep"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WalkSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of walk steps taken since the pedometer has started."
    .end annotation

    .line 311
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->g:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    const-string p1, "Pedometer"

    const-string p2, "Accelerometer accuracy changed."

    .line 366
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .line 371
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 376
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget v6, p1, v4

    mul-float v6, v6, v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 379
    :cond_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    add-int/lit8 p1, p1, 0x32

    rem-int/lit8 p1, p1, 0x64

    .line 382
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    aget v0, v0, p1

    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:F

    sub-float/2addr v0, v6

    const/high16 v6, 0x42200000    # 40.0f

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[J

    iget v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->f:I

    iget-wide v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:J

    sub-long v9, v6, v9

    aput-wide v9, v0, v8

    add-int/2addr v8, v1

    .line 387
    rem-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->f:I

    .line 388
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:J

    .line 389
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:Z

    if-eqz v0, :cond_2

    .line 391
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->g:I

    .line 392
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:F

    mul-float v6, v6, v4

    add-float/2addr v0, v6

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    .line 393
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:Z

    .line 395
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->g:I

    .line 396
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    invoke-virtual {p0, v0, v6}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    .line 397
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    goto :goto_1

    .line 399
    :cond_3
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:Z

    .line 401
    :goto_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->h:I

    .line 402
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:F

    invoke-virtual {p0, v0, v6}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    .line 403
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Z

    .line 407
    :cond_4
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:Z

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    aget p1, v0, p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->c:F

    .line 412
    :cond_5
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:[F

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->i:I

    aput v5, p1, v0

    add-int/2addr v0, v1

    .line 413
    array-length v5, p1

    rem-int/2addr v0, v5

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->i:I

    .line 414
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    aput v2, v0, v5

    .line 415
    array-length v0, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    aget v5, p1, v2

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    aget v8, v6, v7

    add-float/2addr v8, v5

    aput v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 416
    :cond_6
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    aget v2, p1, v0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:[F

    array-length v5, v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    aput v2, p1, v0

    .line 417
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:Z

    if-nez v2, :cond_8

    if-le v0, v1, :cond_7

    goto :goto_3

    :cond_7
    if-nez v2, :cond_b

    if-ne v0, v1, :cond_b

    .line 425
    aget v0, p1, v1

    aget v2, p1, v3

    add-float/2addr v0, v2

    div-float/2addr v0, v4

    aput v0, p1, v1

    goto :goto_4

    .line 418
    :cond_8
    :goto_3
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_9

    add-int/lit8 p1, p1, 0x64

    .line 420
    :cond_9
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    aget v3, v0, v2

    aget v5, v0, p1

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    aput v3, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_a

    add-int/lit8 p1, p1, 0x64

    .line 422
    :cond_a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:[F

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    aget v3, v0, v2

    aget p1, v0, p1

    add-float/2addr v3, p1

    aput v3, v0, v2

    .line 423
    aget p1, v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr p1, v3

    aput p1, v0, v2

    .line 428
    :cond_b
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 429
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:J

    sub-long v4, v2, v4

    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->d:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-lez p1, :cond_c

    .line 430
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->a:J

    .line 433
    :cond_c
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    const/16 v0, 0x63

    if-ne p1, v0, :cond_d

    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:Z

    if-nez p1, :cond_d

    .line 434
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->b:Z

    .line 437
    :cond_d
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    add-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->e:I

    return-void
.end method
