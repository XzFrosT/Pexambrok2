.class Lcom/google/appinventor/components/runtime/Map$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Map;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$6;->a:Lcom/google/appinventor/components/runtime/Map;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Map$6;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map$6;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->StopDrag()V

    return-void
.end method
