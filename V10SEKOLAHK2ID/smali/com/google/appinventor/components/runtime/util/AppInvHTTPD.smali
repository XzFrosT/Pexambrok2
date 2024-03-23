.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1

.field private static final a:Ljava/lang/String; = "AppInvHTTPD"

.field private static a:[B = null

.field private static final b:I = 0x4

.field private static final b:Ljava/lang/String; = "application/json"

.field private static c:I


# instance fields
.field private final a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/runtime/ReplForm;

.field private a:Lgnu/expr/Language;

.field private a:Ljava/io/File;

.field private a:Z


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 54
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Ljava/io/File;

    const-string/jumbo p1, "scheme"

    .line 60
    invoke-static {p1}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lgnu/expr/Language;

    .line 61
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 62
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Z

    .line 63
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object p0
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 2

    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    .line 390
    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Access-Control-Allow-Headers"

    const-string v1, "origin, content-type"

    .line 391
    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Access-Control-Allow-Methods"

    const-string v1, "POST,OPTIONS,GET,HEAD,PUT"

    .line 392
    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Allow"

    .line 393
    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3

    .line 367
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string/jumbo v2, "text/plain"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 0

    .line 386
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->c(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3

    .line 330
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "extensions"

    const-string v2, "[]"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 331
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 332
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 333
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 335
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid JSON content at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->c(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    .line 341
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string p1, "OK"

    .line 345
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 343
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 347
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 359
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 360
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    .line 310
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 311
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const p2, 0x8000

    new-array p2, p2, [B

    .line 315
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 316
    invoke-virtual {p1, p2, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 320
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3

    .line 371
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "application/json"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3

    .line 375
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "status"

    const-string v2, "BAD"

    .line 377
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    .line 378
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "AppInvHTTPD"

    const-string v2, "Unable to write basic JSON content"

    .line 380
    invoke-static {v1, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    :goto_0
    new-instance p1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200 OK"

    const-string v2, "application/json"

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 0

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:[B

    const/4 p0, 0x1

    .line 403
    sput p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->c:I

    return-void
.end method


# virtual methods
.method public resetSeq()V
    .locals 1

    const/4 v0, 0x1

    .line 407
    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->c:I

    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppInvHTTPD"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-boolean v5, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Z

    const-string v7, "Allow"

    const-string v8, "Access-Control-Allow-Methods"

    const-string v9, "origin, content-type"

    const-string v10, "Access-Control-Allow-Headers"

    const-string v11, "*"

    const-string v12, "Access-Control-Allow-Origin"

    const-string v13, "application/json"

    const-string v14, "200 OK"

    const-string v15, "POST,OPTIONS,GET,HEAD,PUT"

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual/range {p6 .. p6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const-string v4, "127.0.0.1"

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug: hostAddress = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while in secure mode, closing connection."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v14, v13, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v12, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v10, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v8, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v7, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v4, "OPTIONS"

    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "OK"

    const-string/jumbo v2, "text/plain"

    if-eqz v4, :cond_2

    .line 104
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v0

    const-string v0, "  HDR: \'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' = \'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-direct {v0, v1, v14, v2, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v12, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v10, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v8, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v7, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v4, "/_newblocks"

    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a()V

    const-string/jumbo v0, "seq"

    const-string v4, "0"

    move-object/from16 v5, p4

    .line 122
    invoke-virtual {v5, v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v3, "blockid"

    .line 124
    invoke-virtual {v5, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v2

    const-string v2, "code"

    .line 125
    invoke-virtual {v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v7

    const-string v7, "mac"

    move-object/from16 v18, v8

    const-string v8, "no key provided"

    .line 126
    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    sget-object v7, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:[B

    if-eqz v7, :cond_8

    :try_start_0
    const-string v7, "HmacSHA1"

    .line 131
    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v7

    .line 132
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v19, v15

    sget-object v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:[B

    move-object/from16 v20, v9

    const-string v9, "RAW"

    invoke-direct {v8, v15, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 133
    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v7

    .line 135
    new-instance v8, Ljava/lang/StringBuffer;

    array-length v9, v7

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 136
    new-instance v9, Ljava/util/Formatter;

    invoke-direct {v9, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 137
    array-length v15, v7

    move-object/from16 v21, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v15, :cond_3

    aget-byte v22, v7, v10

    move-object/from16 p2, v7

    const-string v7, "%02x"

    move-object/from16 v23, v11

    move/from16 p3, v15

    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/Object;

    .line 138
    invoke-static/range {v22 .. v22}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    const/16 v22, 0x0

    aput-object v15, v11, v22

    invoke-virtual {v9, v7, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p2

    move/from16 v15, p3

    move-object/from16 v11, v23

    goto :goto_1

    :cond_3
    move-object/from16 v23, v11

    .line 139
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incoming Mac = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Computed Mac = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incoming seq = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Computed seq = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->c:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blockid = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Hmac does not match"

    .line 153
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Invalid HMAC"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x709

    invoke-virtual {v0, v0, v6, v3, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 156
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v2, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    invoke-direct {v0, v1, v14, v13, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 159
    :cond_4
    sget v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->c:I

    if-eq v0, v4, :cond_5

    add-int/lit8 v5, v4, 0x1

    if-eq v0, v5, :cond_5

    const-string v0, "Seq does not match"

    .line 160
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Invalid Seq"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x709

    invoke-virtual {v0, v0, v6, v3, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 163
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v2, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    invoke-direct {v0, v1, v14, v13, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const/4 v5, 0x1

    .line 168
    sget v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->c:I

    add-int/2addr v4, v5

    if-ne v0, v4, :cond_6

    const-string v0, "Seq Fixup Invoked"

    .line 169
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_6
    sput v4, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->c:I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (begin "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " )))"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To Eval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v4, "#f"

    .line 187
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "Skipping evaluation of #f"

    .line 188
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 190
    :cond_7
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lgnu/expr/Language;

    invoke-virtual {v2, v0}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    :goto_2
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v14, v13, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v2, "newblocks: Scheme Failure"

    .line 194
    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BAD"

    invoke-static {v3, v2, v0}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v14, v13, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v2, v23

    .line 198
    invoke-virtual {v0, v12, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    .line 199
    invoke-virtual {v0, v4, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    .line 200
    invoke-virtual {v0, v7, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v17

    .line 201
    invoke-virtual {v0, v9, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Error working with hmac"

    .line 141
    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "Exception working on HMAC"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x709

    invoke-virtual {v0, v0, v6, v3, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "NOT"

    move-object/from16 v11, v16

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8
    const/16 v3, 0x709

    const/4 v4, 0x0

    const/4 v10, 0x1

    const-string v0, "No HMAC Key"

    .line 172
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {v2, v2, v6, v3, v5}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 175
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v2, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    invoke-direct {v0, v1, v14, v13, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    move-object v3, v9

    move-object v4, v10

    move-object v9, v7

    move-object v7, v8

    move-object v8, v15

    move-object/from16 v15, p4

    move-object/from16 v24, v11

    move-object v11, v2

    move-object/from16 v2, v24

    const-string v10, "/_values"

    .line 203
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 204
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v14, v13, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v12, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, v4, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v7, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v9, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
    const-string v10, "/_getversion"

    .line 210
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 213
    :try_start_2
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 216
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v10, 0x5

    const-string v11, "Not Known"

    if-lt v6, v10, :cond_b

    :try_start_3
    const-string v6, "com.niotron.companion"

    .line 217
    iget-object v10, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-static {v6, v10}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_b
    move-object v6, v11

    .line 224
    :goto_4
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v6, :cond_c

    goto :goto_5

    :cond_c
    move-object v11, v6

    .line 230
    :goto_5
    new-instance v6, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "{\"version\" : \""

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", \"fingerprint\" : \""

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", \"installer\" : \""

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", \"package\" : \""

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"fqcn\" : true }"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v1, v14, v13, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 235
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 236
    new-instance v6, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v0, "{\"verison\" : \"Unknown\""

    invoke-direct {v6, v1, v14, v13, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_6
    invoke-virtual {v6, v12, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v6, v4, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v6, v9, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-boolean v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Z

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    .line 243
    sput v2, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->c:I

    .line 244
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    return-object v6

    :cond_e
    const-string v10, "/_extensions"

    .line 251
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 252
    invoke-direct {v1, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v10, "PUT"

    move-object v13, v11

    move-object/from16 v11, p2

    .line 255
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x0

    .line 256
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v10, "content"

    const/4 v11, 0x0

    move-object/from16 p1, v0

    move-object/from16 v0, p5

    .line 257
    invoke-virtual {v0, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 259
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    .line 260
    invoke-virtual {v15, v0, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v15, ".."

    .line 262
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_10

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "../"

    .line 263
    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_11

    .line 264
    :cond_10
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Ignoring invalid filename: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_7

    :cond_11
    move-object v11, v0

    :goto_7
    if-eqz v11, :cond_14

    .line 270
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Ljava/io/File;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 272
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_12

    .line 273
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 275
    :cond_12
    invoke-virtual {v10, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 276
    invoke-direct {v1, v10, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 277
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_8

    :cond_13
    move-object/from16 v0, p1

    goto :goto_8

    .line 280
    :cond_14
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    const-string v0, "Received content without a file name!"

    .line 281
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    .line 282
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_15
    const/4 v10, 0x1

    const-string v0, "Received PUT without content."

    .line 285
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 288
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 289
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v5, "500 Internal Server Error"

    const-string v6, "NOTOK"

    invoke-direct {v0, v1, v5, v13, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, v12, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, v4, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, v7, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, v9, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 296
    :cond_16
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-direct {v0, v1, v14, v13, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, v12, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, v4, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, v7, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v9, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 305
    :cond_17
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->a:Ljava/io/File;

    move-object/from16 v3, p3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method
