.class Lcom/google/appinventor/components/runtime/NiotronFTP$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFTP;->Rename(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 315
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$2;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$2;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$2;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$2$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$2$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$2;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$2$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$2$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$2;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFTP;->a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$2$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$2$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
