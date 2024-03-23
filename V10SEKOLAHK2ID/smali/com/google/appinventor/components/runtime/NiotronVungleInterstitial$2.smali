.class Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->PlayAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public creativeId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdClick(Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdEnded(Ljava/lang/String;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdLeftApplication(Ljava/lang/String;)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdRewarded(Ljava/lang/String;)V

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdStarted(Ljava/lang/String;)V

    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdViewed(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdFailedToPlay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
