.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GetCell(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->a:Ljava/lang/String;

    .line 708
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 711
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 713
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 714
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 717
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 742
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
