.class Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;

.field final synthetic a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$1;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$1;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$1;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "ERROR"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$1;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    const-string v1, "Failed to get files. Invalid Folder ID"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$1;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->GotFolder(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2$1;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    const-string v1, "Server error occured. Try again"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
