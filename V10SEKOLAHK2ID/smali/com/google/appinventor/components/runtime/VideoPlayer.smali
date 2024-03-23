.class public final Lcom/google/appinventor/components/runtime/VideoPlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A multimedia component capable of playing videos. When the application is run, the VideoPlayer will be displayed as a rectangle on-screen.  If the user touches the rectangle, controls will appear to play/pause, skip ahead, and skip backward within the video.  The application can also control behavior by calling the <code>Start</code>, <code>Pause</code>, and <code>SeekTo</code> methods.  <p>Video files should be in 3GPP (.3gp) or MPEG-4 (.mp4) formats.  For more details about legal formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>App Inventor for Android only permits video files under 1 MB and limits the total size of an application to 5 MB, not all of which is available for media (video, audio, and sound) files.  If your media files are too large, you may get errors when packaging or installing your application, in which case you should reduce the number of media files or their sizes.  Most video editing software, such as Windows Movie Maker and Apple iMovie, can help you decrease the size of videos by shortening them or re-encoding the video into a more compact format.</p><p>You can also set the media source to a URL that points to a streaming video, but the URL must point to the video file itself, not to a program that plays the video."
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/VideoPlayer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private final a:Landroid/os/Handler;

.field private final a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 153
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    .line 139
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->b:Z

    .line 141
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->c:Z

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Landroid/os/Handler;

    .line 154
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 155
    new-instance v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 156
    new-instance v1, Landroid/widget/MediaController;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMediaController(Landroid/widget/MediaController;)V

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 162
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/16 v0, 0xb0

    .line 164
    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const/16 v0, 0x90

    .line 166
    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 170
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    const-string p1, ""

    .line 172
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->stopPlayback()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setVideoURI(Landroid/net/Uri;)V

    .line 454
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->clearAnimation()V

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->c:Z

    .line 457
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->b:Z

    .line 459
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    if-eqz v1, :cond_1

    .line 460
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "FullScreenKey"

    .line 461
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v2, 0xc3

    invoke-virtual {v0, v2, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    :cond_1
    return-void
.end method


# virtual methods
.method public Completed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Completed"

    .line 390
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FullScreen(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 542
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 543
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v1, 0x517

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "FullScreen(true)"

    invoke-virtual {p1, p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 548
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    if-eq p1, v1, :cond_4

    const-string v1, ""

    const-string v2, "FullScreen"

    const-string v3, "ActionSuccess"

    const/16 v4, 0xc3

    const-string v5, "FullScreenKey"

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    .line 550
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 551
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 552
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getCurrentPosition()I

    move-result v7

    const-string v8, "PositionKey"

    .line 551
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 554
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result v7

    const-string v8, "PlayingKey"

    .line 553
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 555
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->pause()V

    .line 556
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 557
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Ljava/lang/String;

    const-string v7, "SourceKey"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5, v4, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    .line 560
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 561
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    goto :goto_0

    .line 563
    :cond_1
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    .line 564
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v3, 0x515

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-virtual {p1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 568
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 569
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 570
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5, v4, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    .line 573
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 574
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    goto :goto_0

    .line 576
    :cond_3
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    .line 577
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v3, 0x516

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-virtual {p1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public FullScreen()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 528
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    return v0
.end method

.method public GetDuration()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns duration of the video in milliseconds."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling GetDuration"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xc4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ActionSuccess"

    .line 368
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ActionData"

    .line 369
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getDuration()I

    move-result v0

    return v0
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 503
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 515
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 518
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v1, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->changeVideoSize(II)V

    return-void
.end method

.method public Pause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playback of the video.  Playback can be resumed at the same location by calling the <code>Start</code> method."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling Pause"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v2, 0xc0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 323
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->c:Z

    goto :goto_0

    .line 325
    :cond_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->c:Z

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->pause()V

    :goto_0
    return-void
.end method

.method public SeekTo(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Seeks to the requested time (specified in milliseconds) in the video. If the video is paused, the frame shown will not be updated by the seek. The player can jump only to key frames in the video, so seeking to times that differ by short intervals may not actually move to different frames."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling SeekTo"

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xbe

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 353
    invoke-virtual {v0, v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->seekTo(I)V

    :goto_0
    return-void
.end method

.method public Source(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The \"path\" to the video.  Usually, this will be the name of the video file, which should be added in the Designer."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    const-string v0, "Source"

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 201
    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/VideoPlayer$1;

    invoke-direct {v0, p0, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 215
    :cond_1
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    if-eqz v2, :cond_2

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v1

    .line 219
    :cond_3
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Ljava/lang/String;

    .line 224
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->invalidateMediaPlayer(Z)V

    .line 227
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 228
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->stopPlayback()V

    .line 230
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setVideoURI(Landroid/net/Uri;)V

    .line 231
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->clearAnimation()V

    .line 233
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source path is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "VideoPlayer"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 237
    :try_start_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->b:Z

    .line 238
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "loading video succeeded"

    .line 248
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/16 v3, 0x2bd

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Ljava/lang/String;

    aput-object v4, v1, p1

    invoke-virtual {v2, p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception p1

    .line 240
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public Start()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts playback of the video."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling Start"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xbf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    goto :goto_0

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->b:Z

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->c:Z

    :goto_0
    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets to start of video and pauses it if video was playing."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling Stop"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    .line 339
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Pause()V

    return-void
.end method

.method public VideoPlayerError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The VideoPlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public Volume(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume to a number between 0 and 100. Values less than 0 will be treated as 0, and values greater than 100 will be treated as 100."
    .end annotation

    const/4 v0, 0x0

    .line 294
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x64

    .line 295
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    .line 297
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 476
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 488
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 491
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v1, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->changeVideoSize(II)V

    return-void
.end method

.method public delayedStart()V
    .locals 1

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->c:Z

    .line 308
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    return-void
.end method

.method public fullScreenKilled(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 591
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Z

    const-string v1, "SourceKey"

    .line 592
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 594
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Source(Ljava/lang/String;)V

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->requestLayout()V

    const-string v0, "PositionKey"

    .line 598
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    const-string v0, "PlayingKey"

    .line 599
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    :cond_1
    return-void
.end method

.method public getPassedHeight()I
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->b:I

    return v0
.end method

.method public getPassedWidth()I
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->a:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 382
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->a()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 405
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->invalidateMediaPlayer(Z)V

    const/4 p1, 0x0

    .line 407
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->c:Z

    .line 408
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->b:Z

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: what is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", extra is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VideoPlayer"

    .line 410
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Ljava/lang/String;

    aput-object v1, p3, p1

    const-string p1, "Source"

    const/16 v1, 0x2bd

    invoke-virtual {p2, p0, p1, v1, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->b:Z

    const/4 v1, 0x0

    .line 421
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->c:Z

    .line 422
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Landroid/media/MediaPlayer;

    .line 423
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMediaPlayer(Landroid/media/MediaPlayer;Z)V

    .line 424
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->c:Z

    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    :cond_0
    return-void
.end method
