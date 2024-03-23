.class public final Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Chartboost ads banner component. <br> SDK Version: 8.3.0"
    iconName = "images/niotronChartboostBanner.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public viewGroup:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->viewGroup:Landroid/widget/LinearLayout;

    .line 40
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method


# virtual methods
.method public AdCached()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad cached"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdCached"

    .line 76
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 86
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdShown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad shown"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdShown"

    .line 81
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadBanner(Ljava/lang/String;I)V
    .locals 3
    .param p2    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ChartboostBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load ad"
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 47
    sget-object p2, Lcom/chartboost/sdk/Banner/BannerSize;->STANDARD:Lcom/chartboost/sdk/Banner/BannerSize;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 49
    sget-object p2, Lcom/chartboost/sdk/Banner/BannerSize;->MEDIUM:Lcom/chartboost/sdk/Banner/BannerSize;

    goto :goto_0

    .line 51
    :cond_1
    sget-object p2, Lcom/chartboost/sdk/Banner/BannerSize;->LEADERBOARD:Lcom/chartboost/sdk/Banner/BannerSize;

    .line 53
    :goto_0
    new-instance v0, Lcom/chartboost/sdk/ChartboostBanner;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "Default"

    :cond_2
    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/chartboost/sdk/ChartboostBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/Banner/BannerSize;Lcom/chartboost/sdk/ChartboostBannerListener;)V

    .line 69
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostBanner;->show()V

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->viewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 71
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->viewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->viewGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method
