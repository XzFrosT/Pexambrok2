.class public Lcom/google/appinventor/components/runtime/Sound;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A multimedia component that plays sound files and optionally vibrates for the number of milliseconds (thousandths of a second) specified in the Blocks Editor.  The name of the sound file to play can be specified either in the Designer or in the Blocks Editor.</p> <p>For supported sound file formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>This <code>Sound</code> component is best for short sound files, such as sound effects, while the <code>Player</code> component is more efficient for longer sounds, such as songs.</p><p>You might get an error if you attempt to play a sound immeditely after setting the source.</p>"
    iconName = "images/soundEffect.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Sound$a;
    }
.end annotation


# static fields
.field private static final a:F = 1.0f

.field private static final a:I = 0xa

.field private static final b:F = 1.0f

.field private static final b:I = 0xa

.field private static final c:I = 0x32

.field private static final d:I


# instance fields
.field private a:J

.field private a:Landroid/media/SoundPool;

.field private final a:Landroid/os/Handler;

.field private final a:Landroid/os/Vibrator;

.field private final a:Lcom/google/appinventor/components/runtime/Component;

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private final b:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 130
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 115
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sound;->b:Z

    .line 123
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/os/Handler;

    .line 131
    iput-object p0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Lcom/google/appinventor/components/runtime/Component;

    .line 132
    new-instance p1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x3

    invoke-direct {p1, v2, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    .line 133
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/util/Map;

    .line 134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/os/Vibrator;

    const-string p1, ""

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    .line 136
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Z

    .line 137
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 138
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 139
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    const/16 p1, 0x1f4

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Sound;->MinimumInterval(I)V

    .line 147
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sound;->b:Z

    if-eqz p1, :cond_1

    .line 148
    new-instance p1, Lcom/google/appinventor/components/runtime/Sound$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/appinventor/components/runtime/Sound$a;-><init>(Lcom/google/appinventor/components/runtime/Sound;Lcom/google/appinventor/components/runtime/Sound$1;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Sound$a;->setOnloadCompleteListener(Landroid/media/SoundPool;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Sound;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/google/appinventor/components/runtime/Sound;->h:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Sound;)Lcom/google/appinventor/components/runtime/Component;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Lcom/google/appinventor/components/runtime/Component;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Sound;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 276
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sound;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sound not ready:  retrying.  Remaining retries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sound"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sound$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Sound$1;-><init>(Lcom/google/appinventor/components/runtime/Sound;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 277
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->b()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Sound;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Sound;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Sound;)I
    .locals 2

    .line 74
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Sound;->h:I

    return v0
.end method

.method private b()V
    .locals 7

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->e:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundPool.play returned stream id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sound"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2bf

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Play"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 397
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    if-eqz v0, :cond_0

    .line 398
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 399
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    return-void
.end method


# virtual methods
.method public MinimumInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval, in milliseconds, between sounds.  If you play a sound, all further Play() calls will be ignored until the interval has elapsed."
    .end annotation

    .line 229
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->g:I

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "500"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 243
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sound;->g:I

    return-void
.end method

.method public Pause()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playing the sound if it is being played."
    .end annotation

    .line 316
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    if-eqz v0, :cond_0

    .line 317
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_0

    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to pause. Did you remember to call the Play function?"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public Play()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Plays the sound specified by the Source property."
    .end annotation

    .line 255
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->e:I

    const-string v1, "Sound"

    if-eqz v0, :cond_2

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 257
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sound;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->g:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Unable to play because MinimumInterval has not elapsed since last play."

    .line 263
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sound;->a:J

    const/16 v0, 0xa

    .line 259
    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->h:I

    .line 260
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->a()V

    goto :goto_1

    :cond_2
    const-string v0, "Sound Id was 0. Did you remember to set the Source property?"

    .line 268
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2bf

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Play"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public Resume()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes playing the sound after a pause."
    .end annotation

    .line 328
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to resume. Did you remember to call the Play function?"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public SoundError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The SoundError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the sound file.  Only certain formats are supported.  See http://developer.android.com/guide/appendix/media-formats.html."
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const-string v0, "Source"

    if-nez p1, :cond_0

    const-string p1, ""

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    .line 182
    iget p1, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 183
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    invoke-virtual {v2, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 184
    iput v1, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    .line 186
    :cond_1
    iput v1, p0, Lcom/google/appinventor/components/runtime/Sound;->e:I

    .line 188
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_4

    .line 189
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Sound;->e:I

    goto :goto_0

    .line 194
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing sound with path "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Sound"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/16 v4, 0x2bd

    .line 196
    :try_start_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 198
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully began loading sound: setting soundId to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput v5, p0, Lcom/google/appinventor/components/runtime/Sound;->e:I

    .line 202
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Z

    goto :goto_0

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, p1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-virtual {v2, p0, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Ljava/lang/String;

    aput-object v3, p1, v1

    invoke-virtual {v2, p0, v0, v4, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 208
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops playing the sound if it is being played."
    .end annotation

    .line 340
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    goto :goto_0

    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to stop. Did you remember to call the Play function?"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public Vibrate(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Vibrates for the specified number of milliseconds."
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 393
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->c()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Sound"

    const-string v1, "Got onResume"

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Sound"

    const-string v1, "Got onStop"

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->f:I

    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->a:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    :cond_0
    return-void
.end method
