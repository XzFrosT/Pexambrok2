.class public Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewInterface"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/WebViewer;

.field a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->a:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " "

    .line 717
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWebViewString()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setWebViewString(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 735
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->a:Ljava/lang/String;

    .line 737
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->a:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWebViewStringFromBlocks(Ljava/lang/String;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->a:Ljava/lang/String;

    return-void
.end method
