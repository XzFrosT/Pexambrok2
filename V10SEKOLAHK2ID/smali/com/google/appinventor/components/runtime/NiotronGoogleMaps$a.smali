.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:D

.field private final a:Lcom/google/android/gms/maps/model/Circle;

.field private final a:Lcom/google/android/gms/maps/model/Marker;

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

.field private b:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;Lcom/google/android/gms/maps/model/LatLng;DFII)V
    .locals 4

    .line 1584
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1585
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:D

    .line 1586
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1587
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/4 v2, 0x1

    .line 1588
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1586
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Marker;

    .line 1589
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1590
    invoke-static {p2, p3, p4}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1591
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x43520000    # 210.0f

    .line 1592
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1589
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->b:Lcom/google/android/gms/maps/model/Marker;

    .line 1594
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 1595
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1596
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1597
    invoke-virtual {p2, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1598
    invoke-virtual {p2, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1599
    invoke-virtual {p2, p7}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1594
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Circle;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;FII)V
    .locals 3

    .line 1602
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    invoke-static {p2, p3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:D

    .line 1604
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1605
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/4 v2, 0x1

    .line 1606
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1604
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Marker;

    .line 1607
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1608
    invoke-virtual {v1, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p3

    .line 1609
    invoke-virtual {p3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p3

    const/high16 v1, 0x43520000    # 210.0f

    .line 1610
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p3

    .line 1607
    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p3

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->b:Lcom/google/android/gms/maps/model/Marker;

    .line 1612
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {p3}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 1613
    invoke-virtual {p3, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:D

    .line 1614
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1615
    invoke-virtual {p2, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1616
    invoke-virtual {p2, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1617
    invoke-virtual {p2, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1612
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Circle;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FII)V
    .locals 2

    .line 1620
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1621
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:D

    .line 1622
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Marker;

    .line 1623
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->b:Lcom/google/android/gms/maps/model/Marker;

    .line 1624
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {p3}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 1625
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:D

    .line 1626
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1627
    invoke-virtual {p2, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1628
    invoke-virtual {p2, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1629
    invoke-virtual {p2, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1624
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Circle;

    return-void
.end method


# virtual methods
.method public getCenterMarker()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public getCircle()Lcom/google/android/gms/maps/model/Circle;
    .locals 1

    .line 1660
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Circle;

    return-object v0
.end method

.method public getRadius()Ljava/lang/Double;
    .locals 2

    .line 1664
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .line 1656
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->b:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 4

    .line 1633
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1635
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->b:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:D

    invoke-static {p1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    return v1

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->b:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1639
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->b:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:D

    .line 1640
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeFromMap()V
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 1648
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1649
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->b:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    return-void
.end method

.method public setRadiusMarker(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .line 1668
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->b:Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method
