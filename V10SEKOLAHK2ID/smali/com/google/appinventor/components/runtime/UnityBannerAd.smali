.class public final Lcom/google/appinventor/components/runtime/UnityBannerAd;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Banner Ad is a rectangle ad placed usually at the top or bottom of the Screen. This ad is suited for beginner developers to monetize their apps. <br> SDK Version: 4.7.1"
    iconName = "images/unityBannerAd.png"
    nonVisible = false
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

.field private a:Landroid/widget/FrameLayout;

.field private a:Lcom/unity3d/services/banners/BannerView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/content/Context;

    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/app/Activity;

    .line 48
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/widget/FrameLayout;

    .line 50
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Clicked by the User"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 122
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

    .line 105
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdHidden()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Hidden"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdHidden"

    .line 133
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLeftApplication()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Left the application"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLeftApplication"

    .line 127
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

    .line 100
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdShown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Displayed to the User"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdShown"

    .line 117
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdUnLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Unloaded"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdUnLoaded"

    .line 111
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DestroyAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Destroy a banner ad thereby hiding it"
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->destroy()V

    return-void
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Height(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

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

    .line 170
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

    .line 175
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeSdk(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the SDK. Set testMode to true to see test ads"
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public LoadAd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Banner Ad"
    .end annotation

    .line 65
    new-instance v0, Lcom/unity3d/services/banners/BannerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/unity3d/services/banners/UnityBannerSize;->getDynamicSize(Landroid/content/Context;)Lcom/unity3d/services/banners/UnityBannerSize;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/unity3d/services/banners/BannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Lcom/unity3d/services/banners/BannerView;

    .line 66
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Lcom/unity3d/services/banners/BannerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance p1, Lcom/google/appinventor/components/runtime/UnityBannerAd$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/UnityBannerAd$1;-><init>(Lcom/google/appinventor/components/runtime/UnityBannerAd;)V

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/banners/BannerView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    .line 90
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {p1}, Lcom/unity3d/services/banners/BannerView;->load()V

    return-void
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Width(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UnityBannerAd;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onInitializationComplete()V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/UnityBannerAd;->InitializationComplete()V

    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 0

    .line 185
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/UnityBannerAd;->InitializationFailed(Ljava/lang/String;)V

    return-void
.end method
