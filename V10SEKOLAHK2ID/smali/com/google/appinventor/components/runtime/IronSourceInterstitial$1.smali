.class Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/IronSourceInterstitial;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/IronSourceInterstitial;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->a:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->a:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdClicked()V

    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->a:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdClosed()V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->a:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdOpened()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->a:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdOpened()V

    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->a:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdLoaded()V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->a:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceInterstitial$1;->a:Lcom/google/appinventor/components/runtime/IronSourceInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceInterstitial;->AdDisplayed()V

    return-void
.end method
