.class Lcom/google/appinventor/components/runtime/LocationSensor$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor$a;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic a:F

.field final synthetic a:Landroid/location/Location;

.field final synthetic a:Lcom/google/appinventor/components/runtime/LocationSensor$a;

.field final synthetic b:D

.field final synthetic c:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor$a;DDDFLandroid/location/Location;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->a:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->a:D

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->b:D

    iput-wide p6, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->c:D

    iput p8, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->a:F

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->a:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->a:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->b:D

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->c:D

    iget v8, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->a:F

    invoke-virtual/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/LocationSensor;->LocationChanged(DDDF)V

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->a:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 126
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->a:Landroid/location/Location;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    return-void
.end method
