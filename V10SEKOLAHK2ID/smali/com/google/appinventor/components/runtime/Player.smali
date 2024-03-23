.class public final Lcom/google/appinventor/components/runtime/Player;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Multimedia component that plays audio and controls phone vibration.  The name of a multimedia field is specified in the <code>Source</code> property, which can be set in the Designer or in the Blocks Editor.  The length of time for a vibration is specified in the Blocks Editor in milliseconds (thousandths of a second).\n<p>For supported audio formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p>\n<p>This component is best for long sound files, such as songs, while the <code>Sound</code> component is more efficient for short files, such as sound effects.</p>"
    iconName = "images/player.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Player$State;
    }
.end annotation


# static fields
.field private static final d:Z


# instance fields
.field private final a:Landroid/app/Activity;

.field private a:Landroid/media/AudioManager;

.field private a:Landroid/media/MediaPlayer;

.field private final a:Landroid/os/Vibrator;

.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z

.field private c:Z

.field public playerState:Lcom/google/appinventor/components/runtime/Player$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 103
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Player;->d:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Player;->d:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 133
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 134
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/app/Activity;

    const-string p1, ""

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/os/Vibrator;

    .line 137
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 138
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 139
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Z

    .line 144
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Player;->b:Z

    .line 145
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Player;->c:Z

    .line 146
    sget-boolean p1, Lcom/google/appinventor/components/runtime/Player;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->setAudioManager(Landroid/app/Activity;)Landroid/media/AudioManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/AudioManager;

    .line 147
    sget-boolean p1, Lcom/google/appinventor/components/runtime/Player;->d:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->setAudioFocusChangeListener(Lcom/google/appinventor/components/runtime/Player;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->focusRequestGranted(Landroid/media/AudioManager;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->c:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2c5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Source"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->abandonFocus(Landroid/media/AudioManager;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->c:Z

    return-void
.end method

.method private c()V
    .locals 5

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 446
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    .line 450
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2be

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Source"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 525
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->c:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->b()V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    .line 529
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 531
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 532
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 534
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method


# virtual methods
.method public Completed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 468
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->c:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->b()V

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Completed"

    .line 472
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetCurrentPosition()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 383
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public GetDuration()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 377
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public IsPlaying()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether the media is playing"
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 250
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public Loop(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 283
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Z

    return-void
.end method

.method public Loop()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, the player will loop when it plays. Setting Loop while the player is playing will affect the current playing."
    .end annotation

    .line 263
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Z

    return v0
.end method

.method public OtherPlayerStarted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is signaled when another player has started (and the current player is playing or paused, but not stopped)."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OtherPlayerStarted"

    .line 482
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Pause()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v2, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v1, v2, :cond_1

    .line 360
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    if-eqz v0, :cond_1

    .line 362
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    :cond_1
    return-void
.end method

.method public PlayOnlyInForeground(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 332
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Player;->b:Z

    return-void
.end method

.method public PlayOnlyInForeground()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, the player will pause playing when leaving the current screen; if false (default option), the player continues playing whenever the current screen is displaying or not."
    .end annotation

    .line 317
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->b:Z

    return v0
.end method

.method public PlayerError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The PlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public SeekTo(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    const-string v0, "Source"

    if-nez p1, :cond_0

    const-string p1, ""

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 175
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Player$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Player$1;-><init>(Lcom/google/appinventor/components/runtime/Player;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 189
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne p1, v1, :cond_3

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 194
    sget-object p1, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 196
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 197
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 198
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 202
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    .line 203
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 206
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 222
    sget-boolean p1, Lcom/google/appinventor/components/runtime/Player;->d:Z

    if-eqz p1, :cond_5

    .line 223
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->a()V

    .line 226
    :cond_5
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->c()V

    goto :goto_0

    .line 214
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 215
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    .line 216
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2bd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception p1

    .line 209
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 210
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    .line 211
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public Start()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 341
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->c:Z

    if-nez v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->a()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_2

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->a:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 347
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    :cond_2
    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 404
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->c:Z

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->b()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_2

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 409
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->c()V

    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_2
    return-void
.end method

.method public Vibrate(J)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public Volume(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume to a number between 0 and 100"
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_3

    :cond_0
    const/16 v0, 0x64

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_1

    .line 299
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2c8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Volume"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 459
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->Completed()V

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 520
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 514
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->d()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->pause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 488
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->Start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->pause()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_1

    .line 393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 394
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    :cond_1
    return-void
.end method
