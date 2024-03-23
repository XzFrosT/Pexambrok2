.class public final Lcom/google/appinventor/components/runtime/AppLovinNative;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x10
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Native ads let you monetize your app in a way that\u2019s consistent with its existing design. <br> SDK Version: 11.9.0"
    iconName = "images/appLovinBanner.png"
    nonVisible = false
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "applovin-sdk.aar, applovin-sdk.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-base.aar, play-services-base.jar, play-services-basement.aar, play-services-basement.jar, play-services-tasks.aar, play-services-tasks.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID, android.permission.ACCESS_WIFI_STATE, com.applovin.array.apphub.permission.BIND_APPHUB_SERVICE"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/widget/FrameLayout;

.field private a:Lcom/applovin/mediation/MaxAd;

.field private a:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

.field private a:Lcom/applovin/sdk/AppLovinSdk;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->c:Z

    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/app/Activity;

    .line 60
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/widget/FrameLayout;

    .line 63
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Landroid/widget/FrameLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Lcom/applovin/mediation/MaxAd;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/mediation/MaxAd;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinNative;Lcom/applovin/mediation/MaxAd;)Lcom/applovin/mediation/MaxAd;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/mediation/MaxAd;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/sdk/AppLovinSdk;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->c:Z

    return p0
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

    .line 178
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Load"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToLoad"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

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

    .line 168
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AgeRestricted(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Age Restricted. For Younger Audience"
    .end annotation

    .line 106
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->b:Z

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setIsAgeRestrictedUser(ZLandroid/content/Context;)V

    return-void
.end method

.method public AgeRestricted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Age Restricted. For Younger Audience"
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->b:Z

    return v0
.end method

.method public Consent(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "GDPR. Consent of the User"
    .end annotation

    .line 94
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Z

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    return-void
.end method

.method public Consent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Consent of the User"
    .end annotation

    .line 100
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Z

    return v0
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

.method public LoadNativeAd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Native Ad"
    .end annotation

    .line 131
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/app/Activity;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 132
    new-instance p1, Lcom/google/appinventor/components/runtime/AppLovinNative$2;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AppLovinNative$2;-><init>(Lcom/google/appinventor/components/runtime/AppLovinNative;)V

    invoke-virtual {v0, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    .line 158
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd()V

    return-void
.end method

.method public Muted(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Start Ads Muted"
    .end annotation

    .line 118
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->c:Z

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/sdk/AppLovinSdk;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setMuted(Z)V

    :cond_0
    return-void
.end method

.method public Muted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Start Ads Muted"
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->c:Z

    return v0
.end method

.method public SdkInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sdk Initialized"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SdkInitialized"

    .line 163
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SdkKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AppLovin Sdk Key"
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Ljava/lang/String;

    return-object v0
.end method

.method public SdkKey(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AppLovin Sdk Key"
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/sdk/AppLovinSdk;

    .line 76
    new-instance v0, Lcom/google/appinventor/components/runtime/AppLovinNative$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AppLovinNative$1;-><init>(Lcom/google/appinventor/components/runtime/AppLovinNative;)V

    invoke-virtual {p1, v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    .line 83
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Lcom/applovin/sdk/AppLovinSdk;

    const-string v0, "max"

    invoke-virtual {p1, v0}, Lcom/applovin/sdk/AppLovinSdk;->setMediationProvider(Ljava/lang/String;)V

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

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method
