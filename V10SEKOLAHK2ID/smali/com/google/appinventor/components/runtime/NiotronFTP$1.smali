.class Lcom/google/appinventor/components/runtime/NiotronFTP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFTP;->Connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFTP;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFTP;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->b(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronFTP;->b(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronFTP$1$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$1$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->c(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
