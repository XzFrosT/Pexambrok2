.class Lcom/google/appinventor/components/runtime/NiotronFTP$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFTP;->DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFTP;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFTP;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 208
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 209
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v1

    .line 210
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$9$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$9$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$9$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$9$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->c(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$9$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$9$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
