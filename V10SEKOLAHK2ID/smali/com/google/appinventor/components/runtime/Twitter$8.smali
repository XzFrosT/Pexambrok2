.class Lcom/google/appinventor/components/runtime/Twitter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->Tweet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$8;->a:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$8;->a:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->a(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$8;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 519
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$8;->a:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$8;->a:Lcom/google/appinventor/components/runtime/Twitter;

    const/16 v3, 0x132

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 520
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "Tweet"

    .line 519
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
