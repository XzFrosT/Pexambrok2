.class public abstract Lcom/google/appinventor/components/runtime/Sprite;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final DEFAULT_ORIGIN_AT_CENTER:Z = false

.field private static final a:D = 1.0

.field private static final a:F = 0.0f

.field private static final a:I = 0x0

.field private static final a:Ljava/lang/String; = "Sprite"

.field private static final a:Z = true

.field private static final b:I = 0x64

.field private static final b:Z = true

.field private static final c:I


# instance fields
.field private final a:Landroid/os/Handler;

.field private final a:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field protected final canvas:Lcom/google/appinventor/components/runtime/Canvas;

.field protected form:Lcom/google/appinventor/components/runtime/Form;

.field protected heading:D

.field protected headingCos:D

.field protected headingRadians:D

.field protected headingSin:D

.field protected initialized:Z

.field protected interval:I

.field protected originAtCenter:Z

.field protected speed:F

.field protected userHeading:D

.field protected visible:Z

.field protected xCenter:D

.field protected xLeft:D

.field protected yCenter:D

.field protected yTop:D

.field protected zLayer:D


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V
    .locals 6

    .line 107
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 108
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Landroid/os/Handler;

    .line 111
    instance-of v2, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-eqz v2, :cond_0

    .line 114
    move-object v2, p1

    check-cast v2, Lcom/google/appinventor/components/runtime/Canvas;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 115
    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 118
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Ljava/util/Set;

    .line 121
    new-instance v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/16 v3, 0x64

    invoke-direct {v2, p0, v1, v3, p2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 123
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    const-wide/16 v4, 0x0

    .line 127
    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled(Z)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Interval(I)V

    const/4 p2, 0x0

    .line 130
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->Speed(F)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible(Z)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z(D)V

    .line 134
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void

    .line 112
    :cond_0
    new-instance p2, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sprite constructor called with container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(D)D
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    return-wide p1
.end method

.method private a(D)V
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    .line 325
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->b(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    goto :goto_0

    .line 328
    :cond_0
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->a(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    :goto_0
    return-void
.end method

.method private final a()Z
    .locals 5

    .line 957
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final a(I)Z
    .locals 4

    .line 961
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(D)D
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method private b(D)V
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    .line 354
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->d(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    goto :goto_0

    .line 357
    :cond_0
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->c(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    :goto_0
    return-void
.end method

.method private final b()Z
    .locals 5

    .line 965
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final b(I)Z
    .locals 4

    .line 969
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(D)D
    .locals 2

    .line 343
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    return-wide p1
.end method

.method protected static coerceToDouble(Ljava/lang/Object;)D
    .locals 2

    .line 731
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 732
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 735
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public static colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 12

    const/4 v0, 0x1

    .line 996
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 997
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v2

    .line 998
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 1006
    :cond_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v4

    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_3

    .line 1007
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v6

    :goto_1
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v6, v8

    if-gtz v2, :cond_2

    .line 1008
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-double/2addr v6, v10

    goto :goto_1

    :cond_2
    add-double/2addr v4, v10

    goto :goto_0

    :cond_3
    return v3
.end method

.method private d(D)D
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public Bounce(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Direction;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Makes the %type% bounce, as if off a wall. For normal bouncing, the edge argument should be the one returned by EdgeReached."
    .end annotation

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/Direction;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 620
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->BounceAbstract(Lcom/google/appinventor/components/common/Direction;)V

    return-void
.end method

.method public BounceAbstract(Lcom/google/appinventor/components/common/Direction;)V
    .locals 13

    .line 639
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 642
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    add-double/2addr v0, v2

    .line 649
    :cond_0
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    const-wide v7, 0x4070e00000000000L    # 270.0

    const-wide v9, 0x4056800000000000L    # 90.0

    const-wide v11, 0x4066800000000000L    # 180.0

    if-ne p1, v6, :cond_1

    cmpg-double v6, v0, v9

    if-ltz v6, :cond_2

    cmpl-double v6, v0, v7

    if-gtz v6, :cond_2

    :cond_1
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_3

    cmpl-double v6, v0, v9

    if-lez v6, :cond_3

    cmpg-double v6, v0, v7

    if-gez v6, :cond_3

    :cond_2
    sub-double/2addr v11, v0

    .line 653
    invoke-virtual {p0, v11, v12}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0

    .line 654
    :cond_3
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_4

    cmpl-double v6, v0, v4

    if-lez v6, :cond_4

    cmpg-double v6, v0, v11

    if-ltz v6, :cond_5

    :cond_4
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_6

    cmpl-double v6, v0, v11

    if-lez v6, :cond_6

    :cond_5
    sub-double/2addr v2, v0

    .line 657
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0

    .line 658
    :cond_6
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_7

    cmpl-double v2, v0, v4

    if-lez v2, :cond_7

    cmpg-double v2, v0, v9

    if-ltz v2, :cond_a

    :cond_7
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_8

    cmpl-double v2, v0, v9

    if-lez v2, :cond_8

    cmpg-double v2, v0, v11

    if-ltz v2, :cond_a

    :cond_8
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_9

    cmpl-double v2, v0, v11

    if-lez v2, :cond_9

    cmpg-double v2, v0, v7

    if-ltz v2, :cond_a

    :cond_9
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_b

    cmpl-double p1, v0, v7

    if-lez p1, :cond_b

    :cond_a
    add-double/2addr v0, v11

    .line 665
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    :cond_b
    :goto_0
    return-void
.end method

.method public CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CollidedWith"

    .line 441
    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Indicates whether a collision has been registered between this %type% and the passed sprite (Ball or ImageSprite)."
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public Dragged(FFFFFF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a %type% is dragged. On all calls, the starting coordinates are where the screen was first touched, and the \"current\" coordinates describe the endpoint of the current line segment. On the first call within a given drag, the \"previous\" coordinates are the same as the starting coordinates; subsequently, they are the \"current\" coordinates from the prior call. Note that the %type% won\'t actually move anywhere in response to the Dragged event unless MoveTo is explicitly called. For smooth movement, each of its coordinates should be set to the sum of its initial value and the difference between its current and previous values."
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 476
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

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "Dragged"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public EdgeReached(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Direction;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the %type% reaches an edge of the screen. If Bounce is then called with that edge, the %type% will appear to bounce off of the edge it reached. Edge here is represented as an integer that indicates one of eight directions north (1), northeast (2), east (3), southeast (4), south (-1), southwest (-2), west (-3), and northwest (-4)."
    .end annotation

    .line 494
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/Direction;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V

    return-void
.end method

.method public EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 507
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "EdgeReached"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Controls whether the %type% moves and can be interacted with through collisions, dragging, touching, and flinging."
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public Flung(FFFFFF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a fling gesture (quick swipe) is made on an enabled %type%. This provides the x and y coordinates of the start of the fling (relative to the upper left of the canvas), the speed (pixels per millisecond), the heading (0-360 degrees), and the x and y velocity components of the fling\'s vector."
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 565
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

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "Flung"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Heading()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the %type%\'s heading in degrees above the positive x-axis.  Zero degrees is toward the right of the screen; 90 degrees is toward the top of the screen."
    .end annotation

    .line 198
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    return-wide v0
.end method

.method public Heading(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 214
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    neg-double p1, p1

    .line 216
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    .line 218
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    .line 219
    iget-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    .line 221
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public Initialize()V
    .locals 1

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->d(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method

.method public Interval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The interval in milliseconds at which the %type%\'s position is updated.  For example, if the interval is 50 and the speed is 10, then every 50 milliseconds the sprite will move 10 pixels in the heading direction."
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public Interval(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    return-void
.end method

.method public MoveIntoBounds()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the %type% back in bounds if part of it extends out of bounds, having no effect otherwise. If the %type% is too wide to fit on the canvas, this aligns the left side of the %type% with the left side of the canvas. If the %type% is too tall to fit on the canvas, this aligns the top side of the %type% with the top side of the canvas."
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->moveIntoBounds(II)V

    return-void
.end method

.method public MoveTo(DD)V
    .locals 0

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->a(D)V

    .line 713
    invoke-direct {p0, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->b(D)V

    .line 714
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public MoveToPoint(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the origin of %type% to the position of the cooordinates given  by the list formatted as [x-coordinate, y-coordinate]."
    .end annotation

    const/4 v0, 0x0

    .line 727
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sprite;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Sprite;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    return-void
.end method

.method public NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a pair of sprites (Balls and ImageSprites) are no longer colliding."
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "NoLongerCollidingWith"

    .line 526
    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected OriginAtCenter(Z)V
    .locals 0

    .line 400
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    return-void
.end method

.method public PointInDirection(DD)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the heading of the %type% toward the point with the coordinates (x, y)."
    .end annotation

    .line 766
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double/2addr p3, v0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double/2addr p1, v0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    neg-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    return-void
.end method

.method public PointTowards(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turns the %type% to point towards a designated target sprite (Ball or ImageSprite). The new heading will be parallel to the line joining the centerpoints of the two sprites."
    .end annotation

    .line 753
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    return-void
.end method

.method public Speed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The speed at which the %type% moves. The %type% moves this many pixels every interval if enabled."
    .end annotation

    .line 280
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    return v0
.end method

.method public Speed(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The number of pixels that the %type% should move every interval, if enabled."
    .end annotation

    .line 266
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    return-void
.end method

.method public TouchDown(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user begins touching an enabled %type% (placing their finger on a %type% and leaving it there). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 597
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TouchDown"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public TouchUp(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user stops touching an enabled %type% (lifting their finger after a TouchDown event). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 581
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TouchUp"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Touched(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user touches an enabled %type% and then immediately lifts their finger. The provided x and y coordinates are relative to the upper left of the canvas."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 541
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "Touched"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Visible(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 305
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 306
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the %type% is visible."
    .end annotation

    .line 291
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    return v0
.end method

.method public X()D
    .locals 2

    .line 310
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    :goto_0
    return-wide v0
.end method

.method public X(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->a(D)V

    .line 339
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public Y()D
    .locals 2

    .line 371
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    :goto_0
    return-wide v0
.end method

.method public Y(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->b(D)V

    .line 367
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public Z()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "How the %type% should be layered relative to other Balls and ImageSprites, with higher-numbered layers in front of lower-numbered layers."
    .end annotation

    .line 394
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    return-wide v0
.end method

.method public Z(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 386
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    .line 387
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Canvas;->c(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method

.method public alarm()V
    .locals 2

    .line 1065
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->updateCoordinates()V

    .line 1067
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    :cond_0
    return-void
.end method

.method public containsPoint(DD)Z
    .locals 4

    .line 1051
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    iget-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v0, p3, p1

    if-ltz v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    cmpg-double v0, p3, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;
    .locals 15

    move-object v0, p0

    .line 981
    new-instance v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    iget-wide v1, v0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    move/from16 v3, p1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v1, v3

    iget-wide v7, v0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v3

    .line 982
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v9

    int-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v11

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double v13, v1, v3

    iget-wide v1, v0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v9

    int-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v11

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double v11, v1, v3

    move-object v1, v10

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v13

    move-wide v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    return-object v10
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdge()I
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 806
    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected hitEdge(II)I
    .locals 0

    .line 817
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 821
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;
    .locals 2

    .line 847
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->a()Z

    move-result v0

    .line 848
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->b()Z

    move-result v1

    .line 849
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->a(I)Z

    move-result p1

    .line 850
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->b(I)Z

    move-result p2

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_1

    .line 860
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 862
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    .line 864
    :cond_2
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    :cond_3
    if-eqz p1, :cond_6

    if-eqz v1, :cond_4

    .line 869
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    :cond_4
    if-eqz p2, :cond_5

    .line 871
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    .line 873
    :cond_5
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    :cond_6
    if-eqz v1, :cond_7

    .line 877
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    .line 879
    :cond_7
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    return-object p1
.end method

.method public intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 10

    const/4 v0, 0x0

    .line 1024
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 1025
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 1032
    :cond_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v2

    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gez p1, :cond_3

    .line 1033
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v4

    :goto_1
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v4, v6

    if-gez p1, :cond_2

    .line 1034
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-double/2addr v4, v8

    goto :goto_1

    :cond_2
    add-double/2addr v2, v8

    goto :goto_0

    :cond_3
    return v0
.end method

.method protected final moveIntoBounds(II)V
    .locals 6

    .line 896
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-le v0, p1, :cond_0

    .line 900
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double p1, v4, v2

    if-eqz p1, :cond_2

    .line 901
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 902
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->a(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    goto :goto_0

    .line 905
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 907
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->a(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 909
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v4, p1

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 911
    invoke-direct {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->a(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 917
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 921
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double p2, v4, v2

    if-eqz p2, :cond_5

    .line 922
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 923
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->c(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    goto :goto_2

    .line 926
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 927
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 928
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->c(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    goto :goto_2

    .line 930
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 931
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-double p1, p2

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 932
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->c(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    goto :goto_2

    :cond_5
    move v1, p1

    :goto_2
    if-eqz v1, :cond_6

    .line 938
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    :cond_6
    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 1089
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 1090
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected varargs postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sprite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Sprite$1;-><init>(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected registerChange()V
    .locals 1

    .line 782
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->d(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method

.method protected updateCoordinates()V
    .locals 6

    .line 947
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 948
    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 949
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 950
    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->c(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    return-void
.end method
