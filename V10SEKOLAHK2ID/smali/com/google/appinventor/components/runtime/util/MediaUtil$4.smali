.class final Lcom/google/appinventor/components/runtime/util/MediaUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;II)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput p5, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:I

    iput p6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "Unexpected error on close"

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 565
    :try_start_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 566
    :goto_0
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_0

    .line 567
    invoke-virtual {v1, v3, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_1

    .line 588
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 591
    invoke-static {v2, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 602
    :catch_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 603
    array-length v3, v3

    .line 606
    :try_start_4
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 607
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Ljava/lang/String;

    invoke-static {v3, v1, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 608
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 609
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 610
    invoke-static {v1, v4, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 624
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 625
    iget v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:I

    const/4 v6, 0x1

    if-lez v4, :cond_2

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->b:I

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 626
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 627
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v3, v5}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 653
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 656
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    .line 630
    :cond_4
    :try_start_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:I

    if-lez v4, :cond_5

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:I

    goto :goto_4

    .line 631
    :cond_5
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    :goto_4
    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 632
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->b:I

    if-lez v6, :cond_6

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->b:I

    goto :goto_5

    .line 633
    :cond_6
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    :goto_5
    int-to-float v6, v6

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 634
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "form.deviceDensity() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "originalBitmapDrawable.getIntrinsicWidth() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 635
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "originalBitmapDrawable.getIntrinsicHeight() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 637
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 641
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 642
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 643
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 645
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 646
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 653
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catchall_0
    move-exception v3

    goto :goto_7

    :catch_3
    move-exception v3

    :try_start_8
    const-string v4, "Exception while loading media."

    .line 648
    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 653
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 656
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void

    .line 653
    :goto_7
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    .line 656
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    :goto_8
    throw v3

    :catch_6
    move-exception v3

    goto :goto_9

    :catch_7
    move-exception v3

    move-object v4, v5

    goto :goto_c

    :catchall_1
    move-exception v3

    goto/16 :goto_e

    :catch_8
    move-exception v3

    move-object v5, v4

    .line 574
    :goto_9
    :try_start_b
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    sget-object v7, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->g:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    if-ne v6, v7, :cond_8

    .line 576
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 577
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080066

    invoke-static {v7, v8, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 579
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v4, v3}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v5, :cond_7

    .line 588
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_a

    :catch_9
    move-exception v3

    .line 591
    invoke-static {v2, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    :cond_7
    :goto_a
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :catch_a
    return-void

    :cond_8
    :try_start_e
    const-string v4, "IOException reading file."

    .line 582
    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v5, :cond_9

    .line 588
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_b

    :catch_b
    move-exception v3

    .line 591
    invoke-static {v2, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    :cond_9
    :goto_b
    :try_start_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :catch_c
    return-void

    :catchall_2
    move-exception v3

    move-object v4, v5

    goto :goto_e

    :catch_d
    move-exception v3

    .line 571
    :goto_c
    :try_start_11
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PERMISSION_DENIED:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v4, :cond_a

    .line 588
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_d

    :catch_e
    move-exception v3

    .line 591
    invoke-static {v2, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    :cond_a
    :goto_d
    :try_start_13
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    :catch_f
    return-void

    :goto_e
    if-eqz v4, :cond_b

    .line 588
    :try_start_14
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_f

    :catch_10
    move-exception v4

    .line 591
    invoke-static {v2, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    :cond_b
    :goto_f
    :try_start_15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11

    .line 601
    :catch_11
    goto :goto_11

    :goto_10
    throw v3

    :goto_11
    goto :goto_10
.end method
