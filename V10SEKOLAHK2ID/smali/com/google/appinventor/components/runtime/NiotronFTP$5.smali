.class Lcom/google/appinventor/components/runtime/NiotronFTP$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFTP;->Login()V
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

    .line 115
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->d(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronFTP;->e(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->f(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->f(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$5$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$5$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$5$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$5$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->c(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$5$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$5$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
