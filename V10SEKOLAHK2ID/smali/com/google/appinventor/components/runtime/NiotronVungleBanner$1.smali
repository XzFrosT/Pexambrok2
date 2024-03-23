.class Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->LoadAd(I)V
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

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
