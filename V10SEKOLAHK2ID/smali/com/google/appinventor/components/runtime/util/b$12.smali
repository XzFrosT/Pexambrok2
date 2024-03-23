.class Lcom/google/appinventor/components/runtime/util/b$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/Polygon$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/b;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 2

    .line 676
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/b;

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

    .line 677
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 19

    move-object/from16 v0, p0

    .line 683
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    if-eqz v2, :cond_2

    .line 685
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 687
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/osmdroid/util/GeoPoint;

    .line 688
    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    add-double/2addr v5, v10

    .line 689
    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    add-double/2addr v7, v9

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 692
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v3

    invoke-interface {v2, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    goto/16 :goto_2

    .line 694
    :cond_1
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    invoke-interface {v1, v3, v4, v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    goto :goto_2

    .line 696
    :cond_2
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    if-eqz v2, :cond_4

    const-wide v1, -0x3fa9800000000000L    # -90.0

    const-wide v3, -0x3f99800000000000L    # -180.0

    const-wide v5, 0x4066800000000000L    # 180.0

    const-wide v7, 0x4056800000000000L    # 90.0

    .line 698
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v11, v1

    move-wide v13, v5

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 699
    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    .line 700
    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    .line 701
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 702
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 703
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 704
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    goto :goto_1

    .line 706
    :cond_3
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object v10, v1

    check-cast v10, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    move-wide v15, v7

    move-wide/from16 v17, v3

    invoke-interface/range {v10 .. v18}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->updateBounds(DDDD)V

    goto :goto_2

    .line 708
    :cond_4
    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/b$d;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/b$d;->getMultiPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updatePoints(Ljava/util/List;)V

    .line 709
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/b$d;->getMultiHoles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updateHolePoints(Ljava/util/List;)V

    .line 711
    :goto_2
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 712
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 2

    .line 669
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/b;

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

    .line 670
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$12;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method
