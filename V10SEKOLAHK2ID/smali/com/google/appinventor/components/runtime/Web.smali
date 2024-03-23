.class public Lcom/google/appinventor/components/runtime/Web;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides functions for HTTP GET, POST, PUT, and DELETE requests."
    iconName = "images/web.png"
    nonVisible = true
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "json.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Web$b;,
        Lcom/google/appinventor/components/runtime/Web$a;,
        Lcom/google/appinventor/components/runtime/Web$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Web"

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private final a:Landroid/app/Activity;

.field private a:Lcom/google/appinventor/components/runtime/util/YailList;

.field private final a:Ljava/net/CookieHandler;

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 194
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    .line 195
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string v1, "application/zip"

    const-string/jumbo v2, "zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string v1, "audio/mpeg"

    const-string v2, "mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string v1, "audio/mp3"

    const-string v2, "mp3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string v1, "audio/mp4"

    const-string v2, "mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string v1, "image/gif"

    const-string v2, "gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string v1, "image/png"

    const-string v2, "png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string v1, "image/tiff"

    const-string/jumbo v2, "tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string/jumbo v1, "text/plain"

    const-string/jumbo v2, "txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string/jumbo v1, "text/html"

    const-string v2, "html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    const-string/jumbo v1, "text/xml"

    const-string/jumbo v2, "xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v1, ""

    .line 213
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->b:Ljava/lang/String;

    .line 215
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 217
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 218
    iput v1, p0, Lcom/google/appinventor/components/runtime/Web;->a:I

    .line 222
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Web;->c:Z

    .line 223
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Web;->d:Z

    .line 246
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Landroid/app/Activity;

    .line 247
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/net/CookieHandler;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 233
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 213
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->b:Ljava/lang/String;

    .line 215
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 217
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcom/google/appinventor/components/runtime/Web;->a:I

    .line 222
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->c:Z

    .line 223
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->d:Z

    .line 234
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->a:Landroid/app/Activity;

    .line 236
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result p1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_0

    .line 237
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newCookieManager()Ljava/net/CookieHandler;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/net/CookieHandler;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Web;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/google/appinventor/components/runtime/Web;->a:I

    return p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$b;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1547
    :try_start_0
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$b;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Web$b;-><init>(Lcom/google/appinventor/components/runtime/Web;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/appinventor/components/runtime/Web$c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 1552
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v4, v2, Lcom/google/appinventor/components/runtime/Web$c;->a:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v2, Lcom/google/appinventor/components/runtime/Web$c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v3, p0, p1, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1549
    :catch_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x455

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web;->b:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-virtual {v2, p0, p1, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 1466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1467
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x3b

    .line 1473
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 1475
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1477
    :cond_1
    sget-object p1, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    const-string/jumbo p1, "tmp"

    .line 1481
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getDownloadFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 1454
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1459
    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 1456
    throw p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 977
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 960
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 962
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "jsonText is not a legal JSON value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->b:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 0

    .line 1375
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1417
    invoke-direct {p0, p2, p3}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 1420
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 1421
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1422
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 p2, 0x83c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1423
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw p1

    .line 1426
    :cond_1
    :goto_0
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1

    const/16 v0, 0x1000

    invoke-direct {p3, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1428
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1432
    :goto_1
    :try_start_1
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1438
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1440
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1443
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->close()V

    .line 1446
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1436
    :cond_2
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 1440
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1441
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 1443
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->close()V

    .line 1444
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/net/CookieHandler;

    return-object p0
.end method

.method private static a(Lcom/google/appinventor/components/runtime/Web$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassCastException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1295
    iget v1, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1296
    iget v1, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "PUT"

    .line 1298
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1301
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1305
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1308
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1313
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Web$b;->b:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 1314
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web$b;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1315
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1316
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1317
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$c;
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->b(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    .line 1146
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_0

    .line 1149
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, v10}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v13, Lcom/google/appinventor/components/runtime/Web;->c:Z

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1150
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    :cond_0
    iget-boolean v0, v13, Lcom/google/appinventor/components/runtime/Web;->b:Z

    if-eqz v0, :cond_1

    .line 1155
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, v8, Lcom/google/appinventor/components/runtime/Web$b;->b:Ljava/lang/String;

    iget-object v2, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1156
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v2

    .line 1155
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v13, Lcom/google/appinventor/components/runtime/Web;->d:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1158
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x0

    if-lez v0, :cond_2

    iget-boolean v0, v13, Lcom/google/appinventor/components/runtime/Web;->c:Z

    if-nez v0, :cond_2

    .line 1165
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v14, Lcom/google/appinventor/components/runtime/Web$8;

    new-array v1, v7, [Ljava/lang/String;

    .line 1166
    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/google/appinventor/components/runtime/Web$8;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    return-void

    :cond_2
    const/4 v11, 0x1

    move-object/from16 v0, p4

    .line 1190
    :try_start_0
    invoke-static {v8, v0}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v14
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v14, :cond_b

    if-eqz v9, :cond_3

    .line 1194
    :try_start_1
    invoke-static {v14, v9}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/net/HttpURLConnection;[B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_4

    .line 1196
    invoke-direct {v13, v14, v10}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 1200
    :cond_4
    :goto_0
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 1201
    invoke-static {v14}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    .line 1202
    invoke-direct {v13, v14}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/net/HttpURLConnection;)V

    .line 1204
    iget-boolean v0, v13, Lcom/google/appinventor/components/runtime/Web;->b:Z

    if-eqz v0, :cond_5

    .line 1205
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/Web$b;->b:Ljava/lang/String;

    invoke-direct {v13, v14, v0, v5}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1209
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->a:Landroid/app/Activity;

    new-instance v15, Lcom/google/appinventor/components/runtime/Web$9;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web$9;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1216
    :cond_5
    invoke-static {v14}, Lcom/google/appinventor/components/runtime/Web;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v6

    .line 1219
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->a:Landroid/app/Activity;

    new-instance v15, Lcom/google/appinventor/components/runtime/Web$10;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web$10;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1237
    :goto_1
    :try_start_2
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 1229
    :catch_0
    :try_start_3
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->a:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Web$2;

    invoke-direct {v1, v13, v8}, Lcom/google/appinventor/components/runtime/Web$2;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1235
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1237
    :goto_2
    :try_start_4
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1238
    throw v0
    :try_end_4
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    nop

    const-string v0, "Get"

    .line 1254
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x44d

    new-array v1, v11, [Ljava/lang/String;

    .line 1256
    iget-object v2, v8, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/lang/String;

    aput-object v2, v1, v7

    goto :goto_5

    :cond_6
    const-string v0, "Delete"

    .line 1257
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x45a

    new-array v1, v11, [Ljava/lang/String;

    .line 1259
    iget-object v2, v8, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/lang/String;

    aput-object v2, v1, v7

    goto :goto_5

    :cond_7
    const-string v0, "PostFile"

    .line 1260
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_a

    const-string v0, "PutFile"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "PatchFile"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/16 v0, 0x44f

    const-string v2, ""

    if-eqz v9, :cond_9

    .line 1269
    :try_start_5
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v9, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v2, v3

    goto :goto_3

    :catch_2
    const-string v3, "Web"

    const-string v4, "UTF-8 is the default charset for Android but not available???"

    .line 1272
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v7

    .line 1274
    iget-object v2, v8, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/lang/String;

    aput-object v2, v1, v11

    goto :goto_5

    :cond_a
    :goto_4
    const/16 v0, 0x450

    new-array v1, v1, [Ljava/lang/String;

    aput-object v10, v1, v7

    .line 1262
    iget-object v2, v8, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/lang/String;

    aput-object v2, v1, v11

    .line 1276
    :goto_5
    iget-object v2, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v13, v12, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_6

    .line 1248
    :catch_3
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x45d

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v8, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v0, v13, v12, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_6

    :catch_4
    move-exception v0

    .line 1246
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v12, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_6

    :catch_5
    move-exception v0

    .line 1243
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1244
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v0

    new-array v2, v7, [Ljava/lang/Object;

    .line 1243
    invoke-virtual {v1, v13, v12, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_6

    :catch_6
    move-exception v0

    .line 1241
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v13, v12, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    :cond_b
    :goto_6
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p5}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 739
    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$b;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 745
    :cond_0
    new-instance v7, Lcom/google/appinventor/components/runtime/Web$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Web$7;-><init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$b;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1380
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    .line 1382
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 1383
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1347
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x1

    .line 1354
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 p2, 0x0

    .line 1355
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1356
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1359
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1365
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1367
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1370
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void

    .line 1363
    :cond_0
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1367
    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V

    .line 1368
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 1370
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1371
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1331
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1333
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1334
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p0, 0x0

    .line 1336
    :try_start_0
    array-length v1, p1

    invoke-virtual {v0, p1, p0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1337
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1340
    throw p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Web;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1394
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    .line 1398
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1400
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 1401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 p0, 0x400

    new-array p0, p0, [C

    .line 1406
    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v3, v0, :cond_2

    const/4 v4, 0x0

    .line 1407
    invoke-virtual {v2, p0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1409
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 1412
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static b(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$c;
        }
    .end annotation

    .line 1491
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1492
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1493
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 1495
    instance-of v4, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1496
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1497
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 1499
    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1501
    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 1505
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1510
    instance-of v6, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v6, :cond_0

    .line 1512
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x0

    .line 1513
    :goto_1
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1514
    invoke-virtual {v3, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    .line 1515
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1520
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    :cond_1
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1526
    :cond_2
    new-instance p0, Lcom/google/appinventor/components/runtime/Web$c;

    const/16 v0, 0x457

    add-int/2addr v2, v5

    invoke-direct {p0, v0, v2}, Lcom/google/appinventor/components/runtime/Web$c;-><init>(II)V

    throw p0

    .line 1531
    :cond_3
    new-instance p0, Lcom/google/appinventor/components/runtime/Web$c;

    const/16 v0, 0x456

    add-int/2addr v2, v5

    invoke-direct {p0, v0, v2}, Lcom/google/appinventor/components/runtime/Web$c;-><init>(II)V

    throw p0

    :cond_4
    return-object v0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Web;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Web;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->d:Z

    return p1
.end method


# virtual methods
.method public AllowCookies(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 324
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->a:Z

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/net/CookieHandler;

    if-nez p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AllowCookies"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public AllowCookies()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the cookies from a response should be saved and used in subsequent requests. Cookies are only supported on Android version 2.3 or greater."
    .end annotation

    .line 314
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Z

    return v0
.end method

.method public BuildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 817
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 819
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v1, p1, Lcom/google/appinventor/components/runtime/Web$a;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p1, p1, Lcom/google/appinventor/components/runtime/Web$a;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "BuildRequestData"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method public ClearCookies()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all cookies for this Web component."
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    .line 403
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->clearCookies(Ljava/net/CookieHandler;)Z

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ClearCookies"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public Delete()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v0, "Delete"

    .line 706
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 712
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$6;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Web$6;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Get()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v0, "Get"

    .line 425
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 431
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$1;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Web$1;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 793
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "GotFile"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 778
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "GotText"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public HtmlTextDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given HTML text value. HTML character entities such as `&`, `<`, `>`, `\'`, and `\"` are changed to &, <, >, \', and \". Entities such as &#xhhhh, and &#nnnn are changed to the appropriate characters."
    .end annotation

    .line 1113
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1115
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x452

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "HtmlTextDecode"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method public JsonObjectEncode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 992
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->encodeJsonObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 994
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x45e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "JsonObjectEncode"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method public JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v0, 0x0

    .line 921
    :try_start_0
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 923
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x451

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string p1, "JsonTextDecode"

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method public JsonTextDecodeWithDictionaries(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v0, 0x1

    .line 940
    :try_start_0
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 942
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x451

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const-string p1, "JsonTextDecodeWithDictionaries"

    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method public PatchFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PATCH request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PatchFile"

    .line 593
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 599
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Web$4;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public PatchText(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PATCH request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "UTF-8"

    const-string v1, "PatchText"

    const-string v2, "PATCH"

    .line 544
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PatchTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PATCH request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PatchTextWithEncoding"

    const-string v1, "PATCH"

    .line 570
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PostFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and data from the specified file.\nIf the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.\nIf the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PostFile"

    .line 509
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Web$3;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public PostText(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.\nThe characters of the text are encoded using UTF-8 encoding.\nIf the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.\nIf the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "UTF-8"

    const-string v1, "PostText"

    const-string v2, "POST"

    .line 460
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PostTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.\nThe characters of the text are encoded using the given encoding.\nIf the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.\nIf the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PostTextWithEncoding"

    const-string v1, "POST"

    .line 486
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PutFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PutFile"

    .line 677
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 683
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Web$5;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public PutText(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "UTF-8"

    const-string v1, "PutText"

    const-string v2, "PUT"

    .line 628
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PutTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PutTextWithEncoding"

    const-string v1, "PUT"

    .line 654
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public RequestHeaders()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The request headers, as a list of two-element sublists. The first element of each sublist represents the request header field name. The second element of each sublist represents the request header field values, either a single value or a list containing multiple values."
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 297
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->b(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    .line 298
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->a:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v1, p1, Lcom/google/appinventor/components/runtime/Web$c;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p1, p1, Lcom/google/appinventor/components/runtime/Web$c;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "RequestHeaders"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public ResponseFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the file where the response should be saved. If SaveResponse is true and ResponseFileName is empty, then a new file name will be generated."
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->c:Ljava/lang/String;

    return-object v0
.end method

.method public ResponseFileName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 372
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->c:Ljava/lang/String;

    return-void
.end method

.method public SaveResponse(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 347
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->b:Z

    return-void
.end method

.method public SaveResponse()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the response should be saved in a file."
    .end annotation

    .line 337
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->b:Z

    return v0
.end method

.method public TimedOut(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TimedOut"

    .line 804
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Timeout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of milliseconds that a web request will wait for a response before giving up. If set to 0, then there is no time limit on how long the request will wait."
    .end annotation

    .line 383
    iget v0, p0, Lcom/google/appinventor/components/runtime/Web;->a:I

    return v0
.end method

.method public Timeout(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-ltz p1, :cond_0

    .line 397
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web;->a:I

    return-void

    .line 395
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    const-string v0, "Web Timeout must be a non-negative integer."

    invoke-direct {p1, v0}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UriDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 888
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Web"

    const-string v1, "UTF-8 is unsupported?"

    .line 893
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, ""

    return-object p1
.end method

.method public UriEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 868
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Web"

    const-string v1, "UTF-8 is unsupported?"

    .line 873
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, ""

    return-object p1
.end method

.method public Url()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL for the web request."
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->b:Ljava/lang/String;

    return-object v0
.end method

.method public Url(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->b:Ljava/lang/String;

    return-void
.end method

.method public XMLTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given XML string to produce a dictionary structure. See the App Inventor documentation on \"Other topics, notes, and details\" for information."
    .end annotation

    .line 1084
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Web;->JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1089
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Web"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x451

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "XMLTextDecode"

    .line 1090
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1093
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public XMLTextDecodeAsDictionary(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given XML into a set of nested dictionaries that capture the structure and data contained in the XML. See the help for more details."
    .end annotation

    .line 1039
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/XmlParser;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/XmlParser;-><init>()V

    .line 1040
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 1041
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    const-string p1, "UTF-8"

    .line 1042
    invoke-virtual {v2, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 1044
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/XmlParser;->getRoot()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1046
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Web"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x451

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1048
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "XMLTextDecodeAsDictionary"

    .line 1047
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1049
    new-instance p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    return-object p1
.end method

.method a(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$a;
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    .line 836
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 837
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    .line 839
    instance-of v5, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 840
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 841
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 843
    invoke-virtual {v4, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 845
    invoke-virtual {v4, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 846
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const-string v2, "&"

    goto :goto_0

    .line 848
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/Web$a;

    const/16 v0, 0x459

    add-int/2addr v3, v6

    invoke-direct {p1, v0, v3}, Lcom/google/appinventor/components/runtime/Web$a;-><init>(II)V

    throw p1

    .line 852
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/Web$a;

    const/16 v0, 0x458

    add-int/2addr v3, v6

    invoke-direct {p1, v0, v3}, Lcom/google/appinventor/components/runtime/Web$a;-><init>(II)V

    throw p1

    .line 856
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
