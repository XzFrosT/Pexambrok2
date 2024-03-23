.class Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->ShowRewardedAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$4;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$4;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdStarted()V

    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$4;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdEnded()V

    return-void
.end method
