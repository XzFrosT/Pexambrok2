.class Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


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

    .line 192
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$5;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$5;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdDisplayed()V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd$5;->a:Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinRewardedAd;->AdHidden()V

    return-void
.end method
