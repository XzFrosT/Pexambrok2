.class public final Lcom/google/appinventor/components/runtime/FacebookBannerAd;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A banner is a small bar ad that appears at the bottom or top of your content. Usually sized 320 x 50. <br> SDK Version: 6.14.0"
    iconName = "images/facebookBannerAd.png"
    nonVisible = false
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "audience_network.dex"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "audience-network-sdk.aar, audience-network-sdk.jar, play-services-basement.aar, play-services-basement.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/widget/FrameLayout;

.field private a:Lcom/facebook/ads/AdView;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Z

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Landroid/widget/FrameLayout;

    .line 46
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 48
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/facebook/ads/AdSize;
    .locals 3

    const-string v0, "Wrong AdSize, Loading \"Banner\" size as default"

    .line 131
    :try_start_0
    instance-of v1, p1, Lcom/facebook/ads/AdSize;

    if-eqz v1, :cond_0

    .line 132
    check-cast p1, Lcom/facebook/ads/AdSize;

    return-object p1

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/FacebookBannerSize;->StandardBanner:Lcom/google/appinventor/components/common/FacebookBannerSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/FacebookBannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 135
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/FacebookBannerSize;->MediumBanner:Lcom/google/appinventor/components/common/FacebookBannerSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/FacebookBannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 137
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/appinventor/components/common/FacebookBannerSize;->LargeBanner:Lcom/google/appinventor/components/common/FacebookBannerSize;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FacebookBannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    sget-object p1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 140
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->AdFailedToDisplay(Ljava/lang/String;)V

    .line 141
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 144
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->AdFailedToDisplay(Ljava/lang/String;)V

    .line 145
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    return-object p1
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

    .line 161
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToDisplay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Display"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToDisplay"

    .line 171
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Load"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToLoad"

    .line 156
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Impression Logged"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    .line 166
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

    .line 151
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LargeBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Banner Ad Size"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    return-object v0
.end method

.method public LoadBannerAd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/FacebookBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a banner ad with given placement id and ad size"
    .end annotation

    .line 94
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a(Ljava/lang/Object;)Lcom/facebook/ads/AdSize;

    move-result-object p2

    .line 95
    instance-of v0, p2, Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMG_16_9_APP_INSTALL#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Lcom/facebook/ads/AdView;

    .line 97
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 99
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Lcom/facebook/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance p1, Lcom/google/appinventor/components/runtime/FacebookBannerAd$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/FacebookBannerAd$1;-><init>(Lcom/google/appinventor/components/runtime/FacebookBannerAd;)V

    .line 123
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {p2}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    goto :goto_0

    :cond_1
    const-string p1, "Wrong AdSize"

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->AdFailedToDisplay(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public MediumBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Banner Ad Size"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    return-object v0
.end method

.method public StandardBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Banner Ad Size"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    return-object v0
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Mode"
    .end annotation

    .line 66
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Mode"
    .end annotation

    .line 71
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->a:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    :cond_0
    return-void
.end method
