.class Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronBatteryTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronBatteryTools;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;->a:Lcom/google/appinventor/components/runtime/NiotronBatteryTools;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 73
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;->a:Lcom/google/appinventor/components/runtime/NiotronBatteryTools;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$a;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$a;-><init>(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;)V

    const-string/jumbo v1, "status"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$a;->getStatus(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->a(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;->a:Lcom/google/appinventor/components/runtime/NiotronBatteryTools;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$a;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$a;-><init>(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;)V

    const-string v1, "plugged"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$a;->getPlugged(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->b(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "level"

    .line 75
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "scale"

    .line 76
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;->a:Lcom/google/appinventor/components/runtime/NiotronBatteryTools;

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, v0

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->a(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;I)I

    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;->a:Lcom/google/appinventor/components/runtime/NiotronBatteryTools;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->a(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;I)I

    .line 82
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;->a:Lcom/google/appinventor/components/runtime/NiotronBatteryTools;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$a;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$a;-><init>(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;)V

    const-string v2, "health"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$a;->getHealth(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->c(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;->a:Lcom/google/appinventor/components/runtime/NiotronBatteryTools;

    const-string/jumbo v0, "temperature"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->a(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;F)F

    .line 84
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;->a:Lcom/google/appinventor/components/runtime/NiotronBatteryTools;

    const-string/jumbo v0, "voltage"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->b(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;I)I

    return-void
.end method
