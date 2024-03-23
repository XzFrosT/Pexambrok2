.class public final Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x10
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Interstitial Ad is a Full Screen Ad That Covers the App\'s UI. It may be a static image or a video <br> SDK Version: 11.9.0"
    iconName = "images/appLovinInterstitialAd.png"
    nonVisible = true
    version = 0x1
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

.field private a:Lcom/applovin/mediation/ads/MaxInterstitialAd;

.field private a:Lcom/applovin/sdk/AppLovinAd;

.field private a:Lcom/applovin/sdk/AppLovinSdk;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->c:Z

    .line 44
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->d:Z

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->c:Z

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

    .line 250
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDisplayed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Displayed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDisplayed"

    .line 240
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdEnded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Finished Playing"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdEnded"

    .line 260
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToDisplay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed To Display"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToDisplay"

    .line 265
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Load"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToLoad"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdHidden()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Hidden"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdHidden"

    .line 245
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

    .line 230
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdStarted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Started"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdStarted"

    .line 255
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

    .line 97
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->b:Z

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setIsAgeRestrictedUser(ZLandroid/content/Context;)V

    return-void
.end method

.method public AgeRestricted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Age Restricted. For Younger Audience"
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->b:Z

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

    .line 85
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Z

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    return-void
.end method

.method public Consent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Consent of the User"
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Z

    return v0
.end method

.method public LoadInterstitialAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load An Interstitial Ad"
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$2;-><init>(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public LoadMaxAd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load An Interstitial Ad By Max"
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->enableMax()V

    .line 177
    new-instance v0, Lcom/applovin/mediation/ads/MaxInterstitialAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Landroid/app/Activity;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/mediation/ads/MaxInterstitialAd;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    .line 178
    new-instance p1, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;-><init>(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)V

    invoke-virtual {v0, p1}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->setListener(Lcom/applovin/mediation/MaxAdListener;)V

    .line 209
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {p1}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->loadAd()V

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

    .line 109
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->c:Z

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    if-eqz v0, :cond_0

    .line 111
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

    .line 117
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->c:Z

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

    .line 225
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SdkKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AppLovin Sdk Key"
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Ljava/lang/String;

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

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    .line 68
    new-instance v0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$1;-><init>(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)V

    invoke-virtual {p1, v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    return-void
.end method

.method public ShowInterstitialAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the Interstitial Ad After Loading"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$3;-><init>(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 150
    new-instance v1, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$4;-><init>(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 156
    new-instance v1, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$5;-><init>(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 167
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v1, :cond_0

    .line 168
    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_0
    const-string v0, "Ad Not Loaded"

    .line 170
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdFailedToDisplay(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ShowMaxAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show An Interstitial Ad By Max"
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->showAd()V

    goto :goto_0

    :cond_0
    const-string v0, "Max Ad Not Loaded"

    .line 218
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdFailedToDisplay(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableMax()V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->d:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    const-string v1, "max"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->setMediationProvider(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->d:Z

    :cond_0
    return-void
.end method
