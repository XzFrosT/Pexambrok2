.class public final Lcom/google/appinventor/components/runtime/WebViewer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for viewing Web pages.  The Home URL can be specified in the Designer or in the Blocks Editor.  The view can be set to follow links when they are tapped, and users can fill in Web forms. Warning: This is not a full browser.  For example, pressing the phone\'s hardware Back key will exit the app, rather than move back in the browser history.<p />You can use the WebViewer.WebViewString property to communicate between your app and Javascript code running in the Webviewer page. In the app, you get and set WebViewString.  In the WebViewer, you include Javascript that references the window.Niotron object, using the methoods </em getWebViewString()</em> and <em>setWebViewString(text)</em>.  <p />For example, if the WebViewer opens to a page that contains the Javascript command <br /> <em>document.write(\"The answer is\" + window.Niotron.getWebViewString());</em> <br />and if you set WebView.WebVewString to \"hello\", then the web page will show </br ><em>The answer is hello</em>.  <br />And if the Web page contains Javascript that executes the command <br /><em>window.Niotron.setWebViewString(\"hello from Javascript\")</em>, <br />then the value of the WebViewString property will be <br /><em>hello from Javascript</em>. "
    version = 0xa
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/WebViewer$a;,
        Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;,
        Lcom/google/appinventor/components/runtime/WebViewer$b;
    }
.end annotation


# static fields
.field static a:Landroid/webkit/JsResult;


# instance fields
.field private final a:Landroid/webkit/WebView;

.field a:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 147
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Z

    .line 121
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->b:Z

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->c:Z

    .line 132
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->d:Z

    .line 135
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->e:Z

    .line 149
    new-instance v1, Landroid/webkit/WebView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    .line 150
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->a()V

    .line 151
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 154
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 156
    new-instance v2, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    .line 157
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    const-string v4, "Niotron"

    invoke-virtual {v3, v2, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    const-string v4, "Appinventor"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 161
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/WebViewer$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 169
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V

    .line 172
    :cond_0
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 173
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/google/appinventor/components/runtime/WebViewer$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/WebViewer$a;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 174
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/google/appinventor/components/runtime/WebViewer$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/WebViewer$2;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string p1, ""

    .line 192
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->HomeUrl(Ljava/lang/String;)V

    const/4 p1, -0x2

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->Width(I)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->Height(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/WebView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 579
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->c:Z

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 581
    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;-><init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/WebViewer;)V

    .line 580
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->c:Z

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 584
    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;-><init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V

    .line 583
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/WebViewer$b;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Lcom/google/appinventor/components/runtime/WebViewer$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 689
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/WebViewer$4;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 705
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/WebViewer;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->d:Z

    return p1
.end method


# virtual methods
.method public AfterJavaScriptEvaluated(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after Js is evalurated"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterJavaScriptEvaluated"

    .line 684
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AlertCancel()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes Alert \"Cancel\" button"
    .end annotation

    .line 634
    sget-object v0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method public AlertOK()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes Alert \"OK\" button"
    .end annotation

    .line 629
    sget-object v0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method public BeforePageLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a page is about to load this event is run."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "BeforePageLoad"

    .line 649
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CanGoBack()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go back in the history list."
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public CanGoBackAndForward(I)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load page with HTML text"
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public CanGoForward()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go forward in the history list."
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public ClearCaches()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear WebView caches."
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method

.method public ClearCookies()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear WebView cookies."
    .end annotation

    .line 606
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 607
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 608
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 610
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_0
    return-void
.end method

.method public ClearLocations()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear stored location permissions."
    .end annotation

    .line 574
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 575
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->clearWebViewGeoLoc()V

    :cond_0
    return-void
.end method

.method public CurrentPageTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Title of the page currently viewed"
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public CurrentUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URL of the page currently viewed.   This could be different from the Home URL if new pages were visited by following links."
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public DownloadRequested(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 679
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const-string p1, "DownloadRequested"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When an error occurs this event is run."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "ErrorOccurred"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FollowLinks(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 363
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Z

    .line 364
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->a()V

    return-void
.end method

.method public FollowLinks()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether to follow links when they are tapped in the WebViewer.  If you follow links, you can use GoBack and GoForward to navigate the browser history. "
    .end annotation

    .line 350
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Z

    return v0
.end method

.method public GoBack()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go back to the previous page in the history list.  Does nothing if there is no previous page."
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method public GoBackAndForward(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load page with HTML text"
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    return-void
.end method

.method public GoForward()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go forward to the next page in the history list.   Does nothing if there is no next page."
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method public GoHome()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the home URL page.  This happens automatically when the home URL is changed."
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Ljava/lang/String;

    const-string v1, "GoHome"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/WebViewer;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public GoToUrl(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load the page at the given URL."
    .end annotation

    const-string v0, "GoToUrl"

    .line 498
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 282
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public HomeUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URL of the page the WebViewer should initially open to.  Setting this will load the page."
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public HomeUrl(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Ljava/lang/String;

    .line 311
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 312
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Ljava/lang/String;

    const-string v0, "HomeUrl"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public IgnoreSslErrors(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 392
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->c:Z

    .line 393
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->a()V

    return-void
.end method

.method public IgnoreSslErrors()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determine whether or not to ignore SSL errors. Set to true to ignore errors. Use this to accept self signed certificates from websites."
    .end annotation

    .line 379
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->c:Z

    return v0
.end method

.method public JSAlert(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "JSAlert"

    .line 669
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MessageConsoled(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MessageConsoled"

    .line 674
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PageLoaded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a page is finished loading this event is run."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PageLoaded"

    .line 654
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ProgressChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 664
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ProgressChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PromptforPermission(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 560
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->b:Z

    return-void
.end method

.method public PromptforPermission()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If True, then prompt the user of the WebView to give permission to access the geolocation API. If False, then assume permission is granted."
    .end annotation

    .line 544
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->b:Z

    return v0
.end method

.method public Reload()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reload the current page."
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public RunJavaScript(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Run JavaScript in the current page."
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/WebViewer$3;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public StopLoading()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop loading a page."
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method

.method public UserAgent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public UsesLocation(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether or not to give the application permission to use the Javascript geolocation API. This property is available only in the designer."
        userVisible = false
    .end annotation

    return-void
.end method

.method public WebViewString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the WebView\'s String, which is viewable through Javascript in the WebView as the window.Niotron object"
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->getWebViewString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WebViewString(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->setWebViewStringFromBlocks(Ljava/lang/String;)V

    return-void
.end method

.method public WebViewStringChange(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the JavaScript calls Niotron.setWebViewString this event is run."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "WebViewStringChange"

    .line 644
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 269
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public ZoomEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 406
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->e:Z

    .line 407
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->e:Z

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public loadHTML(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load page with HTML text"
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "text/html"

    const-string v2, "base64"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
