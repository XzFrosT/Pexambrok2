.class Lcom/google/appinventor/components/runtime/CloudDB$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic a:Ljava/lang/Object;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Exception in GetValue"

    const-string v1, "CloudDB"

    .line 754
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v2

    const/4 v3, 0x1

    .line 759
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lredis/clients/jedis/Jedis;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 764
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 765
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 772
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$6$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/CloudDB$6$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v2

    .line 787
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    return-void

    :catch_1
    move-exception v2

    .line 782
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v2}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    return-void

    .line 778
    :catch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System Error getting tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    return-void

    .line 775
    :catch_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON conversion error for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    return-void
.end method
