.class Lcom/google/appinventor/components/runtime/util/b$b;
.super Lorg/osmdroid/views/MapView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Landroid/content/Context;)V
    .locals 2

    .line 266
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$b;->a:Lcom/google/appinventor/components/runtime/util/b;

    .line 267
    new-instance v0, Lcom/google/appinventor/components/runtime/util/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/b$c;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/b$1;)V

    invoke-direct {p0, p2, v1, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onDetach()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/b$b;->getScrollX()I

    move-result v0

    sub-int v1, p3, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/b$b;->getScrollY()I

    move-result v1

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/b$b;->scrollTo(II)V

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/MapView;->onSizeChanged(IIII)V

    return-void
.end method
