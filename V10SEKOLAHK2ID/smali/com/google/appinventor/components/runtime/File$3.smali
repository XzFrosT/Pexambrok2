.class Lcom/google/appinventor/components/runtime/File$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->RemoveDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/File;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

.field final synthetic a:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;Z)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$3;->a:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$3;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/File$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 2

    const/4 v0, 0x0

    .line 277
    :try_start_0
    aget-object p1, p1, v0

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$3;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$3;->a:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object p1

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/File$3;->a:Z

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->removeDirectory(Ljava/io/File;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$3;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
