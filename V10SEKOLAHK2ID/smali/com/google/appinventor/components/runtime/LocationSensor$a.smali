.class Lcom/google/appinventor/components/runtime/LocationSensor$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor$a;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 12

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)Landroid/location/Location;

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->b(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;F)F

    .line 108
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->c(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->b(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->b(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->b(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v3

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v5

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->c(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v7

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)F

    move-result v9

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v11, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;

    move-object v1, v11

    move-object v2, p0

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor$a;DDDFLandroid/location/Location;)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "Disabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 137
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v0, "onProviderDisabled"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "Enabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v0, "onProviderEnabled"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string p3, "onStatusChanged"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v0, "AVAILABLE"

    invoke-virtual {p2, p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 170
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 171
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string p3, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {p2, p1, p3}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v0, "OUT_OF_SERVICE"

    invoke-virtual {p2, p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 161
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->a(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 162
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
