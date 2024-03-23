.class public final Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x10
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Rewarded Ad Covers the entire Screen and makes the user watch an ad in return for a reward.User can skip out of the ad or watch it completely to earn a reward. <br> SDK Version: 11.9.0"
    iconName = "images/appLovinRewardedAd.png"
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

.field private a:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

.field private a:Lcom/applovin/mediation/ads/MaxRewardedAd;

.field private a:Lcom/applovin/sdk/AppLovinSdk;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->c:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->d:Z

    .line 57
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->c:Z

    return p0
.end method


# virtual methods
.method public AdDisplayed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Dislayed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDisplayed"

    .line 299
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdEnded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Ended"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdEnded"

    .line 294
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

    .line 304
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed To Load"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 284
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

    .line 309
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

    .line 279
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

    .line 289
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

    .line 101
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->b:Z

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setIsAgeRestrictedUser(ZLandroid/content/Context;)V

    return-void
.end method

.method public AgeRestricted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Age Restricted. For Younger Audience"
    .end annotation

    .line 107
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->b:Z

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

    .line 89
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Z

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    return-void
.end method

.method public Consent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Consent of the User"
    .end annotation

    .line 95
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Z

    return v0
.end method

.method public IsAdLoaded()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the Rewarded Ad Is Loaded"
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsMaxAdLoaded()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the Max Rewarded Ad Is Loaded"
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/mediation/ads/MaxRewardedAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->isReady()Z

    move-result v0

    return v0
.end method

.method public LoadMaxAd(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load An Rewarded Ad By Max"
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->enableMax()V

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/mediation/ads/MaxRewardedAd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/mediation/ads/MaxRewardedAd;

    .line 212
    new-instance v0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;-><init>(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)V

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->setListener(Lcom/applovin/mediation/MaxRewardedAdListener;)V

    .line 258
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {p1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->loadAd()V

    return-void
.end method

.method public LoadRewardedAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load the Rewarded Ad in order to Show"
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 145
    new-instance v1, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$2;-><init>(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

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

    .line 113
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->c:Z

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    if-eqz v0, :cond_0

    .line 115
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

    .line 121
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->c:Z

    return v0
.end method

.method public RewardRejected()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Rejected"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RewardRejected"

    .line 319
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Rewarded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Rewarded"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Rewarded"

    .line 314
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SdkInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sdk Initialized"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SdkInitialized"

    .line 274
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SdkKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AppLovin Sdk Key"
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Ljava/lang/String;

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

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    .line 72
    new-instance v0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$1;-><init>(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)V

    invoke-virtual {p1, v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    return-void
.end method

.method public ShowMaxAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show An Rewarded Ad By Max"
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/mediation/ads/MaxRewardedAd;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->showAd()V

    goto :goto_0

    :cond_0
    const-string v0, "Max Ad Not Loaded"

    .line 267
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdFailedToDisplay(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ShowRewardedAd()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the ad after Loading"
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$3;-><init>(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)V

    new-instance v3, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$4;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$4;-><init>(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)V

    new-instance v4, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$5;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$5;-><init>(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "Ad Not Loaded"

    .line 204
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdFailedToDisplay(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public UserDeclinedToView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User Declined To View"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UserDeclinedToView"

    .line 330
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UserOverQuota()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User is over quota. Limit set in dashboard"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UserOverQuota"

    .line 324
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ValidationFailed(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Validation Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ValidationFailed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public enableMax()V
    .locals 2

    .line 61
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->d:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->a:Lcom/applovin/sdk/AppLovinSdk;

    const-string v1, "max"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->setMediationProvider(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->d:Z

    :cond_0
    return-void
.end method
