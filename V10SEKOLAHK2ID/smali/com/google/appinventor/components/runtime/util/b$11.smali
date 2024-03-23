.class Lcom/google/appinventor/components/runtime/util/b$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/Polygon$OnClickListener;


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

    .line 646
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$11;->a:Lcom/google/appinventor/components/runtime/util/b;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$11;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 2

    .line 657
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$11;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 658
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$11;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 660
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$11;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->EnableInfobox()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 661
    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onLongClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 0

    .line 649
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$11;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 650
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/b$11;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {p2, p3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureLongPress(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
