.class final Lcom/google/appinventor/components/runtime/Canvas$a;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private a:Landroid/graphics/Canvas;

.field private a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Canvas;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V
    .locals 1

    .line 424
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    .line 425
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 426
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p2, 0x20

    const/16 v0, 0x30

    invoke-static {p2, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    .line 429
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method private a(II)I
    .locals 2

    .line 556
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 557
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 567
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas$a;II)I
    .locals 0

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$a;->b(II)I

    move-result p0

    return p0
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    .line 438
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->setDrawingCacheEnabled(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->destroyDrawingCache()V

    .line 440
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->getWidth()I

    move-result v0

    .line 445
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->getHeight()I

    move-result v1

    .line 446
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 447
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 448
    invoke-virtual {p0, v4, v4, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$a;->layout(IIII)V

    .line 449
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Canvas$a;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Bitmap;
    .locals 0

    .line 404
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Canvas;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, ""

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 639
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    :cond_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 643
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    .line 644
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    :cond_2
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 646
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas$a;)V
    .locals 0

    .line 404
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas$a;Ljava/lang/String;IIF)V
    .locals 0

    .line 404
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Ljava/lang/String;IIF)V

    return-void
.end method

.method private a(Ljava/lang/String;IIF)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 669
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    neg-float p4, p4

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p4, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 670
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 671
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 672
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void
.end method

.method private b(II)I
    .locals 5

    const v0, 0xffffff

    if-ltz p1, :cond_5

    .line 678
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_5

    if-ltz p2, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    .line 679
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 686
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    .line 693
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 694
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->b:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 695
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 696
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    .line 697
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 695
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->b:Landroid/graphics/Bitmap;

    .line 700
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1

    .line 705
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 706
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_4
    return v0

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Returning COLOR_NONE (exception) from getBackgroundPixelColor."

    .line 712
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Canvas"

    .line 711
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Canvas$a;II)I
    .locals 0

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$a;->c(II)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Bitmap;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 651
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void
.end method

.method private c(II)I
    .locals 4

    const v0, 0xffffff

    if-ltz p1, :cond_5

    .line 719
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_5

    if-ltz p2, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    .line 720
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_1

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->c:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 728
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 729
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 735
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$a;->b(II)I

    move-result p1

    return p1

    .line 743
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->c:Landroid/graphics/Bitmap;

    .line 748
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Returning COLOR_NONE (exception) from getPixelColor."

    .line 752
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Canvas"

    .line 751
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 603
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 604
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->b:Landroid/graphics/Bitmap;

    .line 606
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 608
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Canvas"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a()V

    .line 616
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->b()V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 622
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 623
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->b:Landroid/graphics/Bitmap;

    .line 625
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 626
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 627
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 628
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a()V

    .line 632
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->b()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->c:Landroid/graphics/Bitmap;

    .line 459
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 463
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    .line 468
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;Z)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 545
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    const/16 v0, 0x30

    .line 550
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(II)I

    move-result p1

    .line 551
    invoke-direct {p0, p2, v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(II)I

    move-result p2

    .line 550
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$a;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .line 475
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 476
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_2

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 492
    :try_start_0
    invoke-static {v0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 494
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 496
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    .line 500
    new-instance p3, Landroid/graphics/Canvas;

    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p3, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    goto :goto_0

    .line 505
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    .line 509
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    .line 512
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 513
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p4, p1

    int-to-float v2, p2

    const/4 v4, 0x0

    invoke-direct {p3, v4, v4, p4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 514
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Landroid/graphics/Canvas;

    invoke-virtual {p4, v0, v3, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad values to createScaledBimap w = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Canvas"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->b:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->dontGrabTouchEventsForComponent()V

    .line 582
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$c;->a(Landroid/view/MotionEvent;)V

    .line 583
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 585
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;

    .line 588
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;I)I

    .line 661
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a()V

    .line 663
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$a;->b()V

    return-void
.end method
