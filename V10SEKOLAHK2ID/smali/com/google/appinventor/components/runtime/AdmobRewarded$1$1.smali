.class Lcom/google/appinventor/components/runtime/AdmobRewarded$1$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobRewarded$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AdmobRewarded$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdmobRewarded$1;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$1$1;->a:Lcom/google/appinventor/components/runtime/AdmobRewarded$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$1$1;->a:Lcom/google/appinventor/components/runtime/AdmobRewarded$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AdmobRewarded$1;->a:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->AdDismissed()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$1$1;->a:Lcom/google/appinventor/components/runtime/AdmobRewarded$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AdmobRewarded$1;->a:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$1$1;->a:Lcom/google/appinventor/components/runtime/AdmobRewarded$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AdmobRewarded$1;->a:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->AdImpression()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$1$1;->a:Lcom/google/appinventor/components/runtime/AdmobRewarded$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AdmobRewarded$1;->a:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->AdDisplayed()V

    return-void
.end method
