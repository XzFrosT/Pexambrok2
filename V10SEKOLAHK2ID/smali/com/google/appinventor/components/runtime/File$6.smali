.class Lcom/google/appinventor/components/runtime/File$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->CopyFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/File;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 11

    const-string v0, "FileComponent"

    const/4 v1, 0x1

    .line 395
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 396
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "CopyFile"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/File;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/File;

    const/16 v3, 0x83c

    new-array v1, v1, [Ljava/lang/Object;

    .line 398
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 397
    invoke-virtual {p1, v0, v4, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 399
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 403
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    aget-object v6, p1, v5

    invoke-static {v3, v6}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForReading(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 404
    :try_start_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/File;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    aget-object v7, p1, v1

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForWriting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/OutputStream;

    move-result-object v2

    .line 405
    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 414
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 416
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_1

    :catch_1
    move-exception v6

    move-object v3, v2

    :goto_0
    :try_start_2
    const-string v7, "Unable to copy file"

    .line 407
    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/File;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/File;

    const/16 v9, 0x642

    new-array v1, v1, [Ljava/lang/Object;

    aget-object p1, p1, v5

    .line 409
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    .line 408
    invoke-virtual {v7, v8, v4, v9, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 410
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$6;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {p1, v6}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 413
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 414
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p1

    .line 413
    :goto_1
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 414
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 415
    throw p1
.end method
