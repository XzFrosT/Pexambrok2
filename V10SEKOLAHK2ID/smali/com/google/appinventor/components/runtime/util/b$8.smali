.class Lcom/google/appinventor/components/runtime/util/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Lorg/osmdroid/views/overlay/Marker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/b;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 532
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create marker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 529
    check-cast p1, Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/b$8;->onSuccess(Lorg/osmdroid/views/overlay/Marker;)V

    return-void
.end method

.method public onSuccess(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 1

    .line 537
    new-instance v0, Lcom/google/appinventor/components/runtime/util/b$8$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/b$8$1;-><init>(Lcom/google/appinventor/components/runtime/util/b$8;)V

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Marker;->setOnMarkerClickListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;)V

    .line 556
    new-instance v0, Lcom/google/appinventor/components/runtime/util/b$8$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/b$8$2;-><init>(Lcom/google/appinventor/components/runtime/util/b$8;)V

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Marker;->setOnMarkerDragListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;)V

    .line 580
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Visible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/b;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$8;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/b;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    :goto_0
    return-void
.end method
