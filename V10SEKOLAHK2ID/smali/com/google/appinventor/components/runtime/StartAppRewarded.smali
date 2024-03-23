.class public final Lcom/google/appinventor/components/runtime/StartAppRewarded;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Rewarded Ads are interstitial video ads that provide a reward to the user in exchange for watching an entire video ad. The reward might be in-app goods, virtual currency or any premium content provided by the application. <br> SDK Version: 4.10.12"
    iconName = "images/startAppRewarded.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/startapp/sdk/adsbase/StartAppAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded;->a:Landroid/content/Context;

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

    .line 136
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdCompleted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdCompleted"

    .line 141
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

    .line 126
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

    .line 131
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

    .line 116
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

    .line 121
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

    .line 111
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CloseAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Close the Ad Manually"
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded;->a:Lcom/startapp/sdk/adsbase/StartAppAd;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/StartAppAd;->close()V

    :cond_0
    return-void
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

    .line 146
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsSdkInitialized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the StartApp SDK Is Initialized"
    .end annotation

    .line 44
    sget-boolean v0, Lcom/google/appinventor/components/runtime/StartAppCore;->a:Z

    return v0
.end method

.method public LoadAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Rewarded Ad"
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/StartAppRewarded;->IsSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/startapp/sdk/adsbase/StartAppAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded;->a:Lcom/startapp/sdk/adsbase/StartAppAd;

    .line 51
    new-instance v1, Lcom/google/appinventor/components/runtime/StartAppRewarded$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/StartAppRewarded$1;-><init>(Lcom/google/appinventor/components/runtime/StartAppRewarded;)V

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;->setVideoListener(Lcom/startapp/sdk/adsbase/adlisteners/VideoListener;)V

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded;->a:Lcom/startapp/sdk/adsbase/StartAppAd;

    sget-object v1, Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;->REWARDED_VIDEO:Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;

    new-instance v2, Lcom/google/appinventor/components/runtime/StartAppRewarded$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/StartAppRewarded$2;-><init>(Lcom/google/appinventor/components/runtime/StartAppRewarded;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/adsbase/StartAppAd;->loadAd(Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "SDK Not Yet Loaded"

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/StartAppRewarded;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the Loaded Rewarded Ad"
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded;->a:Lcom/startapp/sdk/adsbase/StartAppAd;

    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lcom/google/appinventor/components/runtime/StartAppRewarded$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/StartAppRewarded$3;-><init>(Lcom/google/appinventor/components/runtime/StartAppRewarded;)V

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;->showAd(Lcom/startapp/sdk/adsbase/adlisteners/AdDisplayListener;)Z

    goto :goto_0

    :cond_0
    const-string v0, "Ad Not Loaded"

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/StartAppRewarded;->AdFailedToDisplay(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
