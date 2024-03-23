.class public Lcom/google/appinventor/components/runtime/Navigation;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Navigation"
    iconName = "images/navigation.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "osmdroid.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field public static final OPEN_ROUTE_SERVICE_URL:Ljava/lang/String; = "https://api.openrouteservice.org/v2/directions/"

.field private static final a:Ljava/lang/String; = "Navigation"


# instance fields
.field private a:Lcom/google/appinventor/components/common/TransportMethod;

.field private a:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private a:Lorg/osmdroid/util/GeoPoint;

.field private b:Ljava/lang/String;

.field private b:Lorg/osmdroid/util/GeoPoint;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, "https://api.openrouteservice.org/v2/directions/"

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->c:Ljava/lang/String;

    const-string p1, "en"

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->d:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string p1, ""

    .line 79
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Ljava/lang/String;

    .line 80
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lorg/osmdroid/util/GeoPoint;

    .line 81
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p1, v0, v1, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Lorg/osmdroid/util/GeoPoint;

    .line 82
    sget-object p1, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lcom/google/appinventor/components/common/TransportMethod;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object p1
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "geometry"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "coordinates"

    aput-object v2, v0, v1

    .line 432
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 433
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    .line 403
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 406
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 p0, 0x400

    new-array p0, p0, [C

    .line 412
    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v3, v0, :cond_2

    const/4 v4, 0x0

    .line 413
    invoke-virtual {v2, p0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 415
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 418
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "properties"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "segments"

    aput-object v2, v0, v1

    .line 437
    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string/jumbo v2, "steps"

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "instruction"

    aput-object v2, v0, v1

    .line 438
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 437
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Navigation;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V

    return-void
.end method

.method private a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v11, "RequestDirections"

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v10, Lcom/google/appinventor/components/runtime/Navigation;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/geojson/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/net/HttpURLConnection;

    const/4 v13, 0x1

    .line 339
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 340
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=UTF-8"

    .line 341
    invoke-virtual {v12, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 342
    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 343
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->b:Ljava/lang/String;

    const-string v1, "Authorization"

    invoke-virtual {v12, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 345
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"coordinates\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-direct/range {p0 .. p2}, Lcom/google/appinventor/components/runtime/Navigation;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)[[Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \"language\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/google/appinventor/components/runtime/Navigation;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 349
    array-length v1, v0

    invoke-virtual {v12, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 350
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    array-length v2, v0

    invoke-virtual {v1, v0, v14, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 353
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 358
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    .line 359
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xfa3

    new-array v2, v2, [Ljava/lang/Object;

    .line 360
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    .line 361
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    .line 359
    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 394
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 364
    :cond_0
    :try_start_3
    invoke-static {v12}, Lcom/google/appinventor/components/runtime/Navigation;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigation"

    .line 365
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {v0, v13}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v0, "features"

    .line 367
    invoke-virtual {v3, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 368
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 369
    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "properties"

    aput-object v2, v1, v14

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v13

    .line 371
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v2, "distance"

    .line 372
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v2, "duration"

    .line 373
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 374
    invoke-direct {v10, v0}, Lcom/google/appinventor/components/runtime/Navigation;->a(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    .line 375
    invoke-direct {v10, v0}, Lcom/google/appinventor/components/runtime/Navigation;->a(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    .line 377
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v15, Lcom/google/appinventor/components/runtime/Navigation$2;

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/Navigation$2;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    invoke-virtual {v0, v15}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xfa4

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 355
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 356
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 390
    :try_start_4
    iget-object v1, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xfa2

    new-array v3, v13, [Ljava/lang/Object;

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 390
    invoke-virtual {v1, v10, v11, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 394
    :goto_0
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :goto_1
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 395
    throw v0
.end method

.method private a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)[[Ljava/lang/Double;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 422
    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Double;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Double;

    const/4 v1, 0x0

    .line 423
    aget-object v2, v0, v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    .line 424
    aget-object v2, v0, v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 425
    aget-object p1, v0, v3

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p1, v1

    .line 426
    aget-object p1, v0, v3

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v3

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x2
    .end array-data
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Key for Open Route Service."
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Ljava/lang/String;

    return-void
.end method

.method public EndLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the end location."
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLatitude(D)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 194
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const/16 v1, 0xd55

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 198
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "EndLatitude"

    .line 197
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public EndLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the end location."
    .end annotation

    .line 269
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    .line 271
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    .line 272
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "SetEndLocation"

    if-nez p1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object p1

    const/16 v2, 0xd55

    new-array v3, v5, [Ljava/lang/Object;

    .line 274
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    .line 273
    invoke-interface {p1, p0, v6, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result p1

    if-nez p1, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object p1

    const/16 v0, 0xd56

    new-array v1, v5, [Ljava/lang/Object;

    .line 277
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    .line 276
    invoke-interface {p1, p0, v6, v0, v1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    :goto_0
    return-void
.end method

.method public EndLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the end location."
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLongitude(D)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 212
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const/16 v1, 0xd56

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 216
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "EndLongitude"

    .line 215
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Openrouteservice returns the directions."
    .end annotation

    const-string v0, "Navigation"

    const-string v1, "GotDirections"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 329
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "en"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The language to use for textual directions."
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->d:Ljava/lang/String;

    return-void
.end method

.method public RequestDirections()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request directions from the routing service."
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xfa1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Authorization"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lorg/osmdroid/util/GeoPoint;

    .line 99
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Navigation;->b:Lorg/osmdroid/util/GeoPoint;

    .line 100
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lcom/google/appinventor/components/common/TransportMethod;

    .line 101
    new-instance v3, Lcom/google/appinventor/components/runtime/Navigation$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Navigation$1;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ResponseContent()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Content of the last response as a dictionary."
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->c:Ljava/lang/String;

    return-void
.end method

.method public StartLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the start location."
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLatitude(D)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 142
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const/16 v1, 0xd55

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "StartLatitude"

    .line 145
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public StartLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the start location."
    .end annotation

    .line 176
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    .line 178
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    .line 179
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "SetStartLocation"

    if-nez p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object p1

    const/16 v2, 0xd55

    new-array v3, v5, [Ljava/lang/Object;

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    .line 180
    invoke-interface {p1, p0, v6, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object p1

    const/16 v0, 0xd56

    new-array v1, v5, [Ljava/lang/Object;

    .line 184
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    .line 183
    invoke-interface {p1, p0, v6, v0, v1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    :goto_0
    return-void
.end method

.method public StartLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the start location."
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLongitude(D)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 160
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const/16 v1, 0xd56

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 164
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "StartLongitude"

    .line 163
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public TransportationMethod()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/TransportMethod;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->TransportationMethodAbstract()Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TransportationMethod(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/TransportMethod;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "foot-walking"
        editorType = "navigation_method"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The transportation method used for determining the route."
    .end annotation

    .line 261
    invoke-static {p1}, Lcom/google/appinventor/components/common/TransportMethod;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Navigation;->TransportationMethodAbstract(Lcom/google/appinventor/components/common/TransportMethod;)V

    :cond_0
    return-void
.end method

.method public TransportationMethodAbstract()Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method

.method public TransportationMethodAbstract(Lcom/google/appinventor/components/common/TransportMethod;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->a:Lcom/google/appinventor/components/common/TransportMethod;

    return-void
.end method
