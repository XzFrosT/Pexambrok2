.class Lcom/google/appinventor/components/runtime/GameClient$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->SetInstance(Ljava/lang/String;)V
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

    .line 1022
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$21;->a:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$21;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1024
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$21;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GameClient"

    const-string v2, "Instance id set to empty string."

    .line 1025
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$21;->a:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$21;->a:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/util/GameInstance;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/GameClient;->a(Lcom/google/appinventor/components/runtime/GameClient;Lcom/google/appinventor/components/runtime/util/GameInstance;)Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 1028
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$21;->a:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceIdChanged(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$21;->a:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "SetInstance"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$21;->a:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$21;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->b(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
