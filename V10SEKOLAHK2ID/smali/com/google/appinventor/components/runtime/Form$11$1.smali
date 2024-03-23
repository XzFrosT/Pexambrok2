.class Lcom/google/appinventor/components/runtime/Form$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Form$11;

.field final synthetic a:Ljava/util/Iterator;

.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form$11;Ljava/util/Iterator;)V
    .locals 0

    .line 3331
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Lcom/google/appinventor/components/runtime/Form$11;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3332
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 3337
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3339
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3340
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Lcom/google/appinventor/components/runtime/Form$11;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Form$11;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    goto :goto_0

    .line 3342
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 3343
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Lcom/google/appinventor/components/runtime/Form$11;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Form$11;->a:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    goto :goto_0

    .line 3345
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Lcom/google/appinventor/components/runtime/Form$11;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Form$11;->a:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form$11$1;->a:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onDenied([Ljava/lang/String;)V

    :goto_0
    return-void
.end method
