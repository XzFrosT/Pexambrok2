.class Lcom/google/appinventor/components/runtime/Form$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
    .locals 0

    .line 3327
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11;->a:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$11;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$11;->a:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$11;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3331
    new-instance v1, Lcom/google/appinventor/components/runtime/Form$11$1;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Form$11$1;-><init>(Lcom/google/appinventor/components/runtime/Form$11;Ljava/util/Iterator;)V

    .line 3350
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$11;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method
