.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .locals 1

    .line 189
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    if-eqz v0, :cond_0

    .line 190
    check-cast p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth(I)V

    :cond_0
    return-void
.end method
