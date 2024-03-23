.class Lcom/google/appinventor/components/runtime/util/b$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b$8;->onSuccess(Lorg/osmdroid/views/overlay/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b$8;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b$8;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$8$2;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 2

    .line 559
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$8$2;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 560
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$8$2;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMarkerDragEnd(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 5

    .line 566
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    .line 567
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$8$2;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->updateLocation(DD)V

    .line 568
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$8$2;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 569
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$8$2;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMarkerDragStart(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 2

    .line 575
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$8$2;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 576
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$8$2;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method
