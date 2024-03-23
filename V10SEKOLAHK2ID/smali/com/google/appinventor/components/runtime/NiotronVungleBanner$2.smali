.class Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->PlayAd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronVungleBanner;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

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

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdEnded(Ljava/lang/String;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdLeftApplication(Ljava/lang/String;)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdStarted(Ljava/lang/String;)V

    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdViewed(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdFailedToPlay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
