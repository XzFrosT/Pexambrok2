.class Lcom/google/appinventor/components/runtime/NiotronFTP$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFTP;->UploadFile(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 243
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 251
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 252
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v1

    .line 253
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    if-eqz v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$10$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$10$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$10$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$10$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 271
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->c(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$10;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$10$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$10$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
