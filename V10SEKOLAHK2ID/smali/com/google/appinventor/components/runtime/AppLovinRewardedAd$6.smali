.class Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/MaxRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->LoadMaxAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 255
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdDisplayed()V

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 240
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdHidden()V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdFailedToLoad(I)V

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 230
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdLoaded()V

    return-void
.end method

.method public onRewardedVideoCompleted(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdEnded()V

    return-void
.end method

.method public onRewardedVideoStarted(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdStarted()V

    return-void
.end method

.method public onUserRewarded(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxReward;->getAmount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->Rewarded(Ljava/lang/String;)V

    return-void
.end method
