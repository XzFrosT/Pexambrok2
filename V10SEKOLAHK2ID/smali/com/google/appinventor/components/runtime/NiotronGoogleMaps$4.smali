.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$4;
.super Lcom/google/android/gms/maps/model/UrlTileProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->addTileOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;II)V
    .locals 0

    .line 1855
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$4;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/maps/model/UrlTileProvider;-><init>(II)V

    return-void
.end method

.method private a(III)Z
    .locals 0

    const/16 p1, 0xc

    if-lt p3, p1, :cond_1

    const/16 p1, 0x10

    if-le p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getTileUrl(III)Ljava/net/URL;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1861
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "http://my.image.server/images/%d/%d/%d.png"

    .line 1860
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1863
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$4;->a(III)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1868
    :cond_0
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1870
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
