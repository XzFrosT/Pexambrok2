.class Lcom/google/appinventor/components/runtime/AppLovinNative$2;
.super Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinNative;->LoadNativeAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AppLovinNative;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinNative;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-direct {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinNative;->AdClicked()V

    return-void
.end method

.method public onNativeAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AppLovinNative;->AdFailedToLoad(I)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/mediation/MaxAd;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/AppLovinNative;->a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Lcom/applovin/mediation/MaxAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/AppLovinNative;->a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AppLovinNative;->a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Lcom/applovin/mediation/MaxAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->destroy(Lcom/applovin/mediation/MaxAd;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/AppLovinNative;->a(Lcom/google/appinventor/components/runtime/AppLovinNative;Lcom/applovin/mediation/MaxAd;)Lcom/applovin/mediation/MaxAd;

    .line 141
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/AppLovinNative;->a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 142
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/AppLovinNative;->a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$2;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinNative;->AdLoaded()V

    return-void
.end method
