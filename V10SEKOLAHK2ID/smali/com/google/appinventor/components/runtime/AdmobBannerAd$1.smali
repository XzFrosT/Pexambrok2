.class Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobBannerAd;->LoadBannerAd(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AdmobBannerAd;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdmobBannerAd;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->a:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->a:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->a:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->a:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->a:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->a:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->a:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdOpened()V

    return-void
.end method
