.class Lcom/google/appinventor/components/runtime/NxtColorSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NxtColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 99
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Z

    if-eqz v1, :cond_7

    .line 100
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChanged(I)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I

    goto/16 :goto_1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 112
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Z

    if-eqz v1, :cond_7

    .line 114
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 115
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->b:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 117
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->d:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    goto :goto_0

    .line 119
    :cond_3
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->c:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    move-result-object v1

    if-eq v0, v1, :cond_6

    .line 123
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->b:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->b(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRange()V

    .line 126
    :cond_4
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->c:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->c(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRange()V

    .line 129
    :cond_5
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->d:Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->d(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 130
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRange()V

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Lcom/google/appinventor/components/runtime/NxtColorSensor;Lcom/google/appinventor/components/runtime/NxtColorSensor$a;)Lcom/google/appinventor/components/runtime/NxtColorSensor$a;

    .line 138
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->e(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->a:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->a(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method
