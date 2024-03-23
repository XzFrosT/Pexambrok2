.class Lcom/google/appinventor/components/runtime/util/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/location/Location;

.field private a:Lcom/google/appinventor/components/runtime/LocationSensor;

.field private a:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/b$1;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Landroid/location/Location;

    return-object v0
.end method

.method public onDistanceIntervalChanged(I)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 167
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Landroid/location/Location;

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onTimeIntervalChanged(I)V
    .locals 0

    return-void
.end method

.method public setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz p1, :cond_2

    .line 153
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Z

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    :cond_2
    return-void
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .locals 1

    .line 187
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 188
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 190
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Z

    .line 192
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Z

    return p1
.end method

.method public stopLocationProvider()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 200
    :cond_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/b$a;->a:Z

    return-void
.end method
