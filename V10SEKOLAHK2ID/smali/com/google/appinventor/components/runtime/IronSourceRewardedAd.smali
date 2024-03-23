.class public final Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xe
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Rewarded Video is a user-initiated video that rewards users with in-app content in exchange for ad views. ironSource provides a buffer-free, HD video experience in a skippable format. This ad unit supports ad placements as well as capping and pacing. <br> SDK Version: 7.3.0.1"
    iconName = "images/ironSourceRewardedAd.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "mediationsdk.aar, mediationsdk.jar, kotlin-stdlib.jar, kotlin-stdlib-common.jar, jetbrains-annotations.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->a:Landroid/app/Activity;

    .line 50
    new-instance p1, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;-><init>(Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;)V

    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    return-void
.end method


# virtual methods
.method public AdAvailabilityChanged(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Availability Changed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdAvailabilityChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 164
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    .line 159
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

    .line 144
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

    .line 169
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

    .line 149
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Opened"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdOpened"

    .line 154
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AppKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Ironsource AppKey"
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public AppKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "IronSource RewardedAd AppKey"
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->a:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public IsAdLoaded()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if RewardedVideo Ad Is Loaded"
    .end annotation

    .line 124
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoAvailable()Z

    move-result v0

    return v0
.end method

.method public Rewarded(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Rewarded"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "Rewarded"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ShowAd()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show RewardedVideo Ad"
    .end annotation

    .line 129
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo()V

    return-void
.end method

.method public ShowAdWithPlacement(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show RewardedVideo Ad with a placement name"
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public ValidateIntegration()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Only to Validate if the Integration was Successful"
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    return-void
.end method
