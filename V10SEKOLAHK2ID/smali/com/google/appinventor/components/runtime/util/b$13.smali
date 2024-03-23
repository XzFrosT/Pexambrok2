.class Lcom/google/appinventor/components/runtime/util/b$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;->updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$13;->a:Lcom/google/appinventor/components/runtime/util/b;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$13;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 3

    .line 814
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$13;->a:Lcom/google/appinventor/components/runtime/util/b;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$13;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/b$13$1;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/util/b$13$1;-><init>(Lcom/google/appinventor/components/runtime/util/b$13;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$13;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 836
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$13;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 0

    return-void
.end method
