.class public Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/appinventor/components/runtime/Component;",
        ">",
        "Landroid/webkit/WebViewClient;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/appinventor/components/runtime/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a:Lcom/google/appinventor/components/runtime/Form;

.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/google/appinventor/components/runtime/Form;",
            "TT;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Z

    .line 28
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->b:Z

    .line 29
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 30
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Component;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;)Lcom/google/appinventor/components/runtime/Component;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Component;

    return-object p0
.end method


# virtual methods
.method public getComponent()Lcom/google/appinventor/components/runtime/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Component;

    return-object v0
.end method

.method public getForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Component;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "PageLoaded"

    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Component;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "BeforePageLoad"

    invoke-static {p1, p2, p3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient$1;-><init>(Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 48
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->b:Z

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Lcom/google/appinventor/components/runtime/Component;

    const/16 p3, 0x9c5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WebView"

    invoke-virtual {p1, p2, v1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 43
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->a:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
