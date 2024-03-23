.class public Lcom/google/appinventor/components/runtime/Polygon;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Polygon"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/google/appinventor/components/runtime/Polygon$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Polygon$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Polygon;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 1

    .line 114
    sget-object v0, Lcom/google/appinventor/components/runtime/Polygon;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Z

    .line 64
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Z

    .line 115
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method


# virtual methods
.method public Centroid()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the centroid of the Polygon as a (latitude, longitude) pair."
    .end annotation

    .line 322
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/PolygonBase;->Centroid()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public HolePoints()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets or sets the sequence of points used to draw holes in the polygon."
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Z

    if-eqz v0, :cond_2

    .line 238
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 240
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 258
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    goto :goto_0

    .line 260
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Z

    if-eqz v0, :cond_1

    .line 261
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonHolesFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    goto :goto_0

    .line 262
    :cond_1
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    .line 270
    :goto_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Z

    if-eqz p1, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 272
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    goto :goto_1

    .line 267
    :cond_2
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v0, 0xd4c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unable to determine the structure of the points argument."

    aput-object v3, v1, v2

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "HolePoints"

    .line 275
    invoke-virtual {v0, p0, v2, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public HolePointsFromString(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Constructs holes in a polygon from a given list of coordinates per hole."
    .end annotation

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    .line 293
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    return-void

    .line 297
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 299
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    .line 300
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    return-void

    .line 303
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonHolesToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    .line 304
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Z

    if-eqz p1, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 306
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 308
    :cond_2
    sget-object p1, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Points: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 310
    sget-object v0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/lang/String;

    const-string v1, "Unable to parse point string"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xd4c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 312
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "HolePointsFromString"

    .line 311
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public Initialize()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Z

    .line 120
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public Points()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets or sets the sequence of points used to draw the polygon."
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Z

    if-eqz v0, :cond_2

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 154
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Points(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 173
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Z

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 178
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Z

    .line 179
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    .line 184
    :goto_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Z

    if-eqz p1, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 186
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    goto :goto_1

    .line 181
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v0, 0xd4c

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unable to determine the structure of the points argument."

    aput-object v3, v2, v1

    invoke-direct {p1, v0, v2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Points"

    invoke-virtual {v0, p0, v2, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public PointsFromString(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Constructs a polygon from the given list of coordinates."
    .end annotation

    const-string v0, "PointsFromString"

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    .line 205
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 209
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 211
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    .line 212
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Z

    .line 213
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    return-void

    .line 216
    :cond_1
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    .line 217
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Z

    .line 218
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Z

    if-eqz p1, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 220
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    .line 226
    invoke-interface {v1, p0, v0, v2, p1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 223
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const/16 v4, 0xd4c

    new-array v2, v2, [Ljava/lang/Object;

    .line 224
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 223
    invoke-virtual {v3, p0, v0, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/MapFeature;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the type of the feature. For polygons, this returns MapFeature.Polygon (\"Polygon\")."
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;
    .locals 1

    .line 141
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->Polygon:Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method

.method a()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Z

    return v0
.end method

.method public varargs accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 337
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getHolePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    return-object v0
.end method

.method public updateHolePoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)V"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    return-void
.end method

.method public updatePoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    return-void
.end method
