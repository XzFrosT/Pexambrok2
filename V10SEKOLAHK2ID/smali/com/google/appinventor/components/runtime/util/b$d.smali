.class Lcom/google/appinventor/components/runtime/util/b$d;
.super Lorg/osmdroid/views/overlay/Polygon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

.field private a:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1369
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1526
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1527
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 2

    .line 1385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1386
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 1565
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1566
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMultiHoles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .line 1424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    .line 1426
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polygon;->getHoles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMultiPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .line 1391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    .line 1393
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 1558
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1559
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    .line 1536
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/b$d;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1538
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mDraggable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1539
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mIsDragged:Z

    .line 1540
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/b$d;->closeInfoWindow()V

    .line 1541
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 1542
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_0

    .line 1543
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1545
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/appinventor/components/runtime/util/b$d;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 1546
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-eqz v1, :cond_2

    .line 1547
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1548
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 1548
    invoke-virtual {v2, v3, p1}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    .line 1547
    invoke-interface {v1, p0, p2, p1}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onLongClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    :cond_2
    :goto_0
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 1516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1517
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    .line 1572
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mIsDragged:Z

    if-eqz v0, :cond_3

    .line 1573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1574
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mIsDragged:Z

    .line 1575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/b$d;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1576
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz p1, :cond_0

    .line 1577
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V

    :cond_0
    return v2

    .line 1580
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1581
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/b$d;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1582
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz p1, :cond_2

    .line 1583
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDrag(Lorg/osmdroid/views/overlay/Polygon;)V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public setDraggable(Z)V
    .locals 2

    .line 1449
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1450
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Z

    .line 1451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1452
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 2

    .line 1492
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1493
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1494
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMultiHoles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1432
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1436
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1439
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1440
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1441
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1442
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    goto :goto_0

    .line 1437
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Holes and points are not of the same arity."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1433
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setMultiPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1401
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1402
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    goto :goto_0

    .line 1404
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1406
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1408
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1409
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1410
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1411
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/b$d;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1412
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/b$d;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1413
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/b$d;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1414
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/b$d;->getInfoWindow()Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1415
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Z

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1416
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1417
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1418
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V
    .locals 2

    .line 1458
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1459
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1461
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V
    .locals 2

    .line 1467
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1468
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .line 1469
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1470
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 2

    .line 1508
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1510
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    .line 1484
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1485
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1486
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    .line 1476
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1477
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1478
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 1500
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1501
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1502
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showInfoWindow()V
    .locals 2

    .line 1378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$d;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow()V

    :cond_0
    return-void
.end method
