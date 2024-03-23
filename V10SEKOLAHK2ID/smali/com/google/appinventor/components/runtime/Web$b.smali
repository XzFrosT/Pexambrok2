.class Lcom/google/appinventor/components/runtime/Web$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final a:Ljava/lang/String;

.field final a:Ljava/net/URL;

.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final a:Z

.field final b:Ljava/lang/String;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/google/appinventor/components/runtime/Web$c;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/net/URL;

    .line 170
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Z

    .line 171
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->b(Lcom/google/appinventor/components/runtime/Web;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->b:Z

    .line 172
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->b(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->b:Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:I

    .line 174
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/util/Map;

    .line 177
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 186
    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$b;->b:Ljava/util/Map;

    return-void
.end method
