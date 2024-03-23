.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;Ljava/lang/String;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0x191

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 501
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->ErrorOccured(ILjava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->DataChange(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3$1;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v2, "Unable to connect with server. Check credentials and try again."

    invoke-virtual {v1, v0, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->ErrorOccured(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
