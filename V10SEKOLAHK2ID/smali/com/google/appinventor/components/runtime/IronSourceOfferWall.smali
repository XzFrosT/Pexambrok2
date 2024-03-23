.class public final Lcom/google/appinventor/components/runtime/IronSourceOfferWall;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xe
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The OfferWall is an opt-in ad unit that rewards users for completing an action. Users are presented with offers by leading brands such as filling out surveys or signing up for a service. <br> SDK Version: 7.3.0.1"
    iconName = "images/ironSourceOfferWall.png"
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

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Z

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Landroid/app/Activity;

    .line 45
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setClientSideCallbacks(Z)V

    .line 47
    new-instance p1, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;-><init>(Lcom/google/appinventor/components/runtime/IronSourceOfferWall;)V

    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/IronSourceOfferWall;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Z

    return p1
.end method


# virtual methods
.method public AppKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Ironsource AppKey"
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Ljava/lang/String;

    return-object v0
.end method

.method public AppKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "IronSource OfferWall AppKey"
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public GetUserTotalCredits()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the total Amount of Users Credits. OfferWall Credited Event will be called"
    .end annotation

    .line 121
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->getOfferwallCredits()V

    return-void
.end method

.method public IsOfferWallAvailable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if OfferWall is Available"
    .end annotation

    .line 106
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Z

    return v0
.end method

.method public OfferWallAvailabilityChanged(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Availability Changed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OfferWallAvailabilityChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OfferWallClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OfferWallClosed"

    .line 146
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OfferWallCredited(IIZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Called When User has Completed some offer. Important! If totalled is true, credited amount will be the same as total amount."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "OfferWallCredited"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OfferWallFailedToCredit(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to credit to the user due to some reason"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OfferWallFailedToCredit"

    .line 157
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OfferWallFailedToDisplay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed To Display"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OfferWallFailedToDisplay"

    .line 136
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OfferWallOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Opened"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OfferWallOpened"

    .line 141
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ShowOfferWall()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show OfferWall"
    .end annotation

    .line 111
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showOfferwall()V

    return-void
.end method

.method public ShowOfferWallWithPlacement(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show OfferWall with a placement Name"
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showOfferwall(Ljava/lang/String;)V

    return-void
.end method

.method public ValidateIntegration()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Only to Validate if the Integration was Successful"
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    return-void
.end method
