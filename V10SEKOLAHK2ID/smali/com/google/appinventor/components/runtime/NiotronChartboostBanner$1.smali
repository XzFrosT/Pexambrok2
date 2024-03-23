.class Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/ChartboostBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->LoadBanner(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCached(Lcom/chartboost/sdk/Events/ChartboostCacheEvent;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdCached()V

    return-void
.end method

.method public onAdClicked(Lcom/chartboost/sdk/Events/ChartboostClickEvent;Lcom/chartboost/sdk/Events/ChartboostClickError;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdClicked()V

    return-void
.end method

.method public onAdShown(Lcom/chartboost/sdk/Events/ChartboostShowEvent;Lcom/chartboost/sdk/Events/ChartboostShowError;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdShown()V

    return-void
.end method
