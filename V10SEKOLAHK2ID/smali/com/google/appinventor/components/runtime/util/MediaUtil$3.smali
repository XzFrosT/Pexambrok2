.class final Lcom/google/appinventor/components/runtime/util/MediaUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getHighQualityImage(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    move-result-object v0

    .line 451
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$5;->a:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v2

    .line 483
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    .line 484
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 483
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    .line 488
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 489
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080066

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 478
    :pswitch_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    .line 470
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    .line 471
    invoke-static {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 475
    :cond_1
    :pswitch_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    .line 463
    :pswitch_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 467
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    .line 456
    :pswitch_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 460
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0

    .line 453
    :pswitch_6
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 4

    .line 434
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    const-string v1, "Image Not Found"

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 444
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 441
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PERMISSION_DENIED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    return-void
.end method
