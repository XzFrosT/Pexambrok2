.class public final Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Exo player for videos"
    iconName = "images/niotronVideoExoPlayer.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = " exoplayer-core.jar, exoplayer-core.aar, exoplayer-ui.jar, exoplayer-ui.aar,exoplayer-common.jar, exoplayer-common.aar, exoplayer-extractor.jar, exoplayer-extractor.aar,exoplayer-hls.jar, exoplayer-hls.aar,exoplayer-dash.jar, exoplayer-dash.aar,exoplayer-rtsp.jar, exoplayer-rtsp.aar, media.jar, media.aar, guava-27.1.jar"
.end annotation


# instance fields
.field private a:F

.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/FrameLayout;

.field private a:Landroid/widget/LinearLayout;

.field private a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private a:Lcom/google/android/exoplayer2/ui/PlayerView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 55
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:F

    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/content/Context;

    .line 59
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/app/Activity;

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 61
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 62
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 104
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/widget/LinearLayout;

    .line 105
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/widget/FrameLayout;

    .line 106
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->Height(I)V

    .line 112
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 113
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    return-void
.end method


# virtual methods
.method public AddCustomView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 244
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public ErrorOccurredWhileCreating(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurredWhileCreating"

    .line 271
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FullScreen(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 137
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 139
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 143
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v0, 0x258

    .line 145
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public GetBufferedPercentage()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public GetBufferedPosition()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetCurrentPosition()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetDuration()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetPlaybackState()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x258

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public HideController()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    return-void
.end method

.method public IdleState()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IdleState"

    .line 291
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsLoading()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public IsPlaying()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public IsPlayingChanged(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 275
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "IsPlayingChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadingChanged(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 283
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LoadingChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Mute()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public Pause()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public Play()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public PlayerError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PlayerError"

    .line 279
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SeekTo(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    return-void
.end method

.method public SetPlaybackSpeed(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 218
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    .line 219
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public SetResizeMode(I)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ExoPlayerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    return-void
.end method

.method public SetVolume(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 213
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:F

    return-void
.end method

.method public ShowController()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController()V

    return-void
.end method

.method public Stop()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    return-void
.end method

.method public Unmute()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public Url(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 129
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    return-void
.end method

.method public VideoBuffering()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoBuffering"

    .line 287
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public VideoEnded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoEnded"

    .line 299
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public VideoReadyToPlay()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoReadyToPlay"

    .line 295
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->pause()V

    return-void
.end method
