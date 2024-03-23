.class Lcom/google/appinventor/components/runtime/Web$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Web$b;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$b;Ljava/lang/String;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Web$7;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Lcom/google/appinventor/components/runtime/Web$b;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/Web$7;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 752
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->b:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v0

    .line 762
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Lcom/google/appinventor/components/runtime/Web$b;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$7;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$7;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 757
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Lcom/google/appinventor/components/runtime/Web;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$7;->c:Ljava/lang/String;

    const/16 v3, 0x44e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$7;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
