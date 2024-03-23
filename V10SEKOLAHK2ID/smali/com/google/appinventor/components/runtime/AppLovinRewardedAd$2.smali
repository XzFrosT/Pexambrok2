.class Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->LoadRewardedAd()V
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

    .line 145
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$2;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$2;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdLoaded()V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$2;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdFailedToLoad(I)V

    return-void
.end method
