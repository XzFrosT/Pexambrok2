.class Lcom/google/appinventor/components/runtime/Twitter$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Twitter$12;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$12;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->a:Lcom/google/appinventor/components/runtime/Twitter$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 783
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->a:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$12;->a:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->c(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 784
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->a:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$12;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/DirectMessage;

    .line 785
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->a:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$12;->a:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->c(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ltwitter4j/DirectMessage;->getSenderScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-interface {v1}, Ltwitter4j/DirectMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->a:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$12;->a:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->a:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter$12;->a:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->c(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Twitter;->DirectMessagesReceived(Ljava/util/List;)V

    return-void
.end method
