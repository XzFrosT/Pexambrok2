.class Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->createPostRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 445
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://fcm.googleapis.com/fcm/send"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    .line 447
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 448
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "Authorization"

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 450
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->b:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 454
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 455
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 456
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 457
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 466
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
