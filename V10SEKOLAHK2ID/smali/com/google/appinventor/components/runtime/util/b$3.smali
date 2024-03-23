.class Lcom/google/appinventor/components/runtime/util/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;

.field final synthetic a:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lorg/osmdroid/views/overlay/Marker;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$3;->a:Lcom/google/appinventor/components/runtime/util/b;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$3;->a:Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 931
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot find default marker"

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$3;->a:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 937
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$3;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 928
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/b$3;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
