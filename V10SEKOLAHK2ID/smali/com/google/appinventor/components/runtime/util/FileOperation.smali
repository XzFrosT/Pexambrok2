.class public abstract Lcom/google/appinventor/components/runtime/util/FileOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;,
        Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected volatile askedForPermission:Z

.field protected final async:Z

.field protected final component:Lcom/google/appinventor/components/runtime/Component;

.field protected final form:Lcom/google/appinventor/components/runtime/Form;

.field protected volatile hasPermission:Z

.field protected final method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 41
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 45
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 46
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    .line 47
    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->async:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 145
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 146
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    return-void
.end method

.method public abstract getPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract needsExternalStorage()Z
.end method

.method protected abstract needsPermission()Z
.end method

.method protected abstract performOperation()V
.end method

.method protected varargs reportError(I[Ljava/lang/Object;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$2;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 6

    .line 79
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->a()Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->isUiThread()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 83
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->needsExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 87
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    if-nez v1, :cond_2

    .line 88
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 92
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/FileOperation$1;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    .line 93
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 104
    :goto_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v0

    .line 105
    :cond_2
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->async:Z

    if-eqz v0, :cond_3

    .line 106
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->performOperation()V

    :goto_1
    return-void

    .line 114
    :cond_4
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 116
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->async:Z

    if-eqz v0, :cond_5

    .line 117
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->performOperation()V

    goto :goto_2

    .line 121
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 124
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 125
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->performOperation()V

    :goto_2
    return-void
.end method
