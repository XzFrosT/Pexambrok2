.class Lcom/google/appinventor/components/runtime/UnityRewarded$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/UnityRewarded;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/UnityRewarded;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/UnityRewarded;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UnityRewarded$2;->a:Lcom/google/appinventor/components/runtime/UnityRewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsShowClick(Ljava/lang/String;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityRewarded$2;->a:Lcom/google/appinventor/components/runtime/UnityRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityRewarded;->AdClicked()V

    return-void
.end method

.method public onUnityAdsShowComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .locals 0

    .line 87
    sget-object p1, Lcom/google/appinventor/components/runtime/UnityRewarded$3;->a:[I

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const-string p1, "Unknown"

    goto :goto_0

    :cond_0
    const-string p1, "Completed"

    goto :goto_0

    :cond_1
    const-string p1, "Skipped"

    .line 97
    :goto_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/UnityRewarded$2;->a:Lcom/google/appinventor/components/runtime/UnityRewarded;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/UnityRewarded;->AdFinished(Ljava/lang/String;)V

    return-void
.end method

.method public onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityRewarded$2;->a:Lcom/google/appinventor/components/runtime/UnityRewarded;

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/UnityRewarded;->AdFailedToShow(Ljava/lang/String;)V

    return-void
.end method

.method public onUnityAdsShowStart(Ljava/lang/String;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UnityRewarded$2;->a:Lcom/google/appinventor/components/runtime/UnityRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/UnityRewarded;->AdStarted()V

    return-void
.end method
