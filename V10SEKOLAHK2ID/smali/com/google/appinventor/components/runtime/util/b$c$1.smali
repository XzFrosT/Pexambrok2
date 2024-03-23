.class Lcom/google/appinventor/components/runtime/util/b$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b$c;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b$c;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b$c;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$c$1;->a:Lcom/google/appinventor/components/runtime/util/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$c$1;->a:Lcom/google/appinventor/components/runtime/util/b$c;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$c;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 254
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/b$c$1;->a:Lcom/google/appinventor/components/runtime/util/b$c;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$c;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V

    goto :goto_0

    :cond_0
    return-void
.end method
