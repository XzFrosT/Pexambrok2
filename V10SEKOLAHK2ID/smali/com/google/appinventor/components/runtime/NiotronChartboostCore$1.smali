.class Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InitializeSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronChartboostCore;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInPlay(Ljava/lang/String;)V
    .locals 0

    .line 206
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInPlay(Ljava/lang/String;)V

    return-void
.end method

.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InterstitialAdCached(Ljava/lang/String;)V

    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheMoreApps(Ljava/lang/String;)V

    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->RewardedVideoCached(Ljava/lang/String;)V

    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickInterstitial(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InterstitialAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickMoreApps(Ljava/lang/String;)V

    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 1

    .line 183
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->RewardedVideoClicked(Ljava/lang/String;)V

    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseInterstitial(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InterstitialAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseMoreApps(Ljava/lang/String;)V

    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseRewardedVideo(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->RewardedVideoClosed(Ljava/lang/String;)V

    return-void
.end method

.method public didCompleteInterstitial(Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteInterstitial(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InterstitialAdCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 1

    .line 189
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->RewardedVideoCompleted(Ljava/lang/String;I)V

    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InterstitialAdDismissed(Ljava/lang/String;)V

    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissMoreApps(Ljava/lang/String;)V

    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 1

    .line 171
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->RewardedVideoDismissed(Ljava/lang/String;)V

    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayInterstitial(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InterstitialAdShown(Ljava/lang/String;)V

    return-void
.end method

.method public didDisplayMoreApps(Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayMoreApps(Ljava/lang/String;)V

    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 1

    .line 195
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->RewardedVideoShown(Ljava/lang/String;)V

    return-void
.end method

.method public didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->InterstitialAdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .line 165
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->RewardedVideoFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    return-void
.end method

.method public didInitialize()V
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/chartboost/sdk/ChartboostDelegate;->didInitialize()V

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->SDKInitialized()V

    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldDisplayInterstitial(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldDisplayMoreApps(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldDisplayRewardedVideo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .locals 0

    .line 109
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestMoreApps(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public willDisplayInterstitial(Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->willDisplayInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->willDisplayVideo(Ljava/lang/String;)V

    return-void
.end method
