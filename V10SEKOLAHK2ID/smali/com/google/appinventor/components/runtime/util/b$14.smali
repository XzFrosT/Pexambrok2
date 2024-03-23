.class Lcom/google/appinventor/components/runtime/util/b$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/b;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 3

    .line 851
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/b;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/b$14$1;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/util/b$14$1;-><init>(Lcom/google/appinventor/components/runtime/util/b$14;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 2

    .line 876
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 877
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 878
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 879
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 880
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 2

    .line 867
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 868
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 869
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 870
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 871
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$14;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method
