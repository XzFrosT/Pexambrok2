.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:I = -0x1

.field private static final a:Ljava/lang/String;

.field private static final b:I = -0x2

.field private static final b:Ljava/lang/String; = "The URL is malformed"

.field private static final c:I = -0x3

.field private static final c:Ljava/lang/String; = "Unable to download content from URL"

.field private static final d:I = -0x4

.field private static final d:Ljava/lang/String; = "Malformed GeoJSON response. Expected FeatureCollection as root element."

.field private static final e:Ljava/lang/String; = "Unrecognized/invalid type in JSON object"

.field private static final f:Ljava/lang/String; = "type"

.field private static final g:Ljava/lang/String; = "FeatureCollection"

.field private static final h:Ljava/lang/String; = "GeometryCollection"

.field private static final i:Ljava/lang/String; = "features"


# instance fields
.field private final a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 62
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    .line 64
    new-instance p1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 402
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 404
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    .line 405
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 406
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 407
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v5, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;

    invoke-direct {v5, p0, p1, v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 414
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    .line 418
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 423
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 424
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 436
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 429
    :catch_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 388
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 394
    sget-object v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->a:Ljava/lang/String;

    const-string v1, "Exception retreiving GeoJSON"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, -0x4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 396
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "LoadFromURL"

    .line 395
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 328
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Map.$add() called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user clicked on a map feature."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureClick"

    .line 146
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    :cond_0
    return-void
.end method

.method public FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user dragged a map feature."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureDrag"

    .line 194
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    :cond_0
    return-void
.end method

.method public FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 263
    :try_start_0
    sget-object v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, -0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 266
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "FeatureFromDescription"

    .line 265
    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed on a map feature."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureLongClick"

    .line 162
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    :cond_0
    return-void
.end method

.method public FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user started dragging a map feature."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureStartDrag"

    .line 178
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    :cond_0
    return-void
.end method

.method public FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user stopped dragging a map feature."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureStopDrag"

    .line 210
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    :cond_0
    return-void
.end method

.method public Features()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The list of features placed on this %type%. This list also includes any features created by calls to FeatureFromDescription"
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Features(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 109
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->removeFromMap()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 113
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 115
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A GeoJSON document was successfully read from url. The features specified in the document are provided as a list in features."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotFeatures"

    .line 283
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 285
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 286
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 288
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public LoadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An error was encountered while processing a GeoJSON document at the given url. The responseCode parameter will contain an HTTP status code and the errorMessage parameter will contain a detailed error message."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 303
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 p2, 0x2

    aput-object p3, v0, p2

    const-string p2, "LoadError"

    invoke-static {p0, p2, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "file:"

    .line 306
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "LoadFromURL"

    if-eqz p2, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    const/16 v0, 0x836

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, p0, p3, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    const/16 v0, 0x44d

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, p0, p3, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public LoadFromURL(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "<p>Load a feature collection in <a href=\"https://en.wikipedia.org/wiki/GeoJSON\">GeoJSON</a> format from the given url. On success, the event GotFeatures will be raised with the given url and a list of the features parsed from the GeoJSON as a list of (key, value) pairs. On failure, the LoadError event will be raised with any applicable HTTP response code and error message.</p>"
    .end annotation

    .line 232
    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "type"

    .line 448
    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->getGeoJSONType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureCollection"

    .line 449
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GeometryCollection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 458
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->getGeoJSONFeatures(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 459
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 343
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Map.setChildHeight called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 338
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Map.setChildWidth called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
