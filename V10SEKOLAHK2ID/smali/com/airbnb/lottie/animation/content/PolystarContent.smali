.class public Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final hidden:Z

.field private final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field private final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 44
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 49
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 51
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 52
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 53
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->isHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 54
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPoints()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 55
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object p1

    invoke-interface {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 56
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v0, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne p1, v0, :cond_0

    .line 60
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 61
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 64
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 68
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 70
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 71
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 72
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object p3, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne p1, p3, :cond_1

    .line 73
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 74
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 81
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 82
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object p2, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne p1, p2, :cond_2

    .line 83
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 84
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_2
    return-void
.end method

.method private createPolygonPath()V
    .locals 31

    move-object/from16 v0, p0

    .line 249
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 250
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 254
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v1

    .line 256
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 258
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 259
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v8, v5

    .line 264
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    double-to-float v10, v10

    .line 265
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v8

    double-to-float v11, v11

    .line 266
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v12, v1

    .line 267
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v12

    .line 269
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const/4 v1, 0x0

    :goto_1
    int-to-double v14, v1

    cmpg-double v16, v14, v6

    if-gez v16, :cond_2

    .line 273
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v8

    double-to-float v14, v14

    .line 274
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v23, v6

    mul-double v6, v8, v15

    double-to-float v6, v6

    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_1

    move-wide/from16 v25, v8

    float-to-double v7, v11

    move v9, v1

    move-wide/from16 v27, v2

    float-to-double v1, v10

    .line 277
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v7

    double-to-float v1, v1

    float-to-double v1, v1

    .line 278
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 279
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v7, v6

    move-wide/from16 v29, v12

    float-to-double v12, v14

    .line 281
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v7, v12

    double-to-float v2, v7

    float-to-double v7, v2

    .line 282
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 283
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v8, v5, v4

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float v8, v8, v12

    mul-float v3, v3, v8

    mul-float v1, v1, v8

    mul-float v2, v2, v8

    mul-float v8, v8, v7

    .line 289
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v17, v10, v3

    sub-float v18, v11, v1

    add-float v19, v14, v2

    add-float v20, v6, v8

    move-object/from16 v16, v7

    move/from16 v21, v14

    move/from16 v22, v6

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_1
    move-wide/from16 v27, v2

    move-wide/from16 v25, v8

    move-wide/from16 v29, v12

    move v9, v1

    .line 291
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 294
    :goto_2
    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v27, v29

    add-int/lit8 v1, v9, 0x1

    move v11, v6

    move v10, v14

    move-wide/from16 v6, v23

    move-wide/from16 v8, v25

    move-wide/from16 v12, v29

    goto/16 :goto_1

    .line 297
    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 298
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 299
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private createStarPath()V
    .locals 42

    move-object/from16 v0, p0

    .line 143
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 144
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 148
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v1

    .line 150
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    double-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v8, v4, v5

    float-to-int v9, v1

    int-to-float v9, v9

    sub-float/2addr v1, v9

    const/4 v9, 0x0

    cmpl-float v10, v1, v9

    if-eqz v10, :cond_1

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v1

    mul-float v10, v10, v8

    float-to-double v10, v10

    .line 154
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v10

    .line 157
    :cond_1
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 159
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 162
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/high16 v13, 0x42c80000    # 100.0f

    if-eqz v12, :cond_2

    .line 163
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float/2addr v12, v13

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 166
    :goto_1
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v14, :cond_3

    .line 167
    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float/2addr v14, v13

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    cmpl-float v13, v1, v9

    if-eqz v13, :cond_4

    sub-float v13, v10, v11

    mul-float v13, v13, v1

    add-float/2addr v13, v11

    move/from16 v16, v10

    float-to-double v9, v13

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v19, v6

    mul-double v5, v9, v17

    double-to-float v5, v5

    .line 178
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v17

    double-to-float v6, v9

    .line 179
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v9, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v9, v7

    float-to-double v9, v9

    .line 180
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v9

    move v7, v5

    move v9, v13

    move/from16 v5, v16

    move/from16 v41, v8

    move v8, v6

    move/from16 v6, v41

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v6

    move v5, v10

    float-to-double v9, v5

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move v6, v8

    mul-double v7, v9, v16

    double-to-float v7, v7

    .line 183
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v16

    double-to-float v8, v9

    .line 184
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v9, v6

    .line 185
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v9

    const/4 v9, 0x0

    .line 190
    :goto_3
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v18

    const/4 v10, 0x0

    move/from16 v21, v14

    const/16 v20, 0x0

    :goto_4
    int-to-double v13, v10

    cmpg-double v23, v13, v16

    if-gez v23, :cond_f

    if-eqz v20, :cond_5

    move/from16 v23, v5

    goto :goto_5

    :cond_5
    move/from16 v23, v11

    :goto_5
    const/4 v15, 0x0

    cmpl-float v24, v9, v15

    if-eqz v24, :cond_6

    sub-double v24, v16, v18

    cmpl-double v26, v13, v24

    if-nez v26, :cond_6

    mul-float v24, v4, v1

    const/high16 v22, 0x40000000    # 2.0f

    div-float v24, v24, v22

    move/from16 v15, v24

    goto :goto_6

    :cond_6
    const/high16 v22, 0x40000000    # 2.0f

    move v15, v6

    :goto_6
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    const/16 v24, 0x0

    cmpl-float v27, v9, v24

    if-eqz v27, :cond_7

    sub-double v27, v16, v25

    cmpl-double v29, v13, v27

    if-nez v29, :cond_7

    move/from16 v27, v4

    move/from16 v23, v5

    move v4, v9

    goto :goto_7

    :cond_7
    move/from16 v27, v4

    move/from16 v4, v23

    move/from16 v23, v5

    :goto_7
    float-to-double v4, v4

    .line 202
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v30, v13

    mul-double v13, v4, v28

    double-to-float v13, v13

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v28

    double-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v14, v12, v5

    if-nez v14, :cond_8

    cmpl-float v14, v21, v5

    if-nez v14, :cond_8

    .line 206
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v13, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide/from16 v39, v2

    move/from16 v28, v11

    move/from16 v29, v12

    const/4 v2, 0x0

    move v12, v6

    move v6, v15

    goto/16 :goto_d

    :cond_8
    move v14, v6

    float-to-double v5, v8

    move/from16 v28, v11

    move/from16 v29, v12

    float-to-double v11, v7

    .line 208
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v5, v11

    double-to-float v5, v5

    float-to-double v5, v5

    .line 209
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 210
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    move-wide/from16 v39, v2

    float-to-double v2, v4

    move v12, v14

    move v6, v15

    float-to-double v14, v13

    .line 212
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v14

    double-to-float v2, v2

    float-to-double v2, v2

    .line 213
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 214
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    if-eqz v20, :cond_9

    move/from16 v3, v29

    goto :goto_8

    :cond_9
    move/from16 v3, v21

    :goto_8
    if-eqz v20, :cond_a

    move/from16 v15, v21

    goto :goto_9

    :cond_a
    move/from16 v15, v29

    :goto_9
    if-eqz v20, :cond_b

    move/from16 v32, v28

    goto :goto_a

    :cond_b
    move/from16 v32, v23

    :goto_a
    if-eqz v20, :cond_c

    move/from16 v33, v23

    goto :goto_b

    :cond_c
    move/from16 v33, v28

    :goto_b
    mul-float v32, v32, v3

    const v3, 0x3ef4e26d    # 0.47829f

    mul-float v32, v32, v3

    mul-float v11, v11, v32

    mul-float v32, v32, v5

    mul-float v33, v33, v15

    mul-float v33, v33, v3

    mul-float v14, v14, v33

    mul-float v33, v33, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_e

    if-nez v10, :cond_d

    mul-float v11, v11, v1

    mul-float v32, v32, v1

    goto :goto_c

    :cond_d
    sub-double v24, v16, v25

    cmpl-double v3, v30, v24

    if-nez v3, :cond_e

    mul-float v14, v14, v1

    mul-float v33, v33, v1

    .line 235
    :cond_e
    :goto_c
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v5, v7, v11

    sub-float v34, v8, v32

    add-float v35, v13, v14

    add-float v36, v4, v33

    move-object/from16 v32, v3

    move/from16 v33, v5

    move/from16 v37, v13

    move/from16 v38, v4

    invoke-virtual/range {v32 .. v38}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_d
    float-to-double v5, v6

    .line 238
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double v5, v39, v5

    xor-int/lit8 v20, v20, 0x1

    add-int/lit8 v10, v10, 0x1

    move v8, v4

    move-wide v2, v5

    move v6, v12

    move v7, v13

    move/from16 v5, v23

    move/from16 v4, v27

    move/from16 v11, v28

    move/from16 v12, v29

    goto/16 :goto_4

    .line 243
    :cond_f
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 244
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 245
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 94
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 311
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 312
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 313
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 314
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 315
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 316
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 318
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 319
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 320
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 321
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 322
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 323
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 116
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 117
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 118
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 121
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/animation/content/PolystarContent$1;->$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type:[I

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createPolygonPath()V

    goto :goto_0

    .line 123
    :cond_3
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createStarPath()V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 132
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 134
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 135
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->invalidate()V

    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 304
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 99
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 100
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 101
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 104
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
