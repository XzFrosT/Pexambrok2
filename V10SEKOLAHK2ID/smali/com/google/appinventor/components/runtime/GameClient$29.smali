.class Lcom/google/appinventor/components/runtime/GameClient$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->NewInstanceMade(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$29;->a:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$29;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New instance made: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$29;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$29;->a:Lcom/google/appinventor/components/runtime/GameClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$29;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NewInstanceMade"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
