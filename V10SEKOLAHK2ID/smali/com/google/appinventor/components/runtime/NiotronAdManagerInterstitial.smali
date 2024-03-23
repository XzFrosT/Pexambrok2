.class public final Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Interstitial Ad Provided By Google Ad Manager"
    iconName = "images/niotronAdManagerInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 34
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-object p1
.end method


# virtual methods
.method public AdDisplayed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Displayed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDisplayed"

    .line 113
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToDisplay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Display"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToDisplay"

    .line 118
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Load"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToLoad"

    .line 108
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Impression. Called when an Impression is counted."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    .line 123
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Loaded"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 103
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsAdLoaded()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if Interstitial Ad is loaded"
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public LoadAd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load an Interstitial Ad"
    .end annotation

    .line 55
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Z

    if-eqz v2, :cond_0

    const-string p1, "/6499/example/interstitial"

    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;)V

    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show Interstitial Ad. Call Only After Loading, TIP: Place the Block Inside AdLoaded Event."
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string v0, "Ad Not Loaded"

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->AdFailedToDisplay(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Ads"
    .end annotation

    .line 40
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Ads"
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerInterstitial;->a:Z

    return v0
.end method
