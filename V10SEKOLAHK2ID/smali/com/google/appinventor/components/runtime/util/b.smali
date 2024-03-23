.class Lcom/google/appinventor/components/runtime/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/b$d;,
        Lcom/google/appinventor/components/runtime/util/b$b;,
        Lcom/google/appinventor/components/runtime/util/b$c;,
        Lcom/google/appinventor/components/runtime/util/b$e;,
        Lcom/google/appinventor/components/runtime/util/b$a;
    }
.end annotation


# static fields
.field private static final a:J = 0x1L

.field private static final a:Ljava/lang/String;

.field private static final a:[F

.field private static final b:J = 0x4L

.field private static final b:[F

.field private static final c:J = 0x8L

.field private static final d:J = 0x10L

.field private static final e:J = 0x20L


# instance fields
.field private a:F

.field private a:Landroid/widget/RelativeLayout;

.field private a:Lcom/caverock/androidsvg/SVG;

.field private a:Lcom/google/appinventor/components/common/MapType;

.field private final a:Lcom/google/appinventor/components/runtime/Form;

.field private final a:Lcom/google/appinventor/components/runtime/util/b$a;

.field private a:Lcom/google/appinventor/components/runtime/util/b$e;

.field private a:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            "Lorg/osmdroid/views/overlay/OverlayWithIW;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lorg/osmdroid/views/MapView;

.field private a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

.field private a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

.field private a:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

.field private a:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

.field private final a:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

.field private a:Z

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    const-class v0, Lcom/google/appinventor/components/runtime/util/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 133
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/appinventor/components/runtime/util/b;->a:[F

    new-array v0, v0, [F

    .line 134
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/appinventor/components/runtime/util/b;->b:[F

    return-void

    :array_0
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 5

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 110
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 111
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Set;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    .line 113
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/caverock/androidsvg/SVG;

    .line 114
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/util/b$e;

    .line 115
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/b;->d:Z

    .line 117
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 118
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:F

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->b:Ljava/util/Set;

    .line 131
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->c:Ljava/util/Set;

    .line 285
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->setUserAgentValue(Ljava/lang/String;)V

    .line 286
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "osmdroid"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 289
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "tiles"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    :cond_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 292
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Z

    .line 295
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 296
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$e;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/b$e;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/b$1;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/util/b$e;

    .line 297
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$b;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/util/b$b;-><init>(Lcom/google/appinventor/components/runtime/util/b;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    .line 298
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$a;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/b$a;-><init>(Lcom/google/appinventor/components/runtime/util/b$1;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/util/b$a;

    .line 299
    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/MapView;->setTilesScaledToDpi(Z)V

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p0}, Lorg/osmdroid/views/MapView;->setMapListener(Lorg/osmdroid/events/MapListener;)V

    .line 302
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/views/overlay/CopyrightOverlay;

    invoke-direct {v1, p1}, Lorg/osmdroid/views/overlay/CopyrightOverlay;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/util/b$e;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/b$1;-><init>(Lcom/google/appinventor/components/runtime/util/b;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->addOnTapListener(Lorg/osmdroid/views/MapView$OnTapListener;)V

    .line 319
    new-instance v0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    .line 320
    new-instance v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/util/b$a;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    .line 321
    new-instance v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    .line 322
    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignRight(Z)V

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->disableScaleBar()V

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Landroid/widget/RelativeLayout;

    .line 328
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 329
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setVisibility(I)V

    return-void
.end method

.method private static a(Lcom/caverock/androidsvg/SVG$Svg;)F
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 1024
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result p0

    return p0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_1

    .line 1026
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    return p0

    :cond_1
    const/high16 p0, 0x41f00000    # 30.0f

    return p0
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/caverock/androidsvg/SVG;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;
    .locals 19

    .line 1043
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1044
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1045
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/b;->b(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v3

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    int-to-float v3, v3

    .line 1046
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v4

    goto :goto_1

    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v4

    int-to-float v4, v4

    .line 1047
    :goto_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/b;->b(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v5

    div-float v5, v3, v5

    .line 1048
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v6

    div-float v6, v4, v6

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 1049
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 1052
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1053
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 1054
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->FillColor()I

    move-result v10

    invoke-static {v8, v10}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1055
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeColor()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1056
    new-instance v10, Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 1057
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Svg;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1058
    instance-of v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    if-eqz v11, :cond_6

    .line 1059
    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    .line 1060
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v12, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    invoke-direct {v12, v13}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1061
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1062
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v12, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v14

    invoke-direct {v12, v14}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1063
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1064
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v10, v11, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1065
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide/16 v14, 0x3d

    iput-wide v14, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1066
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v11, :cond_6

    .line 1067
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v14, 0x1

    and-long/2addr v11, v14

    const-wide/16 v16, 0x0

    cmp-long v18, v11, v16

    if-nez v18, :cond_2

    .line 1068
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v12, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    invoke-direct {v12, v13}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1069
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v12, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v12, v14

    iput-wide v12, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1071
    :cond_2
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v13, 0x4

    and-long/2addr v11, v13

    cmp-long v15, v11, v16

    if-nez v15, :cond_3

    .line 1072
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v12, v15

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1073
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v12, v0

    iget-wide v0, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v0, v13

    iput-wide v0, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    :cond_3
    move-object v12, v0

    .line 1075
    :goto_3
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v13, 0x8

    and-long/2addr v0, v13

    cmp-long v11, v0, v16

    if-nez v11, :cond_4

    .line 1076
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v11

    invoke-direct {v1, v11}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1077
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v1, v12

    iget-wide v11, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v11, v13

    iput-wide v11, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_4

    :cond_4
    move-object v1, v12

    .line 1079
    :goto_4
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v13, 0x10

    and-long/2addr v11, v13

    cmp-long v0, v11, v16

    if-nez v0, :cond_5

    .line 1080
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1081
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v11, v13

    iput-wide v11, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1083
    :cond_5
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v13, 0x20

    and-long/2addr v11, v13

    cmp-long v0, v11, v16

    if-nez v0, :cond_7

    .line 1084
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v10, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1085
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v11, v13

    iput-wide v11, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_5

    :cond_6
    move-object v1, v0

    :cond_7
    :goto_5
    move-object v0, v1

    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 1092
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 1093
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 1094
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    add-float/2addr v4, v7

    mul-float v4, v4, v2

    float-to-int v4, v4

    .line 1095
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v8

    add-float/2addr v3, v7

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 1094
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    mul-float v6, v6, v2

    mul-float v2, v2, v5

    .line 1096
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1097
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v2

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1098
    invoke-virtual {v0, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1099
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 1100
    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/b;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/b$d;
    .locals 2

    .line 1149
    new-instance v0, Lcom/google/appinventor/components/runtime/util/b$d;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/b$d;-><init>()V

    .line 1150
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1151
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/b$d;->setMultiPoints(Ljava/util/List;)V

    .line 1152
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/b$d;->setMultiHoles(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/b;)Lorg/osmdroid/views/MapView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;
    .locals 6

    .line 1157
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1158
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1159
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    return-object v0
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;
    .locals 10

    .line 1164
    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v3

    .line 1165
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 1166
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1167
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1168
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    return-object v0
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;
    .locals 2

    .line 1127
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 1128
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setDraggable(Z)V

    .line 1129
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setTitle(Ljava/lang/String;)V

    .line 1130
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setSnippet(Ljava/lang/String;)V

    .line 1131
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 1132
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->StrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 1133
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->StrokeWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 1134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/b;)Lorg/osmdroid/views/overlay/compass/CompassOverlay;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    return-object p0
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v0, Lcom/google/appinventor/components/runtime/util/b$11;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/b$11;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 666
    new-instance v0, Lcom/google/appinventor/components/runtime/util/b$12;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/b$12;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 716
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 717
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/b;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_0

    .line 719
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/b;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 944
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/b;->c(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_1

    .line 946
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/b;->b(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private a(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 1139
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1140
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1141
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1142
    move-object v0, p2

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1143
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1144
    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1145
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/b;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/b;->d:Z

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/b;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/b;->d:Z

    return p1
.end method

.method private static b(Lcom/caverock/androidsvg/SVG$Svg;)F
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 1034
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result p0

    return p0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_1

    .line 1036
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return p0

    :cond_1
    const/high16 p0, 0x42480000    # 50.0f

    return p0
.end method

.method private b(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/caverock/androidsvg/SVG;

    const-string v1, "Unable to read Marker asset"

    const-string v2, "Invalid SVG in Marker asset"

    if-nez v0, :cond_1

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "marker.svg"

    invoke-static {v0, v3}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/caverock/androidsvg/SVG;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 961
    sget-object v3, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 959
    sget-object v3, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/caverock/androidsvg/SVG;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 964
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to load SVG from assets"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 967
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 968
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 970
    :try_start_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v4
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    .line 974
    sget-object v5, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v4

    .line 972
    sget-object v5, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    invoke-static {v5, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v4, v3

    :goto_3
    if-nez v4, :cond_2

    .line 980
    :try_start_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v5, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 981
    invoke-static {v3}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v0
    :try_end_2
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 987
    sget-object v1, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    move-object v3, v0

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception v0

    .line 985
    :try_start_3
    sget-object v2, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_5
    move-exception v0

    .line 983
    sget-object v1, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 987
    :goto_4
    sget-object v0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    sget-object p2, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 988
    throw p1

    :cond_2
    :goto_6
    move-object v3, v4

    :cond_3
    :goto_7
    if-nez v3, :cond_4

    .line 992
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/caverock/androidsvg/SVG;

    .line 995
    :cond_4
    :try_start_4
    invoke-direct {p0, p1, v3}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    .line 997
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method private c(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v2

    .line 1004
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    new-instance v4, Lcom/google/appinventor/components/runtime/util/b$4;

    invoke-direct {v4, p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/b$4;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 1003
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private d(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;)V"
        }
    .end annotation

    .line 1105
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 1106
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setDraggable(Z)V

    .line 1108
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 1109
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1110
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1111
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 1112
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$5;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/appinventor/components/runtime/util/b$5;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    const-string v2, "MapReady"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b;->d:Z

    .line 523
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V

    :cond_1
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1

    .line 730
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2

    .line 592
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$9;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/b$9;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V

    .line 614
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$10;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/b$10;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnDragListener(Lorg/osmdroid/views/overlay/Polyline$OnDragListener;)V

    .line 637
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Visible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 638
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/b;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/b;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    :goto_0
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1

    .line 529
    new-instance v0, Lcom/google/appinventor/components/runtime/util/b$8;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/b$8;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/b;->d(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1

    .line 725
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/b$d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1

    .line 735
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    return-void
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/util/b$a;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMapType()Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 2

    .line 388
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMapTypeAbstract()Lcom/google/appinventor/components/common/MapType;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/common/MapType;

    return-object v0
.end method

.method public getOverlayCount()I
    .locals 2

    .line 1290
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    return v0
.end method

.method public getScaleUnits()Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 2

    .line 1332
    sget-object v0, Lcom/google/appinventor/components/runtime/util/b$6;->c:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1336
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0

    .line 1338
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow we have an unallowed unit system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1334
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0
.end method

.method public getScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;
    .locals 2

    .line 1359
    sget-object v0, Lcom/google/appinventor/components/runtime/util/b$6;->c:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1363
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Metric:Lcom/google/appinventor/components/common/ScaleUnits;

    return-object v0

    .line 1365
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow we have an unallowed unit system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1361
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Imperial:Lcom/google/appinventor/components/common/ScaleUnits;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getZoom()I
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/b;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    return-void
.end method

.method public hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1246
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->closeInfoWindow()V

    return-void
.end method

.method protected hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 1191
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public isCompassEnabled()Z
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;)Z
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isFeatureVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz p1, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInfoboxVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz p1, :cond_0

    .line 1252
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPanEnabled()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/util/b$e;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/b$e;->a(Lcom/google/appinventor/components/runtime/util/b$e;)Z

    move-result v0

    return v0
.end method

.method public isRotationEnabled()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScaleVisible()Z
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowUserEnabled()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZoomControlEnabled()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b;->c:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b;->b:Z

    return v0
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .locals 1

    .line 1268
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1269
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onBoundsChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .locals 1

    .line 1276
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    .line 1277
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1278
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onZoom()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public panTo(DDID)V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 510
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    int-to-double p2, p5

    invoke-interface {p1, p2, p3}, Lorg/osmdroid/api/IMapController;->zoomTo(D)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double p6, p6, p2

    double-to-long p2, p6

    .line 513
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V
    .locals 5

    .line 1262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 1263
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/osmdroid/api/IMapController;->zoomToSpan(DD)V

    return-void
.end method

.method public setCenter(DD)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$7;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/b$7;-><init>(Lcom/google/appinventor/components/runtime/util/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 428
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientationProvider()Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 429
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass()Z

    goto :goto_0

    .line 431
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    new-instance v0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z

    .line 433
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientation()F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:F

    .line 436
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->b:Ljava/util/Set;

    .line 1208
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 1213
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/b;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1214
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1216
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1217
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/b;->showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 1221
    :cond_4
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/b;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1222
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1224
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/b;->hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setMapType(Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;)V
    .locals 0

    .line 380
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/MapType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/MapType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/b;->setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    :cond_0
    return-void
.end method

.method public setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V
    .locals 1

    .line 393
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/common/MapType;

    .line 394
    sget-object v0, Lcom/google/appinventor/components/runtime/util/b$6;->a:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    :goto_0
    return-void
.end method

.method public setPanEnabled(Z)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/util/b$e;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/b$e;->a(Lcom/google/appinventor/components/runtime/util/b$e;Z)Z

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 485
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {p1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {p1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setScaleUnits(Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;)V
    .locals 3

    .line 1317
    sget-object v0, Lcom/google/appinventor/components/runtime/util/b$6;->b:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1322
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    goto :goto_0

    .line 1325
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unallowable unit system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1327
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public setScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V
    .locals 1

    .line 1344
    sget-object v0, Lcom/google/appinventor/components/runtime/util/b$6;->d:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScaleUnits;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1349
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    goto :goto_0

    .line 1346
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1354
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public setScaleVisible(Z)V
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 1307
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public setShowUserEnabled(Z)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    .line 465
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {p1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 468
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {p1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setZoom(I)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 357
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    return-void
.end method

.method public setZoomControlEnabled(Z)V
    .locals 2

    .line 448
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/b;->c:Z

    if-eq v0, p1, :cond_1

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setVisibility(I)V

    .line 450
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/b;->c:Z

    .line 451
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 1

    .line 369
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/b;->b:Z

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    return-void
.end method

.method public showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/b;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    :cond_0
    return-void
.end method

.method public showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1232
    instance-of v1, v0, Lorg/osmdroid/views/overlay/Marker;

    if-eqz v1, :cond_0

    .line 1233
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->showInfoWindow()V

    goto :goto_0

    .line 1234
    :cond_0
    instance-of v1, v0, Lorg/osmdroid/views/overlay/Polyline;

    if-eqz v1, :cond_1

    .line 1235
    check-cast v0, Lorg/osmdroid/views/overlay/Polyline;

    .line 1236
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    goto :goto_0

    .line 1238
    :cond_1
    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1239
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    :goto_0
    return-void
.end method

.method protected showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 1181
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz v0, :cond_0

    .line 898
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-nez v0, :cond_0

    return-void

    .line 811
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$13;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/b$13;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    return-void
.end method

.method public updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/b$d;

    if-eqz v0, :cond_0

    .line 777
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/b$d;->setMultiHoles(Ljava/util/List;)V

    .line 778
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    if-nez v0, :cond_0

    return-void

    .line 908
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$2;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/b$2;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 5

    .line 784
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 785
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    if-eqz v1, :cond_0

    .line 787
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object p1

    .line 788
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 789
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polyline;

    if-eqz v0, :cond_0

    .line 759
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 760
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 6

    .line 746
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    if-eqz v0, :cond_0

    .line 748
    sget-object v1, Lcom/google/appinventor/components/runtime/util/b;->a:[F

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/util/b;->b:[F

    .line 749
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result v3

    aget v2, v2, v3

    .line 748
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 750
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 751
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/b$d;

    if-eqz v0, :cond_0

    .line 768
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/b$d;->setMultiPoints(Ljava/util/List;)V

    .line 769
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 11

    .line 796
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    if-eqz v0, :cond_0

    .line 798
    new-instance v10, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    .line 799
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 798
    invoke-static {v10}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object p1

    .line 800
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 801
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    if-nez v0, :cond_0

    return-void

    .line 928
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$3;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/b$3;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-nez v0, :cond_0

    return-void

    .line 848
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/b$14;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/b$14;-><init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    return-void
.end method

.method public updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz v0, :cond_0

    .line 889
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setTitle(Ljava/lang/String;)V

    .line 890
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setSnippet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
