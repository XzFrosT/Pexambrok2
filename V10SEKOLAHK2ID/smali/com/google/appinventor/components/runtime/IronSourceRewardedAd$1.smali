.class Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdClicked()V

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdClosed()V

    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdEnded()V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdOpened()V

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->Rewarded(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdDisplayed()V

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd$1;->a:Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceRewardedAd;->AdAvailabilityChanged(Z)V

    return-void
.end method
