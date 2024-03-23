.class Lcom/google/appinventor/components/runtime/Canvas$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# static fields
.field public static final a:I = 0x18

.field public static final b:I = 0x18

.field private static final c:I = 0xc

.field private static final d:I = 0xc

.field private static final e:I = -0x1


# instance fields
.field private a:F

.field final synthetic a:Lcom/google/appinventor/components/runtime/Canvas;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:F

.field private b:Z

.field private c:F

.field private d:F


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Ljava/util/List;

    const/high16 p1, -0x40800000    # -1.0f

    .line 261
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:F

    .line 262
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:F

    .line 265
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas$c;->c:F

    .line 266
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas$c;->d:F

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Z

    .line 272
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:Z

    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)V
    .locals 23

    move-object/from16 v0, p0

    .line 275
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v1

    .line 276
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v2

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 287
    new-instance v5, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    float-to-int v6, v3

    add-int/lit8 v7, v6, -0xc

    const/4 v8, 0x0

    .line 288
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-double v9, v7

    float-to-int v7, v13

    add-int/lit8 v11, v7, -0xc

    .line 289
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-double v11, v11

    add-int/lit8 v14, v1, -0x1

    add-int/lit8 v6, v6, 0xc

    .line 290
    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v14, v6

    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v7, 0xc

    .line 291
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v6, v6

    move-wide/from16 v19, v14

    move-object v14, v5

    move-wide v15, v9

    move-wide/from16 v17, v11

    move-wide/from16 v21, v6

    invoke-direct/range {v14 .. v22}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_10

    const/4 v12, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    if-eq v6, v12, :cond_a

    const/4 v9, 0x2

    if-eq v6, v9, :cond_0

    goto/16 :goto_6

    .line 313
    :cond_0
    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->c:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->d:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 314
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Canvas"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_2
    iget-boolean v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Z

    if-nez v6, :cond_3

    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:F

    sub-float v6, v3, v6

    .line 320
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:F

    sub-float v6, v13, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    goto/16 :goto_6

    .line 324
    :cond_3
    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Z

    .line 325
    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:Z

    cmpg-float v6, v3, v4

    if-lez v6, :cond_4

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-gtz v1, :cond_4

    cmpg-float v1, v13, v4

    if-lez v1, :cond_4

    int-to-float v1, v2

    cmpl-float v1, v13, v1

    if-lez v1, :cond_5

    .line 329
    :cond_4
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    .line 330
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_6

    .line 336
    :cond_5
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 337
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 338
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 339
    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 340
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_7
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/appinventor/components/runtime/Sprite;

    .line 347
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 348
    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:F

    iget v7, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:F

    iget v8, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->c:F

    iget v9, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->d:F

    move v10, v3

    move v11, v13

    invoke-virtual/range {v5 .. v11}, Lcom/google/appinventor/components/runtime/Sprite;->Dragged(FFFFFF)V

    const/4 v2, 0x1

    goto :goto_1

    .line 354
    :cond_9
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:F

    iget v7, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:F

    iget v8, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->c:F

    iget v9, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->d:F

    move v10, v3

    move v11, v13

    move v12, v2

    invoke-virtual/range {v5 .. v12}, Lcom/google/appinventor/components/runtime/Canvas;->Dragged(FFFFFFZ)V

    .line 355
    iput v3, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->c:F

    .line 356
    iput v13, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->d:F

    goto/16 :goto_6

    .line 363
    :cond_a
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:Z

    if-nez v1, :cond_d

    .line 366
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/Sprite;

    .line 367
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 368
    invoke-virtual {v4, v3, v13}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 369
    invoke-virtual {v4, v3, v13}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    const/4 v2, 0x1

    goto :goto_2

    .line 374
    :cond_c
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, v3, v13, v2}, Lcom/google/appinventor/components/runtime/Canvas;->Touched(FFZ)V

    goto :goto_4

    .line 377
    :cond_d
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 378
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 379
    invoke-virtual {v2, v3, v13}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 380
    invoke-virtual {v2, v3, v13}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    goto :goto_3

    .line 387
    :cond_f
    :goto_4
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, v3, v13}, Lcom/google/appinventor/components/runtime/Canvas;->TouchUp(FF)V

    .line 390
    iput-boolean v8, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:Z

    .line 391
    iput v7, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:F

    .line 392
    iput v7, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:F

    .line 393
    iput v7, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->c:F

    .line 394
    iput v7, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->d:F

    goto :goto_6

    .line 295
    :cond_10
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 296
    iput v3, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:F

    .line 297
    iput v13, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:F

    .line 298
    iput v3, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->c:F

    .line 299
    iput v13, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->d:F

    .line 300
    iput-boolean v8, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:Z

    .line 301
    iput-boolean v8, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Z

    .line 302
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 303
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 304
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:F

    iget v4, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:F

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->TouchDown(FF)V

    goto :goto_5

    .line 308
    :cond_12
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:Lcom/google/appinventor/components/runtime/Canvas;

    iget v2, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->a:F

    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$c;->b:F

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->TouchDown(FF)V

    :goto_6
    return-void
.end method
