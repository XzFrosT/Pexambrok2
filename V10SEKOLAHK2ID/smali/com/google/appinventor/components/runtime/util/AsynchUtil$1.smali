.class final Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1$1;-><init>(Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
