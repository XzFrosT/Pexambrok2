.class Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->LoadingChanged(Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->IsPlayingChanged(Z)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->VideoEnded()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->VideoReadyToPlay()V

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->VideoBuffering()V

    goto :goto_0

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->IdleState()V

    :goto_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 68
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlayerError(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlayerError(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->a:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlayerError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
