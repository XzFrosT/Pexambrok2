.class Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/MaxAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->LoadMaxAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdClicked()V

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdDisplayed()V

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdHidden()V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdFailedToLoad(I)V

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$6;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdLoaded()V

    return-void
.end method
