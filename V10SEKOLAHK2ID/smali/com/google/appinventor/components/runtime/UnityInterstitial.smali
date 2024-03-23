.class public final Lcom/google/appinventor/components/runtime/UnityInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Interstitial is a full-screen Ad <br> SDK Version: 4.7.1"
    iconName = "images/unityInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "unity-ads.aar, unity-ads.jar, unity-scaradapter-1920.jar, unity-scaradapter-1950.jar, unity-scaradapter-2000.jar,unity-scaradapter-2100.jar, unity-scaradapter-common.jar, okhttp.jar, okio.jar, startup-runtime.aar, startup-runtime.jar, webkit.aar, webkit.jar,kotlin-stdlib-jdk8.jar, kotlin-stdlib-jdk7.jar, kotlin-stdlib.jar, kotlin-stdlib-common.jar, kotlin-android-extensions-runtime.jar, jetbrains-annotations.jar,kotlinx-coroutines-core-jvm.jar, kotlinx-coroutines.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_NETWORK_STATE, android.permission.INTERNET, com.google.android.gms.permission.AD_ID"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Ljava/lang/String;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial;->a:Z

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial;->a:Landroid/content/Context;

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 99
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed To Load"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToLoad"

    .line 104
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToShow(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Display"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToShow"

    .line 119
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFinished()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Finished Playing"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdFinished"

    .line 114
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Loaded"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 94
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdStarted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Started Playing"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdStarted"

    .line 109
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializationComplete()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Initialization Complete"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InitializationComplete"

    .line 124
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializationFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Initialization Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "InitializationFailed"

    .line 129
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeSdk(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the SDK. Set testMode to true to see test ads"
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public LoadAd(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load an Interstitial Ad"
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial;->a:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/google/appinventor/components/runtime/UnityInterstitial$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/UnityInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/UnityInterstitial;)V

    invoke-static {p1, v0}, Lcom/unity3d/ads/UnityAds;->load(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    return-void
.end method

.method public ShowAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Display an Interstitial Ad"
    .end annotation

    .line 68
    new-instance v0, Lcom/google/appinventor/components/runtime/UnityInterstitial$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/UnityInterstitial$2;-><init>(Lcom/google/appinventor/components/runtime/UnityInterstitial;)V

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/UnityInterstitial;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    return-void
.end method

.method public onInitializationComplete()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/UnityInterstitial;->InitializationComplete()V

    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/UnityInterstitial;->InitializationFailed(Ljava/lang/String;)V

    return-void
.end method
