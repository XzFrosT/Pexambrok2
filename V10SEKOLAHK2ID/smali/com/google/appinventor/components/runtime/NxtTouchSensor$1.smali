.class Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtTouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 61
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Z

    if-eqz v1, :cond_3

    .line 62
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->b:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->c:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 65
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->b:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Pressed()V

    .line 68
    :cond_1
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->c:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->b(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Released()V

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->c(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->a(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
