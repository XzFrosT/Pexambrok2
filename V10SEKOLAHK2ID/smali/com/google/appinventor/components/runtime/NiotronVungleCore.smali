.class public final Lcom/google/appinventor/components/runtime/NiotronVungleCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Core component for vungle ads components, this component must be used to use any vungle ads component. <br> SDK Version: 6.12.0"
    iconName = "images/niotronVungleCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "vungle.jar, vungle.aar, gson-2.8.4.jar, okhttp.jar, okio.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.ACCESS_WIFI_STATE"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->a:Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->a:Landroid/content/Context;

    .line 38
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public AppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Your Vungle Ads App Id"
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->a:Ljava/lang/String;

    return-void
.end method

.method public AutoCacheAdAvailable(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AutoCacheAdAvailable"

    .line 80
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeSDK()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronVungleCore;)V

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V

    return-void
.end method

.method public IsInitialized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 67
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public SDKFailedToInitialize(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SDKFailedToInitialize"

    .line 76
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SDKInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKInitialized"

    .line 72
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
