.class Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->LoadInterstitialAd()V
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

    .line 122
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$2;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$2;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->a(Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    .line 126
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$2;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdLoaded()V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$2;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdFailedToLoad(I)V

    return-void
.end method
