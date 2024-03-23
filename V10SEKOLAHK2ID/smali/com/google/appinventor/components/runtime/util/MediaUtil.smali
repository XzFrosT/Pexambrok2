.class public Lcom/google/appinventor/components/runtime/util/MediaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MediaUtil$a;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MediaUtil"

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a:Ljava/util/Map;

    .line 198
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 753
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    .line 755
    :cond_0
    throw v0
.end method

.method static synthetic a(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p2, 0x0

    :try_start_0
    const-string v0, "AI_Media_"

    .line 327
    invoke-static {v0, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 328
    invoke-virtual {p2}, Ljava/io/File;->deleteOnExit()V

    .line 329
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not copy media "

    const-string v2, "MediaUtil"

    if-eqz p2, :cond_0

    .line 334
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to temp file "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 338
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to temp file."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 346
    throw p1
.end method

.method private static a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 246
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 248
    :cond_0
    throw v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_1
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Unable to determine file path of file url "

    .line 62
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 66
    :catch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :catch_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 669
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$a;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 6

    .line 700
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 701
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 702
    invoke-static {p1, v2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 703
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 704
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string/jumbo v2, "window"

    .line 707
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 708
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 718
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getCompatibilityMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 p0, 0x2d0

    const/16 v3, 0x348

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 723
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p0

    div-float/2addr v4, p0

    float-to-int p0, v4

    move v5, v3

    move v3, p0

    move p0, v5

    .line 727
    :goto_0
    div-int v4, p1, v1

    if-le v4, p0, :cond_1

    div-int v4, v0, v1

    if-le v4, v3, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 730
    :cond_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmapOptions: sampleSize = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mediaPath = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " maxWidth = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " maxHeight = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " display width = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " display height = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaUtil"

    .line 731
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object p1
.end method

.method private static b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;
    .locals 1

    .line 92
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "/sdcard/"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "content://contacts/"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->g:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-object p0

    :cond_1
    const-string v0, "content://"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->f:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-object p0

    .line 104
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v0, "file:"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->d:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-object p0

    .line 110
    :cond_3
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->e:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    .line 116
    instance-of p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_5

    .line 117
    check-cast p0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->isAssetsLoaded()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 118
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->b:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-object p0

    .line 120
    :cond_4
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->a:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-object p0

    .line 123
    :cond_5
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->a:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-object p0

    .line 94
    :cond_6
    :goto_0
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->c:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-object p0
.end method

.method private static b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying media "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to temp file..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/File;

    move-result-object v0

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Finished copying media "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to temp file "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object p0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$5;->a:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-string v0, "."

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 302
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to open media "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :pswitch_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result p2

    const/16 v1, 0xc

    if-lt p2, v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 291
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 290
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 294
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 293
    invoke-static {p0, p2}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 300
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to open contact photo "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 276
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 277
    invoke-static {p0, p1, v2}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 278
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 281
    :cond_2
    :pswitch_3
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 269
    :pswitch_4
    invoke-static {p0, p1, v2}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 271
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 273
    :cond_3
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 262
    :pswitch_5
    invoke-static {p0, p1, v2}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 264
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 266
    :cond_4
    new-instance p2, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p2

    .line 259
    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

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

.method private static b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 225
    aget-object v2, p0, v1

    .line 226
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    move-result-object v0

    .line 319
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 385
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    if-eqz v0, :cond_1

    .line 389
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getHighQualityImage(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0

    .line 391
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 392
    new-instance v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 402
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 403
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->waitfor()V

    .line 404
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez p0, :cond_3

    .line 406
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getError()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PERMISSION_DENIED:"

    .line 407
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 408
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    move-result-object v4

    .line 550
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v5, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil$4;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;II)V

    .line 662
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 544
    invoke-interface {p4, p0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 525
    invoke-static {p0, p1, v0, v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public static getHighQualityImage(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 419
    new-instance v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;-><init>(Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 430
    new-instance v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;

    invoke-direct {v2, v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;-><init>(Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 498
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 499
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->waitfor()V

    .line 500
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez p0, :cond_1

    .line 502
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getError()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PERMISSION_DENIED:"

    .line 503
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p0
.end method

.method public static isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    return v1

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/sdcard/"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isExternalFile(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v1, "MediaUtil"

    const-string v2, "Calling deprecated version of isExternalFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/sdcard/"

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    return v1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "file:///sdcard"

    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isExternalFileUrl(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v1, "MediaUtil"

    const-string v2, "Calling deprecated version of isExternalFileUrl"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file:///sdcard/"

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    move-result-object v0

    .line 825
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$5;->a:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "."

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 875
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load audio or video "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 873
    :pswitch_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load audio or video for contact "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 869
    :pswitch_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    .line 865
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    .line 854
    :pswitch_3
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    invoke-static {p1, p2, v3}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 858
    :cond_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    .line 847
    :pswitch_4
    invoke-static {p1, p2, v3}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 848
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 850
    :cond_2
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    .line 840
    :pswitch_5
    invoke-static {p1, p2, v3}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 843
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    .line 827
    :pswitch_6
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 829
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 830
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 831
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    .line 832
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 835
    throw p0

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

.method public static loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    move-result-object v0

    .line 777
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$5;->a:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "."

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 809
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load audio "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 806
    :pswitch_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load audio for contact "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 802
    :pswitch_1
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/File;

    move-result-object p1

    .line 803
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 794
    :pswitch_2
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    invoke-static {p1, p2, v4}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 798
    :cond_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 788
    :pswitch_3
    invoke-static {p1, p2, v4}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 791
    :cond_2
    invoke-virtual {p0, p2, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 782
    :pswitch_4
    invoke-static {p1, p2, v4}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 785
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 779
    :pswitch_5
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    move-result-object v0

    .line 894
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$5;->a:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "."

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 930
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load video "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 928
    :pswitch_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load video for contact "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 924
    :pswitch_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void

    .line 916
    :pswitch_2
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    invoke-static {p1, p2, v4}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    :cond_0
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 920
    :cond_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void

    .line 909
    :pswitch_3
    invoke-static {p1, p2, v4}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 912
    :cond_2
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void

    .line 902
    :pswitch_4
    invoke-static {p1, p2, v4}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 903
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 905
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void

    .line 897
    :pswitch_5
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/File;

    move-result-object p1

    .line 898
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$b;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
