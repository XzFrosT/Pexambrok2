.class Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronVungleCore;->InitializeSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronVungleCore;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronVungleCore;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronVungleCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoCacheAdAvailable(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronVungleCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->AutoCacheAdAvailable(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/vungle/warren/error/VungleException;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronVungleCore;

    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->SDKFailedToInitialize(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronVungleCore;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->SDKInitialized()V

    return-void
.end method
