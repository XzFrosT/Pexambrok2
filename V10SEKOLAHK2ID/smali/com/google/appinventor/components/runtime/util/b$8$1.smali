.class Lcom/google/appinventor/components/runtime/util/b$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;


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

    .line 537
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$8$1;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 540
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$8$1;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/b;

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

    .line 541
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$8$1;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$8$1;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->EnableInfobox()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 544
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->showInfoWindow()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMarkerLongPress(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    .line 550
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$8$1;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/b;

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

    .line 551
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$8$1;->a:Lcom/google/appinventor/components/runtime/util/b$8;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {p2, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureLongPress(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
