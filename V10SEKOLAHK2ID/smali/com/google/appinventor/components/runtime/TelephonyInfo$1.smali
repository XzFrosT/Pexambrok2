.class Lcom/google/appinventor/components/runtime/TelephonyInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ledu/mit/media/funf/probe/Probe$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/TelephonyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/TelephonyInfo;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;->a:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCompleted(Ledu/mit/media/funf/json/IJsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    return-void
.end method

.method public onDataReceived(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 3

    const-string v0, "Telephony"

    const-string v1, "receive data of telephony info"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DATA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ledu/mit/media/funf/json/IJsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;->a:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->enabledSaveToDB:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;->a:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;->a:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/TelephonyInfo;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 109
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;->a:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/TelephonyInfo;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
