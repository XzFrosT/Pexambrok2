.class public Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a color sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:I = 0x1d

.field private static final b:I = 0x1e

.field private static final c:I = 0x3c

.field private static final d:I = 0x32


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/common/ColorSensorMode;

.field private final a:Ljava/lang/Runnable;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    const-string v0, "Ev3ColorSensor"

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 45
    sget-object p1, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->g:I

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->h:I

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Ljava/lang/Runnable;

    .line 110
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0x3c

    .line 112
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->TopOfRange(I)V

    const/16 v0, 0x1e

    .line 113
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BottomOfRange(I)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRangeEventEnabled(Z)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRangeEventEnabled(Z)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRangeEventEnabled(Z)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChangedEventEnabled(Z)V

    .line 118
    sget-object p1, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ModeAbstract(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->g:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->g:I

    return p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)I
    .locals 6

    .line 313
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorPortNumber:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 317
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ColorSensorMode;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x0

    const/16 v4, 0x1d

    move-object v0, p0

    move-object v1, p1

    .line 313
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->readInputPercentage(Ljava/lang/String;IIII)I

    move-result p1

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_7

    const/16 v0, 0x19

    if-eq p1, v0, :cond_6

    const/16 v0, 0x25

    if-eq p1, v0, :cond_5

    const/16 v0, 0x32

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x57

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x7

    return p1

    :cond_2
    const/4 p1, 0x6

    return p1

    :cond_3
    const/4 p1, 0x5

    return p1

    :cond_4
    const/4 p1, 0x4

    return p1

    :cond_5
    const/4 p1, 0x3

    return p1

    :cond_6
    const/4 p1, 0x2

    return p1

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Lcom/google/appinventor/components/common/ColorSensorMode;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    const-string v2, "No Color"

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    packed-switch p1, :pswitch_data_0

    return-object v2

    :pswitch_0
    const-string p1, "Brown"

    return-object p1

    :pswitch_1
    const-string p1, "White"

    return-object p1

    :pswitch_2
    const-string p1, "Red"

    return-object p1

    :pswitch_3
    const-string p1, "Yellow"

    return-object p1

    :pswitch_4
    const-string p1, "Green"

    return-object p1

    :pswitch_5
    const-string p1, "Blue"

    return-object p1

    :pswitch_6
    const-string p1, "Black"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/appinventor/components/common/ColorSensorMode;)V
    .locals 1

    const/4 v0, -0x1

    .line 450
    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->g:I

    .line 451
    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->h:I

    .line 452
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->h:I

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->h:I

    return p1
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Z

    return p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->e:I

    return p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->f:I

    return p0
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->b:Z

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

    .line 277
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 272
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->c:Z

    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the light level goes above the TopOfRange."
    .end annotation

    .line 261
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->c:Z

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

    .line 223
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 218
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Z

    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the light level goes below the BottomOfRange."
    .end annotation

    .line 207
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 163
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->e:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 174
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->e:I

    return-void
.end method

.method public ColorChanged(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected color has changed. The ColorChanged event will occur if the Mode property is set to \"color\" and the ColorChangedEventEnabled property is set to True."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "ColorChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ColorChangedEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 299
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->d:Z

    return-void
.end method

.method public ColorChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the ColorChanged event should fire when the Mode property is set to \"color\" and the detected color changes."
    .end annotation

    .line 288
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->d:Z

    return v0
.end method

.method public GetColorCode()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It returns the color code from 0 to 7 corresponding to no color, black, blue, green, yellow, red, white and brown."
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "GetColorCode"

    .line 141
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public GetColorName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the color name in one of \"No Color\", \"Black\", \"Blue\", \"Green\", \"Yellow\", \"Red\", \"White\", \"Brown\"."
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v0, v1, :cond_0

    const-string v0, "No Color"

    return-object v0

    :cond_0
    const-string v0, "GetColorName"

    .line 152
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLightLevel()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It returns the light level in percentage, or -1 when the light level cannot be read."
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-string v0, "GetLightLevel"

    .line 130
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Mode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ColorSensorMode;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the current sensor mode."
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ColorSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Mode(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ColorSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "reflected"
        editorType = "lego_ev3_color_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 381
    invoke-static {p1}, Lcom/google/appinventor/components/common/ColorSensorMode;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ColorSensorMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Mode"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 387
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    return-void
.end method

.method public ModeAbstract()Lcom/google/appinventor/components/common/ColorSensorMode;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object v0
.end method

.method public ModeAbstract(Lcom/google/appinventor/components/common/ColorSensorMode;)V
    .locals 0

    .line 395
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    return-void
.end method

.method public SetAmbientMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the sensor read the light level without reflected light."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Ambient:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    return-void
.end method

.method public SetColorMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enter the color detection mode."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    return-void
.end method

.method public SetReflectedMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the sensor read the light level with reflected light."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->f:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "60"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 196
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->f:I

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

    .line 250
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 245
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->b:Z

    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 234
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->b:Z

    return v0
.end method

.method public onDelete()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    return-void
.end method
