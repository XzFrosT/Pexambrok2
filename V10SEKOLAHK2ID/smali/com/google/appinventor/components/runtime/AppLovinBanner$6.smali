.class Lcom/google/appinventor/components/runtime/AppLovinBanner$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/MaxAdViewAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinBanner;->LoadMaxAd(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AppLovinBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinBanner;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$6;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$6;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdClicked()V

    return-void
.end method

.method public onAdCollapsed(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$6;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdClosed()V

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 269
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$6;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdExpanded(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 234
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$6;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdOpened()V

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$6;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdFailedToLoad(I)V

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$6;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdLoaded()V

    return-void
.end method
