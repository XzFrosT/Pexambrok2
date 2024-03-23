.class public final Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Interstitial Ad Of Appnext"
    iconName = "images/niotronAppnextInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "AppnextAndroidSDKAds.jar,AppnextAndroidSDKAds.aar,AppnextAndroidSDKCore.jar,AppnextAndroidSDKCore.jar, work-runtime.aar, work-runtime.jar, room-runtime-2.2.5.aar, room-runtime-2.2.5.jar, room-common-2.2.5.jar, sqlite-2.1.0.aar, sqlite-2.1.0.jar, sqlite-framework-2.1.0.aar, sqlite-framework-2.1.0.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar, glide.jar, glide.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.GET_TASKS,android.permission.PACKAGE_USAGE_STATS,android.permission.RECEIVE_BOOT_COMPLETED"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/appnext/ads/interstitial/Interstitial;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Landroid/content/Context;

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Landroid/app/Activity;

    .line 39
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/appnext/base/Appnext;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 64
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    .line 54
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error Occurred in ad"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdErrorOccurred"

    .line 74
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad loaded"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 59
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad opened"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdOpened"

    .line 69
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdUnitID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Ljava/lang/String;

    return-object v0
.end method

.method public AdUnitID(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Remember That Ad Unit Id Can Only Be Set Once"
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/appnext/ads/interstitial/Interstitial;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/appnext/ads/interstitial/Interstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Lcom/appnext/ads/interstitial/Interstitial;

    .line 87
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {v0, p1}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 93
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 98
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 103
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 108
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$5;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    return-void
.end method

.method public IsAdLoaded()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks if ad os loaded"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->isAdLoaded()Z

    move-result v0

    return v0
.end method

.method public LoadAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load ad"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Lcom/appnext/ads/interstitial/Interstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->loadAd()V

    :cond_0
    return-void
.end method

.method public ShowAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the loaded ad"
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->a:Lcom/appnext/ads/interstitial/Interstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->showAd()V

    :cond_0
    return-void
.end method
