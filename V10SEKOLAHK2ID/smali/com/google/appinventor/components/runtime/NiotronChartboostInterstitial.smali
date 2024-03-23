.class public final Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Chartboost interstitial ads component. <br> SDK Version: 8.3.0"
    iconName = "images/niotronChartboostInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 30
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method


# virtual methods
.method public CacheInterstitial(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cache interstitial"
    .end annotation

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Default"

    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public HasCachedInterstitial(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks if cached the interstitial ad"
    .end annotation

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Default"

    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ShowInterstitial(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the loaded interstitial ad"
    .end annotation

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Default"

    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    return-void
.end method
