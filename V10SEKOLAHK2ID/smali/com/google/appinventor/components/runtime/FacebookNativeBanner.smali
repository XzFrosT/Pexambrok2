.class public final Lcom/google/appinventor/components/runtime/FacebookNativeBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Native Ad allows you to build a customized experience for the ads you show in your app. <br> SDK Version: 6.14.0"
    iconName = "images/facebookNativeBanner.png"
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

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Z

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Landroid/content/Context;

    .line 47
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Landroid/widget/FrameLayout;

    .line 50
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FacebookNativeBanner;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FacebookNativeBanner;)Landroid/widget/FrameLayout;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Lcom/facebook/ads/NativeBannerAdView$Type;
    .locals 3

    const-string v0, "Wrong AdSize, Loading \"Banner\" size as default"

    .line 136
    :try_start_0
    instance-of v1, p1, Lcom/facebook/ads/NativeBannerAdView$Type;

    if-eqz v1, :cond_0

    .line 137
    check-cast p1, Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object p1

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->AdSizeHeight50:Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    sget-object p1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_50:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object p1

    .line 140
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->AdSizeHeight100:Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    sget-object p1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_100:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object p1

    .line 142
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->AdSizeHeight120:Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 143
    sget-object p1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_120:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object p1

    .line 145
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->ErrorOccurred(Ljava/lang/String;)V

    .line 146
    sget-object p1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_50:Lcom/facebook/ads/NativeBannerAdView$Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 149
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->ErrorOccurred(Ljava/lang/String;)V

    .line 150
    sget-object p1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_50:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object p1
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad was Clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 166
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpressionLogged()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Impression Logged"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpressionLogged"

    .line 171
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdSizeHeight100()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    sget-object v0, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_100:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object v0
.end method

.method public AdSizeHeight120()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    sget-object v0, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_120:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object v0
.end method

.method public AdSizeHeight50()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    sget-object v0, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_50:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-object v0
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 161
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/FacebookNativeBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads native banner ad with given placement id, ad size and other params"
    .end annotation

    move-object v9, p0

    move-object/from16 v0, p7

    .line 74
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a(Ljava/lang/Object;)Lcom/facebook/ads/NativeBannerAdView$Type;

    move-result-object v8

    .line 75
    new-instance v10, Lcom/facebook/ads/NativeBannerAd;

    iget-object v0, v9, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Landroid/content/Context;

    iget-boolean v1, v9, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMG_16_9_APP_INSTALL#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object v1, v2

    :goto_0
    invoke-direct {v10, v0, v1}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v10}, Lcom/facebook/ads/NativeBannerAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v11

    new-instance v12, Lcom/google/appinventor/components/runtime/FacebookNativeBanner$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/FacebookNativeBanner$1;-><init>(Lcom/google/appinventor/components/runtime/FacebookNativeBanner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;)V

    invoke-interface {v11, v12}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    .line 76
    invoke-virtual {v10, v0}, Lcom/facebook/ads/NativeBannerAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    return-void
.end method

.method public MediaDownloaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Media Downloaded"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MediaDownloaded"

    .line 156
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
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

    .line 62
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Mode"
    .end annotation

    .line 67
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookNativeBanner;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method
