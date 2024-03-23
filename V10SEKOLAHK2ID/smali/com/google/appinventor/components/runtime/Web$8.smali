.class Lcom/google/appinventor/components/runtime/Web$8;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Web$b;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/util/List;

.field final synthetic a:[B

.field final synthetic b:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$8;->b:Lcom/google/appinventor/components/runtime/Web;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$8;->a:Ljava/util/List;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/Web$8;->a:Lcom/google/appinventor/components/runtime/Web;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/Web$8;->a:Lcom/google/appinventor/components/runtime/Web$b;

    iput-object p8, p0, Lcom/google/appinventor/components/runtime/Web$8;->a:[B

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/Web$8;->a:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/appinventor/components/runtime/Web$8;->b:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/appinventor/components/runtime/Web$8;->c:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 3

    .line 1169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8;->a:Ljava/util/List;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8;->a:Lcom/google/appinventor/components/runtime/Web;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;Z)Z

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8;->a:Ljava/util/List;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8;->a:Lcom/google/appinventor/components/runtime/Web;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->b(Lcom/google/appinventor/components/runtime/Web;Z)Z

    .line 1177
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$8$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Web$8$1;-><init>(Lcom/google/appinventor/components/runtime/Web$8;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method
