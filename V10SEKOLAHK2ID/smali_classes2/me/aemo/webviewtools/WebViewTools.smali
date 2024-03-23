.class public Lme/aemo/webviewtools/WebViewTools;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "WebViewTools.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# instance fields
.field private activity:Landroid/app/Activity;

.field private clipboardManager:Landroid/content/ClipboardManager;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private webSettings:Landroid/webkit/WebSettings;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 34
    iput-object p1, p0, Lme/aemo/webviewtools/WebViewTools;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 35
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lme/aemo/webviewtools/WebViewTools;->context:Landroid/content/Context;

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lme/aemo/webviewtools/WebViewTools;->activity:Landroid/app/Activity;

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lme/aemo/webviewtools/WebViewTools;->clipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method


# virtual methods
.method public ClearClipboard()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v0, ""

    .line 59
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lme/aemo/webviewtools/WebViewTools;->clipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method

.method public DisablesAllTouchEvents()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 48
    iget-object v0, p0, Lme/aemo/webviewtools/WebViewTools;->webView:Landroid/webkit/WebView;

    new-instance v1, Lme/aemo/webviewtools/WebViewTools$1;

    invoke-direct {v1, p0}, Lme/aemo/webviewtools/WebViewTools$1;-><init>(Lme/aemo/webviewtools/WebViewTools;)V

    .line 54
    iget-object v0, p0, Lme/aemo/webviewtools/WebViewTools;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    return-void
.end method

.method public Initialize(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lme/aemo/webviewtools/WebViewTools;->webView:Landroid/webkit/WebView;

    .line 43
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iput-object p1, p0, Lme/aemo/webviewtools/WebViewTools;->webSettings:Landroid/webkit/WebSettings;

    return-void
.end method

.method public IsInMultiWindowMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lme/aemo/webviewtools/WebViewTools;->activity:Landroid/app/Activity;

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
