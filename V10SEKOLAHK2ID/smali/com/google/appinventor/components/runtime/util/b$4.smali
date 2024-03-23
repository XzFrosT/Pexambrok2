.class Lcom/google/appinventor/components/runtime/util/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;->c(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$4;->a:Lcom/google/appinventor/components/runtime/util/b;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/b$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/b$4;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 1007
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$4;->a:Lcom/google/appinventor/components/runtime/util/b;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b$4;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$4;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->FillOpacity()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1013
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b$4;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1004
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/b$4;->onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
