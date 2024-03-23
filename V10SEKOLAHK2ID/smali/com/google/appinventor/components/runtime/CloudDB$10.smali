.class Lcom/google/appinventor/components/runtime/CloudDB$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->ClearTag(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$10;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$10;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$10;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$10;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->del(Ljava/lang/String;)Ljava/lang/Long;

    .line 1022
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$10;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$10;->a:Ljava/lang/String;

    const-string v2, "ClearTag"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->UpdateDone(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1024
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$10;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$10;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    :goto_0
    return-void
.end method
