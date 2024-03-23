.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "AppInvWebRTC"

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lorg/json/JSONObject;

    const-string v2, "first"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->a(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 431
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lorg/json/JSONObject;

    const-string/jumbo v2, "webrtc"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 432
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lorg/json/JSONObject;

    const-string v2, "key"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->a(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->a(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->c(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z

    .line 435
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lorg/json/JSONObject;

    const-string v2, "apiversion"

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 437
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 438
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->b(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/rendezvous2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 441
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "About to send = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->a:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 444
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "sendRedezvous IOException"

    .line 446
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Exception in sendRendezvous"

    .line 449
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
