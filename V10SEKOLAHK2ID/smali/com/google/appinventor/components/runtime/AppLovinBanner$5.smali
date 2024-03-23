.class Lcom/google/appinventor/components/runtime/AppLovinBanner$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/adview/AppLovinAdViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinBanner;->LoadBannerAd(Ljava/lang/Object;)V
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

    .line 192
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$5;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClosedFullscreen(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$5;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdClosed()V

    return-void
.end method

.method public adFailedToDisplay(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$5;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p3}, Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public adLeftApplication(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$5;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdLeftApplication()V

    return-void
.end method

.method public adOpenedFullscreen(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$5;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdOpened()V

    return-void
.end method
