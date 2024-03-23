.class Lcom/google/appinventor/components/runtime/BluetoothServer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/BluetoothServer;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->a:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->a:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/BluetoothServer;->a(Lcom/google/appinventor/components/runtime/BluetoothServer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->accept(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->a:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 128
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->a:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/BluetoothServer;->a(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->a:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    return-void

    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->a:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    .line 138
    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->a:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->a(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
