.class public Lcom/google/appinventor/components/runtime/File;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component for storing and retrieving files. Use this component to write or read files on your device. The default behaviour is to write files to the private data directory associated with your App. The Companion is special cased to write files to a public directory for debugging. Use the More information link to read more about how the File component uses paths and scopes to manage access to files."
    iconName = "images/file.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FileComponent"


# instance fields
.field private a:Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 118
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 111
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->a:Lcom/google/appinventor/components/common/FileScope;

    .line 119
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/File;->DefaultScope(Lcom/google/appinventor/components/common/FileScope;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13

    move-object v11, p0

    move-object v10, p1

    const-string v0, "//"

    .line 646
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, v11, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x83a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    move-object v4, p2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v4, p2

    const-string v0, "/"

    .line 651
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 655
    :cond_1
    :try_start_0
    new-instance v12, Lcom/google/appinventor/components/runtime/File$2;

    iget-object v2, v11, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, v11, Lcom/google/appinventor/components/runtime/File;->a:Lcom/google/appinventor/components/common/FileScope;

    const/4 v8, 0x1

    move-object v0, v12

    move-object v1, p0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move/from16 v7, p4

    move-object/from16 v9, p3

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/appinventor/components/runtime/File$2;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/File$2;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public AfterFileSaved(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents of the file have been written."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterFileSaved"

    .line 720
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AppendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Appends text to the end of a file storage, creating the file if it does not exist. See the help text under SaveFile for information about where files are written."
    .end annotation

    const-string v0, "AppendToFile"

    const/4 v1, 0x1

    .line 545
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/google/appinventor/components/runtime/File;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public CopyFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 379
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "CopyFile"

    if-eq p3, v0, :cond_0

    .line 386
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 387
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3, p0, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 388
    invoke-virtual {v2, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 389
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$6;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$6;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 390
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 418
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 419
    invoke-static {v0, p5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void

    .line 380
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x83a

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 382
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw p1
.end method

.method public DefaultScope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App"
        editorType = "file_scope"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->a:Lcom/google/appinventor/components/common/FileScope;

    return-void
.end method

.method public Delete(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes a file from storage. Prefix the filename with / to delete a specific file in the SD card, for instance /myFile.txt. will delete the file /sdcard/myFile.txt. If the file does not begin with a /, then the file located in the programs private storage will be deleted. Starting the file with // is an error because assets files cannot be deleted."
    .end annotation

    const-string v0, "//"

    .line 614
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x839

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Delete"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 620
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$10;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v7, "Delete"

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/File;->a:Lcom/google/appinventor/components/common/FileScope;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v3, v0

    move-object v4, p0

    move-object v6, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/appinventor/components/runtime/File$10;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    .line 631
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$10;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public Exists(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 476
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 477
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Exists"

    invoke-direct {v1, v2, p0, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 478
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$8;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$8;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 479
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 484
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 485
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public GotText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents from the file have been read."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotText"

    .line 709
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "IsDirectory"

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 341
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v3, "FileComponent"

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contents of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 343
    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 345
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x83e

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {p1, p0, v1, p3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 351
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 352
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3, p0, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 353
    invoke-virtual {v2, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$5;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$5;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 354
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 361
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public LegacyMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 139
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->a:Lcom/google/appinventor/components/common/FileScope;

    return-void
.end method

.method public LegacyMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows app to access files from the root of the external storage directory (legacy mode)."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->a:Lcom/google/appinventor/components/common/FileScope;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ListDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "ListDirectory"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v3, p1, p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->listDirectory(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x840

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-virtual {p1, p0, v1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "/"

    .line 307
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 310
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 311
    new-instance v3, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v3, v4, p0, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->setAskPermission(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    .line 313
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->setAsynchronous(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 314
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$4;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$4;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 315
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 326
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public MakeDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v0, :cond_0

    .line 215
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x83c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "MakeDirectory"

    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 219
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$1;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v8, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const/4 v9, 0x0

    const-string v5, "MakeDirectory"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p1

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/File$1;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;ZLcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 249
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$1;->run()V

    return-void
.end method

.method public MakeFullPath(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public MoveFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 441
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MoveFile"

    if-ne p1, v0, :cond_0

    .line 442
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x839

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v1

    invoke-virtual {p1, p0, v3, p3, p4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 446
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p3, v0, :cond_1

    .line 447
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x83a

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p4, p3, v1

    invoke-virtual {p1, p0, v3, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 453
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 454
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v1, v2, p0, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 455
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 456
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$7;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$7;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 457
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 462
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 463
    invoke-static {v0, p5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public ReadFrom(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads text from a file in storage. Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion."
    .end annotation

    .line 567
    :try_start_0
    new-instance v8, Lcom/google/appinventor/components/runtime/File$9;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "ReadFrom"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File;->a:Lcom/google/appinventor/components/common/FileScope;

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/File$9;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V

    .line 592
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/File$9;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ReadPermission(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    return-void
.end method

.method public RemoveDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "RemoveDirectory"

    if-ne p1, v0, :cond_0

    .line 265
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x841

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    invoke-virtual {p1, p0, v1, p3, p4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 270
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 271
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3, p0, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 272
    invoke-virtual {v2, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$3;

    invoke-direct {p2, p0, v0, p3}, Lcom/google/appinventor/components/runtime/File$3;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;Z)V

    .line 273
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 284
    invoke-static {v0, p4}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public SaveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves text to a file. If the filename begins with a slash (/) the file is written to the sdcard. For example writing to /myFile.txt will write the file to /sdcard/myFile.txt. If the filename does not start with a slash, it will be written in the programs private data directory where it will not be accessible to other programs on the phone. There is a special exception for the AI Companion where these files are written to /sdcard/AppInventor/data to facilitate debugging. Note that this block will overwrite a file if it already exists.\n\nIf you want to add content to a file use the append block."
    .end annotation

    const-string v0, "SaveFile"

    const/4 v1, 0x0

    .line 527
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/google/appinventor/components/runtime/File;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public Scope()Lcom/google/appinventor/components/common/FileScope;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->a:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public Scope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->a:Lcom/google/appinventor/components/common/FileScope;

    return-void
.end method

.method public WritePermission(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    return-void
.end method
