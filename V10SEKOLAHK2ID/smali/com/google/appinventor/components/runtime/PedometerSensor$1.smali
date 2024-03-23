.class Lcom/google/appinventor/components/runtime/PedometerSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ledu/mit/media/funf/probe/Probe$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PedometerSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/PedometerSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PedometerSensor;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->a:Lcom/google/appinventor/components/runtime/PedometerSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCompleted(Ledu/mit/media/funf/json/IJsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->a:Lcom/google/appinventor/components/runtime/PedometerSensor;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/PedometerSensor;->PedometerScanComplete()V

    return-void
.end method

.method public onDataReceived(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 4

    const-string v0, "PedometerSensor"

    const-string v1, "receive pedometer data"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timestamp"

    invoke-virtual {p2, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rawVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rawValue"

    invoke-virtual {p2, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->a:Lcom/google/appinventor/components/runtime/PedometerSensor;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/PedometerSensor;->enabledSaveToDB:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->a:Lcom/google/appinventor/components/runtime/PedometerSensor;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/PedometerSensor;->saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->a:Lcom/google/appinventor/components/runtime/PedometerSensor;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/PedometerSensor;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 78
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->a:Lcom/google/appinventor/components/runtime/PedometerSensor;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/PedometerSensor;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
