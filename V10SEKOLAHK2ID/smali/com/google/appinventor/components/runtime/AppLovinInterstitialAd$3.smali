.class Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->ShowInterstitialAd()V
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

    .line 139
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$3;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$3;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdDisplayed()V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd$3;->a:Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinInterstitialAd;->AdHidden()V

    return-void
.end method
