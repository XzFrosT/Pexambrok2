.class Lcom/google/appinventor/components/runtime/File$2;
.super Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/File;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 655
    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$2;->a:Lcom/google/appinventor/components/runtime/File;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$2;->a:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$2;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .locals 5

    .line 691
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->onError(Ljava/io/IOException;)V

    .line 692
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$2;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$2;->a:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$2;->method:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 693
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$2;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x838

    .line 692
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public process(Ljava/io/OutputStreamWriter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 680
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$2;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/File$2$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/File$2$1;-><init>(Lcom/google/appinventor/components/runtime/File$2;)V

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 6

    .line 658
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$2;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 662
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->mkdirs(Ljava/io/File;)V

    .line 663
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileComponent"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    .line 668
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$2;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->a:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->method:Ljava/lang/String;

    const/16 v4, 0x837

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 669
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 668
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 673
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V

    return-void
.end method
