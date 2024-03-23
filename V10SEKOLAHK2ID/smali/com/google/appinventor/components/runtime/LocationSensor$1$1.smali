.class Lcom/google/appinventor/components/runtime/LocationSensor$1$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/LocationSensor$1;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->a:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->a:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->c(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    .line 684
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->a:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->a:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/google/appinventor/components/runtime/LocationSensor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Permission Granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
