.class Lcom/google/appinventor/components/runtime/IronSourceBanner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/IronSourceBanner;->LoadAdWithPlacement(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/IronSourceBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/IronSourceBanner;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$2;->a:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerAdClicked()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$2;->a:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdClicked()V

    return-void
.end method

.method public onBannerAdLeftApplication()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$2;->a:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdOpened()V

    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$2;->a:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdLoaded()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$2;->a:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdLoaded()V

    return-void
.end method

.method public onBannerAdScreenDismissed()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$2;->a:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdClosed()V

    return-void
.end method

.method public onBannerAdScreenPresented()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$2;->a:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdDisplayed()V

    return-void
.end method
