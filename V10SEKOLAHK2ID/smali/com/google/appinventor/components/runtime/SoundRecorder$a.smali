.class Lcom/google/appinventor/components/runtime/SoundRecorder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/media/MediaRecorder;

.field final synthetic a:Lcom/google/appinventor/components/runtime/SoundRecorder;

.field final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p1, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v0, "3gp"

    .line 82
    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getRecordingFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Ljava/lang/String;

    .line 85
    new-instance p2, Landroid/media/MediaRecorder;

    invoke-direct {p2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 87
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 88
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting output file to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SoundRecorder"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    const-string p2, "preparing"

    .line 91
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->prepare()V

    .line 93
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 94
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SoundRecorder"

    const-string/jumbo v1, "starting"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "got IllegalStateException. Are there two recorders running?"

    .line 106
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Is there another recording running?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    return-void
.end method
