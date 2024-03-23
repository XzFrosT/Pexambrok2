.class Lcom/google/appinventor/components/runtime/util/b$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/Polyline$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$10;->a:Lcom/google/appinventor/components/runtime/util/b;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$10;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 2

    .line 624
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$10;->a:Lcom/google/appinventor/components/runtime/util/b;

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

    .line 625
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$10;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragEnd(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$10;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->updatePoints(Ljava/util/List;)V

    .line 632
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$10;->a:Lcom/google/appinventor/components/runtime/util/b;

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

    .line 633
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$10;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragStart(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 2

    .line 617
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$10;->a:Lcom/google/appinventor/components/runtime/util/b;

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

    .line 618
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$10;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method
