.class Lcom/google/appinventor/components/runtime/util/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/MapView$OnTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;-><init>(Lcom/google/appinventor/components/runtime/Form;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$1;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lorg/osmdroid/views/MapView;DD)V
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$1;->a:Lcom/google/appinventor/components/runtime/util/b;

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

    .line 315
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onDoubleTap(DD)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSingleTap(Lorg/osmdroid/views/MapView;DD)V
    .locals 1

    .line 307
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$1;->a:Lcom/google/appinventor/components/runtime/util/b;

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

    .line 308
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onSingleTap(DD)V

    goto :goto_0

    :cond_0
    return-void
.end method
