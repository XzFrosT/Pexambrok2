.class public Lcom/google/appinventor/components/runtime/Map;
.super Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x8
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional container that renders map tiles in the background and allows for multiple Marker elements to identify points on the map. Map tiles are supplied by OpenStreetMap contributors and the United States Geological Survey.</p><p>The Map component provides three utilities for manipulating its boundaries within App Inventor. First, a locking mechanism is provided to allow the map to be moved relative to other components on the Screen. Second, when unlocked, the user can pan the Map to any location. At this new location, the &quot;Set Initial Boundary&quot; button can be pressed to save the current Map coordinates to its properties. Lastly, if the Map is moved to a different location, for example to add Markers off-screen, then the &quot;Reset Map to Initial Bounds&quot; button can be used to re-center the Map at the starting location.</p>"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "location.png, marker.svg"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "osmdroid.aar, osmdroid.jar, androidsvg.jar, jts.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_FINE_LOCATION"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "%s is not a valid number."

.field private static final c:Ljava/lang/String; = "Latitude %f is out of bounds."

.field private static final d:Ljava/lang/String; = "Longitude %f is out of bounds."


# instance fields
.field private a:Lcom/google/appinventor/components/runtime/LocationSensor;

.field private a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Map;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 104
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .line 96
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 105
    sget-object v0, Lcom/google/appinventor/components/runtime/Map;->a:Ljava/lang/String;

    const-string v1, "Map.<init>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/16 v0, 0xb0

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->Width(I)V

    const/16 v0, 0x90

    .line 108
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->Height(I)V

    const-string v0, "42.359144, -71.093612"

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->CenterFromString(Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->ZoomLevel(I)V

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->EnableZoom(Z)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->EnablePan(Z)V

    .line 113
    sget-object v0, Lcom/google/appinventor/components/common/MapType;->Road:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->MapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->ShowCompass(Z)V

    .line 115
    new-instance v1, Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Map;->LocationSensor(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->ShowUser(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->ShowZoom(Z)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->EnableRotation(Z)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->ShowScale(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/io/File;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Map;->a(Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 625
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->writeFeaturesAsGeoJSON(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 627
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/Map$8;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Map$8;-><init>(Lcom/google/appinventor/components/runtime/Map;Ljava/io/IOException;)V

    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public BoundingBox()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Bounding box for the map stored as [[North, West], [South, East]]."
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Double;

    .line 473
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Double;

    .line 474
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/util/YailList;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    .line 475
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public BoundingBox(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, 0x1

    .line 457
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v3

    .line 458
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v9

    .line 459
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v7

    .line 460
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 461
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V

    return-void
.end method

.method public BoundsChange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User has changed the map bounds by panning or zooming the map."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BoundsChange"

    .line 652
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CenterFromString(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "42.359144, -71.093612"
        editorType = "geographic_point"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "<p>Set the initial center coordinate of the map. The value is specified as a comma-separated pair of decimal latitude and longitude coordinates, for example, <code>42.359144, -71.093612</code>.</p><p>In blocks code, it is recommended for performance reasons to use SetCenter with numerical latitude and longitude rather than convert to the string representation for use with this property.</p>"
    .end annotation

    const-string v0, "%s is not a valid number."

    const-string v1, ","

    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 153
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 154
    sget-object v0, Lcom/google/appinventor/components/runtime/Map;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid point."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v2, 0x0

    .line 161
    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :try_start_1
    aget-object v5, v1, p1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v7, v3, v5

    if-gtz v7, :cond_4

    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double v7, v0, v5

    if-gtz v7, :cond_3

    const-wide v5, -0x3f99800000000000L    # -180.0

    cmpg-double v7, v0, v5

    if-gez v7, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    sget-object p1, Lcom/google/appinventor/components/runtime/Map;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting center to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {p1, v3, v4, v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setCenter(DD)V

    goto :goto_2

    :cond_3
    :goto_0
    new-array p1, p1, [Ljava/lang/Object;

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "Longitude %f is out of bounds."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-array p1, p1, [Ljava/lang/Object;

    .line 175
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "Latitude %f is out of bounds."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 170
    :catch_0
    sget-object v3, Lcom/google/appinventor/components/runtime/Map;->a:Ljava/lang/String;

    new-array v4, p1, [Ljava/lang/Object;

    aget-object v5, v1, p1

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, p1, [Ljava/lang/Object;

    .line 171
    aget-object p1, v1, p1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    return-void

    .line 163
    :catch_1
    sget-object v3, Lcom/google/appinventor/components/runtime/Map;->a:Ljava/lang/String;

    new-array v4, p1, [Ljava/lang/Object;

    aget-object v5, v1, v2

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, p1, [Ljava/lang/Object;

    .line 164
    aget-object v1, v1, v2

    aput-object v1, p1, v2

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    return-void
.end method

.method public CreateMarker(DD)Lcom/google/appinventor/components/runtime/Marker;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new marker with default properties at the specified latitude and longitude."
    .end annotation

    .line 590
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Marker;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 591
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Marker;->SetLocation(DD)V

    return-object v0
.end method

.method public DoubleTapAtPoint(DD)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user double-tapped at a point on the map. This event will be followed by a ZoomChanged event if zooming gestures are enabled and the map is not at the highest possible zoom level."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 697
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "DoubleTapAtPoint"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EnablePan(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setPanEnabled(Z)V

    return-void
.end method

.method public EnablePan()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable two-finger panning of the Map"
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isPanEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableRotation(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setRotationEnabled(Z)V

    return-void
.end method

.method public EnableRotation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to true, the user can use multitouch gestures to rotate the map around its current center."
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isRotationEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableZoom(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoomEnabled(Z)V

    return-void
.end method

.method public EnableZoom()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If this property is set to true, multitouch zoom gestures are allowed on the map. Otherwise, the map zoom cannot be changed by the user except via the zoom control buttons."
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isZoomEnabled()Z

    move-result v0

    return v0
.end method

.method public Features()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 481
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->Features()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public InvalidPoint(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An invalid coordinate was supplied during a maps operation. The message parameter will have more details about the issue."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "InvalidPoint"

    .line 675
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the center of the map."
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public LocationSensor()Lcom/google/appinventor/components/runtime/LocationSensor;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    return-object v0
.end method

.method public LocationSensor(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "component:com.google.appinventor.components.runtime.LocationSensor"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Uses the provided LocationSensor for user location data rather than the built-in location provider."
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->removeListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V

    .line 497
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz p1, :cond_1

    .line 499
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->addListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V

    :cond_1
    return-void
.end method

.method public LongPressAtPoint(DD)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed at a point on the map."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 708
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "LongPressAtPoint"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the center of the map."
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public MapType()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/MapType;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The type of tile layer to use as the base of the map. Valid values are: 1 (Roads), 2 (Aerial), 3 (Terrain)"
    .end annotation

    .line 322
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->MapTypeAbstract()Lcom/google/appinventor/components/common/MapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public MapType(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/MapType;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "map_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/MapType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/MapType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Map;->MapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    :cond_0
    return-void
.end method

.method public MapTypeAbstract()Lcom/google/appinventor/components/common/MapType;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getMapTypeAbstract()Lcom/google/appinventor/components/common/MapType;

    move-result-object v0

    return-object v0
.end method

.method public MapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    return-void
.end method

.method public PanTo(DDI)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pans the map center to the given latitude and longitude and adjust the zoom level to the specified zoom."
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->panTo(DDID)V

    return-void
.end method

.method public Ready()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Map has been initialized and is ready for user interaction."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ready"

    .line 643
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Rotation()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets or gets the rotation of the map in decimal degrees if any"
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getRotation()F

    move-result v0

    return v0
.end method

.method public Rotation(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setRotation(F)V

    return-void
.end method

.method public Save(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Save the contents of the Map to the specified path."
    .end annotation

    .line 600
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "/"

    .line 602
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    new-instance v10, Lcom/google/appinventor/components/runtime/Map$7;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, "Save"

    move-object v0, v10

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/Map$7;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/util/List;)V

    .line 619
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Map$7;->run()V

    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "file:"

    .line 603
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 605
    :goto_1
    new-instance p1, Lcom/google/appinventor/components/runtime/Map$1;

    invoke-direct {p1, p0, v9, v0}, Lcom/google/appinventor/components/runtime/Map$1;-><init>(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/io/File;)V

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public ScaleUnits()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScaleUnits;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 543
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->ScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScaleUnits;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ScaleUnits(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScaleUnits;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "map_unit_system"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 532
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/ScaleUnits;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ScaleUnits;

    move-result-object v0

    if-nez v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xd5d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 535
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "ScaleUnits"

    .line 534
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 538
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->ScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V

    return-void
.end method

.method public ScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;

    move-result-object v0

    return-object v0
.end method

.method public ScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V

    return-void
.end method

.method public ShowCompass(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setCompassEnabled(Z)V

    return-void
.end method

.method public ShowCompass()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show a compass icon rotated based on user orientation."
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isCompassEnabled()Z

    move-result v0

    return v0
.end method

.method public ShowScale(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setScaleVisible(Z)V

    return-void
.end method

.method public ShowScale()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Shows a scale reference on the map."
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isScaleVisible()Z

    move-result v0

    return v0
.end method

.method public ShowUser(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setShowUserEnabled(Z)V

    return-void
.end method

.method public ShowUser()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show the user\'s location on the map."
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isShowUserEnabled()Z

    move-result v0

    return v0
.end method

.method public ShowZoom(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoomControlEnabled(Z)V

    return-void
.end method

.method public ShowZoom()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show zoom buttons on the map."
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isZoomControlEnabled()Z

    move-result v0

    return v0
.end method

.method public TapAtPoint(DD)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user tapped at a point on the map."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 685
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TapAtPoint"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UserLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the user\'s latitude if ShowUser is enabled."
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-nez v0, :cond_0

    const-wide v0, -0x3f70c80000000000L    # -999.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Latitude()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public UserLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the user\'s longitude if ShowUser is enabled."
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-nez v0, :cond_0

    const-wide v0, -0x3f70c80000000000L    # -999.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Longitude()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public ZoomChange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User has changed the zoom level of the map."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZoomChange"

    .line 661
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ZoomLevel()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The zoom level of the map. Valid values of ZoomLevel are dependent on the tile provider and the latitude and longitude of the map. For example, zoom levels are more constrained over oceans than dense city centers to conserve space for storing tiles, so valid values may be 1-7 over ocean and 1-18 over cities. Tile providers may send warning or error tiles if the zoom level is too great for the server to support."
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getZoom()I

    move-result v0

    return v0
.end method

.method public ZoomLevel(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "13"
        editorType = "map_zoom"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoom(I)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 865
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 844
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 837
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 851
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 858
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    return-void
.end method

.method public getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    return-object v0
.end method

.method public getMap()Lcom/google/appinventor/components/runtime/Map;
    .locals 0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory;->newMap(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .line 126
    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBoundsChanged()V
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$10;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Map$10;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDoubleTap(DD)V
    .locals 8

    .line 758
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v7, Lcom/google/appinventor/components/runtime/Map$13;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Map$13;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$2;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 808
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$5;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFeatureLongPress(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$3;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$4;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$6;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLongPress(DD)V
    .locals 8

    .line 768
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v7, Lcom/google/appinventor/components/runtime/Map$14;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Map$14;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V
    .locals 1

    .line 718
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/Map$9;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Map$9;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSingleTap(DD)V
    .locals 8

    .line 748
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v7, Lcom/google/appinventor/components/runtime/Map$12;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Map$12;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoom()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$11;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Map$11;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->a:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method
