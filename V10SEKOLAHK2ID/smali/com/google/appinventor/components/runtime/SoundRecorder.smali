.class public final Lcom/google/appinventor/components/runtime/SoundRecorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that records audio.</p>"
    iconName = "images/soundRecorder.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SoundRecorder$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SoundRecorder"


# instance fields
.field private a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 129
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, ""

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/SoundRecorder;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Z

    return p1
.end method


# virtual methods
.method public AfterSoundRecorded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Provides the location of the newly created sound."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterSoundRecorded"

    .line 318
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialize()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Z

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Z

    :cond_0
    return-void
.end method

.method public SavedRecording()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path to the file where the recording should be stored. If this property is the empty string, then starting a recording will create a file in an appropriate location.  If the property is not the empty string, it should specify a complete path to a file in an existing directory, including a file name with the extension .3gp."
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public SavedRecording(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->b:Ljava/lang/String;

    return-void
.end method

.method public Start()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.RECORD_AUDIO"

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    aput-object v1, v0, v3

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/SoundRecorder$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/google/appinventor/components/runtime/SoundRecorder$1;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/SoundRecorder;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    const-string v4, "SoundRecorder"

    if-eqz v1, :cond_2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start() called, but already recording to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, "Start() called"

    .line 208
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Start"

    if-eqz v0, :cond_3

    .line 210
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mounted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x2c1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/16 v0, 0x322

    .line 216
    :try_start_0
    new-instance v4, Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->b:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    :try_start_1
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StartedRecording()V

    return-void

    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    .line 231
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 232
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v2, [Ljava/lang/Object;

    .line 233
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 232
    invoke-virtual {v5, p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v4

    .line 221
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v2, [Ljava/lang/Object;

    .line 222
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 221
    invoke-virtual {v5, p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 218
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void
.end method

.method public StartedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has started, and can be stopped."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StartedRecording"

    .line 323
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Stop()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    const-string v1, "SoundRecorder"

    if-nez v0, :cond_0

    const-string v0, "Stop() called, but already stopped."

    .line 299
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "Stop() called"

    .line 303
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "stopping"

    .line 304
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->b()V

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing AfterSoundRecorded with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/SoundRecorder;->AfterSoundRecorded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Stop"

    const/16 v3, 0x321

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    :catchall_1
    move-exception v1

    .line 311
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 313
    throw v1
.end method

.method public StoppedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has stopped, and can be started again."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StoppedRecording"

    .line 328
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 241
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    const-string p3, "SoundRecorder"

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    if-eq p1, p2, :cond_0

    goto :goto_2

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x321

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onError"

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 247
    :try_start_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 249
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p2

    .line 251
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 253
    throw p2

    :cond_1
    :goto_2
    const-string p1, "onError called with wrong recorder. Ignoring."

    .line 242
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    .line 258
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    const-string v0, "SoundRecorder"

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    if-eq p1, p3, :cond_0

    goto :goto_4

    :cond_0
    const/4 p1, 0x1

    const/16 p3, 0x321

    const-string v1, "recording"

    const/4 v2, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x320

    if-eq p2, p1, :cond_2

    if-eq p2, p3, :cond_1

    return-void

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x325

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x324

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p3, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    :try_start_0
    const-string p2, "Recoverable condition while recording. Will attempt to stop normally."

    .line 281
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->a:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :goto_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_1
    const-string p3, "SoundRecorder was not in a recording state."

    .line 284
    invoke-static {v0, p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string p3, "Stop"

    const/16 v0, 0x323

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p3, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 288
    :goto_3
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->a:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 290
    throw p2

    :cond_4
    :goto_4
    const-string p1, "onInfo called with wrong recorder. Ignoring."

    .line 259
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
