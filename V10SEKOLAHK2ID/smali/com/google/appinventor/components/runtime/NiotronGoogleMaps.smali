.class public Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Visible component that show information on Google map."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-services-base.aar,play-services-tasks.jar,play-services-tasks.aar,play-services-maps.jar,play-services-maps.aar,play-services-location.jar,play-services-location.aar,play-services-places-placereport.jar,play-services-places-placereport.aar,play-services-basement.jar,play-services-basement.aar,gson-2.8.4.jar,play-services-base.jar,google-api-client.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.ACCESS_NETWORK_STATE, android.permission.INTERNET, android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_FINE_LOCATION, com.google.android.providers.gsf.permission.READ_GSERVICES, android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;
    }
.end annotation


# static fields
.field public static final RADIUS_OF_EARTH_METERS:D = 6371009.0

.field private static final a:D = 1000000.0

.field private static final a:Lcom/google/android/gms/location/LocationRequest;

.field private static final a:Ljava/lang/String; = "NiotronGoogleMaps"

.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:F

.field private a:I

.field private final a:Landroid/app/Activity;

.field private a:Landroid/os/Bundle;

.field private final a:Landroid/os/Handler;

.field private a:Landroid/widget/LinearLayout;

.field private a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private a:Lcom/google/android/gms/maps/GoogleMap;

.field private a:Lcom/google/android/gms/maps/MapFragment;

.field private a:Lcom/google/android/gms/maps/UiSettings;

.field private final a:Lcom/google/appinventor/components/runtime/Form;

.field private a:Lcom/google/appinventor/components/runtime/util/YailList;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private b:Lcom/google/android/gms/maps/GoogleMap;

.field private final b:Ljava/lang/String;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private d:Z

.field private e:I

.field private e:Z

.field private f:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 167
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x10

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 121
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:I

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Z

    .line 123
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Z

    .line 124
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:Z

    .line 125
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d:Z

    .line 126
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->e:Z

    .line 127
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->f:Z

    const v2, -0xffff01

    .line 130
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:I

    .line 131
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->g:Z

    .line 134
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->h:Z

    .line 135
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->i:Z

    .line 136
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->j:Z

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/HashMap;

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/List;

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:Ljava/util/HashMap;

    const/high16 v2, 0x40000000    # 2.0f

    .line 148
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:F

    const/high16 v2, -0x1000000

    .line 149
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:I

    .line 150
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d:I

    const/16 v2, 0x14

    .line 151
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->e:I

    const/4 v3, 0x3

    new-array v3, v3, [F

    int-to-float v4, v1

    aput v4, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    const/4 v0, 0x2

    aput v4, v3, v0

    .line 152
    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->f:I

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/os/Handler;

    .line 171
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->k:Z

    .line 177
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    .line 178
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 179
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getOnCreateBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/os/Bundle;

    .line 181
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 185
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/widget/LinearLayout;

    .line 187
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a()I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map_tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->e()V

    .line 195
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->f()V

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/MapFragment;

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/google/android/gms/maps/MapFragment;->newInstance()Lcom/google/android/gms/maps/MapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/MapFragment;

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 210
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "here before adding fragment"

    .line 211
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/MapFragment;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 215
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a()V

    .line 221
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x2

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->Width(I)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->Height(I)V

    .line 225
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 226
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 227
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static a()I
    .locals 3

    .line 239
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    .line 243
    :cond_1
    sget-object v2, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method private a(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    const-string v0, "NiotronGoogleMaps"

    const-string v1, "@addMarkerToMap"

    .line 1007
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1009
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-nez p1, :cond_0

    .line 1010
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a()V

    .line 1012
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    new-instance p2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1013
    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 1014
    invoke-static {p4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 1012
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 1016
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1017
    invoke-virtual {p1, p5}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1019
    :cond_1
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1020
    invoke-virtual {p1, p6}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1022
    :cond_2
    invoke-virtual {p1, p7}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 1024
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p3
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Landroid/os/Handler;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Landroid/widget/LinearLayout;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/MapFragment;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/MapFragment;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 98
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method private a(I)Lcom/google/android/gms/maps/model/Marker;
    .locals 5

    .line 1301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    const/4 v1, 0x0

    .line 1303
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x2eed

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1305
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "getMarkerIfExisted"

    .line 1304
    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private a(I)Ljava/lang/Object;
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eef

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 502
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "getCircleIfExisted"

    .line 501
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;TE;>;TE;)TT;"
        }
    .end annotation

    .line 1469
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1470
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1471
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->k:Z

    const-string v0, "NiotronGoogleMaps"

    const-string/jumbo v1, "setUpMapIfNeeded. mMap is null"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->k:Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a()V

    return-void
.end method

.method private static b(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 1681
    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 p0, 0x0

    .line 1683
    aget p0, v0, p0

    float-to-double p0, p0

    return-wide p0
.end method

.method private static b()I
    .locals 1

    .line 977
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private static b(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    const-wide v0, 0x41584db040000000L    # 6371009.0

    div-double/2addr p1, v0

    .line 1674
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1675
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 1676
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    return-void
.end method

.method private static c()I
    .locals 1

    .line 986
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 2

    const-string v0, "NiotronGoogleMaps"

    const-string v1, "in setUpMap()"

    .line 305
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 317
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d()V

    .line 321
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->MapIsReady()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    .line 328
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 419
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "googlePlayServicesAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NiotronGoogleMaps"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "checkGooglePlayServiceSDK"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2ef2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2ef1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2ef0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eeb

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x2eea

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "checkGoogleMapInstalled"

    invoke-virtual {v1, p0, v3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 663
    invoke-static {}, Lcom/google/android/gms/maps/MapFragment;->newInstance()Lcom/google/android/gms/maps/MapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/MapFragment;

    .line 665
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public AddCircle(DDDIFFIZ)I
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a circle overlay on the map UI with specified latitude and longitude for center. \"hue\" (min 0, max 360) and \"alpha\" (min 0, max 255) are used to set color and transparency level of the circle, \"strokeWidth\" and \"strokeColor\" are for the perimeter of the circle. Returning a unique id of the circle for future reference to events raised by moving this circle. If the circle isset to be draggable, two default markers will appear on the map: one in the center of the circle, another on the perimeter."
    .end annotation

    move-object v8, p0

    move-wide v0, p1

    move-wide v2, p3

    .line 471
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c()I

    move-result v9

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p8, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    move/from16 v5, p7

    .line 472
    invoke-static {v5, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    if-eqz p11, :cond_0

    .line 476
    new-instance v10, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v0, v10

    move-object v1, p0

    move-object v2, v4

    move-wide/from16 v3, p5

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;Lcom/google/android/gms/maps/model/LatLng;DFII)V

    .line 478
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 483
    :cond_0
    iget-object v4, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 484
    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    move-wide/from16 v1, p5

    .line 485
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    move/from16 v1, p9

    .line 486
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    move/from16 v1, p10

    .line 487
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    .line 488
    invoke-virtual {v0, v7}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    .line 483
    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v0

    .line 489
    iget-object v1, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v9
.end method

.method public AddMarkers(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 21
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of YailLists for markers. The representation of a maker in the inner YailList is composed of: lat(double) [required], long(double) [required], Color, title(String), snippet(String), draggable(boolean). Return a list of unqiue ids for the added  markers. Note that the markers ids are not meant to persist after  the app is closed, but for temporary references to the markers within the program only. Return an empty list if any error happen in the input"
    .end annotation

    move-object/from16 v8, p0

    const/4 v9, 0x3

    new-array v10, v9, [F

    .line 880
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 881
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_d

    aget-object v0, v12, v15

    .line 883
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    const-string v1, "NiotronGoogleMaps"

    const-string v3, "interior YailLiat"

    .line 884
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 889
    :goto_1
    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 890
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 891
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v6, Ljava/lang/Double;

    move-object/from16 v16, v10

    const-wide/16 v9, 0x0

    invoke-direct {v6, v9, v10}, Ljava/lang/Double;-><init>(D)V

    .line 894
    new-instance v14, Ljava/lang/Double;

    invoke-direct {v14, v9, v10}, Ljava/lang/Double;-><init>(D)V

    .line 897
    instance-of v9, v5, Lgnu/math/DFloNum;

    if-eqz v9, :cond_2

    instance-of v9, v2, Lgnu/math/DFloNum;

    if-nez v9, :cond_1

    goto :goto_2

    .line 900
    :cond_1
    check-cast v5, Lgnu/math/DFloNum;

    invoke-virtual {v5}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 901
    check-cast v2, Lgnu/math/DFloNum;

    invoke-virtual {v2}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_3

    :cond_2
    :goto_2
    move-object v5, v6

    move-object v2, v14

    const/4 v3, 0x0

    .line 906
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide v18, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, v9, v18

    if-ltz v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide v18, 0x4056800000000000L    # 90.0

    cmpl-double v6, v9, v18

    if-gtz v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide v18, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v9, v18

    if-ltz v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide v18, 0x4066800000000000L    # 180.0

    cmpl-double v6, v9, v18

    if-lez v6, :cond_4

    :cond_3
    const/4 v3, 0x0

    .line 912
    :cond_4
    iget v6, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:I

    .line 915
    iget-boolean v9, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->g:Z

    .line 917
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v10

    const-string v14, "Value: "

    const/4 v4, 0x3

    if-lt v10, v4, :cond_6

    move-object v4, v14

    .line 918
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x2

    .line 921
    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v14

    .line 923
    instance-of v14, v14, Lgnu/math/IntNum;

    if-eqz v14, :cond_5

    .line 924
    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/math/IntNum;

    invoke-virtual {v6}, Lgnu/math/IntNum;->intValue()I

    move-result v6

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    move-object v4, v14

    .line 930
    :goto_4
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v10

    const-string v14, ""

    move/from16 v18, v3

    const/4 v3, 0x4

    if-lt v10, v3, :cond_7

    .line 931
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    .line 933
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_7
    move-object v10, v14

    .line 935
    :goto_5
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    move/from16 v20, v9

    const/4 v9, 0x5

    if-lt v3, v9, :cond_8

    .line 936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x4

    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .line 940
    :cond_8
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v9, 0x6

    if-lt v3, v9, :cond_a

    .line 941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 945
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v7, v0

    move-object/from16 v9, v16

    goto :goto_6

    :cond_9
    move-object/from16 v9, v16

    move/from16 v7, v20

    const/16 v18, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 v9, v16

    move/from16 v7, v20

    .line 952
    :goto_6
    invoke-static {v6, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    if-eqz v18, :cond_b

    .line 954
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b()I

    move-result v3

    .line 955
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 956
    aget v4, v9, v0

    move-object/from16 v0, p0

    move-object v1, v5

    const/16 v16, 0x3

    move-object v5, v10

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    goto :goto_7

    :cond_b
    const/16 v16, 0x3

    :goto_7
    const/4 v4, 0x0

    goto :goto_8

    :cond_c
    move-object v9, v10

    const/16 v16, 0x3

    .line 961
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eec

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "marker is not represented as list"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "AddMarkers"

    invoke-virtual {v0, v8, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object v10, v9

    const/4 v9, 0x3

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 967
    :cond_d
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public AddMarkersFromJson(Ljava/lang/String;)V
    .locals 26
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of markers that are represented as JsonArray.  The inner JsonObject represents a markerand is composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v10, "draggable"

    const-string/jumbo v11, "snippet"

    const-string/jumbo v12, "title"

    const-string v13, "color"

    const-string v14, "AddMarkersFromJson"

    const-string v15, ","

    const-string v7, "lng"

    const-string v6, "lat"

    const-string v5, "NiotronGoogleMaps"

    .line 1044
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    const/4 v1, 0x3

    new-array v3, v1, [F

    const/16 v16, 0x0

    .line 1050
    :try_start_0
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 1051
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_e

    if-eqz v1, :cond_d

    .line 1052
    :try_start_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s a JsonArry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 1058
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1059
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1060
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_d

    .line 1066
    :cond_0
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonPrimitive;

    .line 1067
    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonPrimitive;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_c

    const-wide/16 v19, 0x0

    .line 1075
    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1076
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_e

    move-object/from16 v21, v14

    :try_start_3
    const-string v14, "jpLat:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "jpLng:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v9, Ljava/lang/Double;

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v14, v10

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1080
    :try_start_5
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v22, v14

    .line 1081
    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v23, v4

    :try_start_7
    const-string v4, "convert to double:"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_1

    :catch_0
    move-object/from16 v23, v4

    goto :goto_3

    :catch_1
    move-object/from16 v23, v4

    move-object/from16 v22, v14

    goto :goto_2

    :catch_2
    move-object/from16 v23, v4

    move-object/from16 v22, v14

    goto :goto_4

    :catch_3
    move-object/from16 v17, v4

    move-object/from16 v3, v21

    goto/16 :goto_10

    :catch_4
    move-object/from16 v23, v4

    move-object/from16 v22, v10

    goto :goto_4

    :cond_1
    move-object/from16 v23, v4

    move-object/from16 v22, v10

    move-object/from16 v21, v14

    .line 1084
    :try_start_8
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v9
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1085
    :try_start_9
    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_9 .. :try_end_9} :catch_7

    :goto_1
    const/4 v4, 0x1

    goto :goto_6

    :catch_5
    :goto_2
    move-wide/from16 v1, v19

    :catch_6
    :goto_3
    move-wide/from16 v19, v9

    goto :goto_5

    :catch_7
    move-object/from16 v3, v21

    move-object/from16 v17, v23

    goto/16 :goto_10

    :catch_8
    move-object/from16 v23, v4

    move-object/from16 v22, v10

    move-object/from16 v21, v14

    :catch_9
    :goto_4
    move-wide/from16 v1, v19

    :goto_5
    move-wide/from16 v9, v19

    const/4 v4, 0x0

    :goto_6
    const-wide v19, -0x3fa9800000000000L    # -90.0

    cmpg-double v14, v9, v19

    if-ltz v14, :cond_2

    const-wide v19, 0x4056800000000000L    # 90.0

    cmpl-double v14, v9, v19

    if-gtz v14, :cond_2

    const-wide v19, -0x3f99800000000000L    # -180.0

    cmpg-double v14, v1, v19

    if-ltz v14, :cond_2

    const-wide v19, 0x4066800000000000L    # 180.0

    cmpl-double v14, v1, v19

    if-lez v14, :cond_3

    .line 1094
    :cond_2
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Lat/Lng wrong range:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 1099
    :cond_3
    iget v14, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:I

    invoke-static {v14, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1100
    aget v14, v3, v16

    .line 1101
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    if-nez v19, :cond_4

    goto :goto_7

    :cond_4
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    int-to-float v14, v14

    :goto_7
    const/16 v19, 0x0

    cmpg-float v19, v14, v19

    if-ltz v19, :cond_5

    const/high16 v19, 0x43b40000    # 360.0f

    cmpl-float v19, v14, v19

    if-lez v19, :cond_6

    :cond_5
    const-string v4, "Wrong color"

    .line 1104
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 1108
    :cond_6
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19
    :try_end_a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_a .. :try_end_a} :catch_b

    const-string v20, ""

    if-nez v19, :cond_7

    move-object/from16 v19, v20

    goto :goto_8

    :cond_7
    :try_start_b
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    .line 1109
    :goto_8
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    if-nez v24, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    :goto_9
    move-object/from16 v24, v11

    move-object/from16 v11, v22

    .line 1110
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v22
    :try_end_b
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_b .. :try_end_b} :catch_b

    if-nez v22, :cond_9

    :try_start_c
    iget-boolean v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->g:Z
    :try_end_c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_c .. :try_end_c} :catch_7

    :goto_a
    move/from16 v22, v0

    goto :goto_b

    :cond_9
    :try_start_d
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    goto :goto_a

    :goto_b
    if-eqz v4, :cond_a

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding marker"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b()I

    move-result v4

    .line 1115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_d
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_d .. :try_end_d} :catch_b

    move-object/from16 v25, v5

    move-object/from16 v5, v23

    :try_start_e
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_e .. :try_end_e} :catch_a

    move-object/from16 v0, p0

    move-object v1, v9

    const/4 v9, 0x1

    move-object v10, v3

    move v3, v4

    move-object/from16 v17, v5

    move v4, v14

    move-object/from16 v14, v25

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v22

    :try_start_f
    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    goto :goto_e

    :catch_a
    move-object/from16 v17, v5

    goto :goto_c

    :cond_a
    move-object v10, v3

    move-object v14, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v17, v23

    const/4 v9, 0x1

    goto :goto_e

    :catch_b
    move-object/from16 v17, v23

    :goto_c
    const/4 v9, 0x1

    goto :goto_f

    :cond_b
    :goto_d
    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v24, v11

    move-object/from16 v21, v14

    const/4 v9, 0x1

    move-object v14, v5

    move-object v11, v10

    move-object v10, v3

    :goto_e
    move-object/from16 v9, p1

    move-object v3, v10

    move-object v10, v11

    move-object v5, v14

    move-object/from16 v4, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v24

    goto/16 :goto_0

    :cond_c
    move-object/from16 v17, v4

    goto :goto_12

    :catch_c
    move-object/from16 v17, v4

    const/4 v9, 0x1

    move-object v3, v14

    goto :goto_11

    :cond_d
    move-object/from16 v17, v4

    move-object/from16 v21, v14

    const/4 v9, 0x1

    .line 1124
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eec

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "markers needs to be represented as JsonArray"

    aput-object v3, v2, v16
    :try_end_f
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_f .. :try_end_f} :catch_d

    move-object/from16 v3, v21

    :try_start_10
    invoke-virtual {v0, v8, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1126
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_10
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_12

    :catch_d
    :goto_f
    move-object/from16 v3, v21

    goto :goto_11

    :catch_e
    move-object/from16 v17, v4

    move-object v3, v14

    :goto_10
    const/4 v9, 0x1

    .line 1130
    :catch_f
    :goto_11
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eee

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v16

    invoke-virtual {v0, v8, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1132
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1135
    :goto_12
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    return-void
.end method

.method public AddMarkersHue(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 23
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of YailList for markers. The inner YailList represents a marker and is composed of lat(Double) [required], long(Double) [required], color(int)[in hue value ranging from 0-360], title(String), snippet(String), draggable(boolean). Return a list of unique ids for the markers that are added"
    .end annotation

    move-object/from16 v8, p0

    .line 1147
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_d

    aget-object v0, v10, v13

    .line 1151
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v2, "AddMarkersHue"

    const/16 v3, 0x2eec

    const/4 v4, 0x1

    if-eqz v1, :cond_c

    const-string v1, "NiotronGoogleMaps"

    const-string v5, "Interior YailLiat"

    .line 1152
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    const-string v6, "AddMarkers"

    const/4 v7, 0x2

    if-ge v5, v7, :cond_0

    .line 1155
    iget-object v5, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    new-array v14, v4, [Ljava/lang/Object;

    const-string v15, "Need more than 2 inputs"

    aput-object v15, v14, v12

    invoke-virtual {v5, v8, v6, v3, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    .line 1162
    :goto_1
    invoke-virtual {v0, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v14

    .line 1163
    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v15

    .line 1164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v7, Ljava/lang/Double;

    move/from16 v17, v5

    const-wide/16 v4, 0x0

    invoke-direct {v7, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 1167
    new-instance v12, Ljava/lang/Double;

    invoke-direct {v12, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 1170
    instance-of v4, v14, Lgnu/math/DFloNum;

    if-eqz v4, :cond_2

    instance-of v4, v15, Lgnu/math/DFloNum;

    if-nez v4, :cond_1

    goto :goto_2

    .line 1175
    :cond_1
    check-cast v14, Lgnu/math/DFloNum;

    invoke-virtual {v14}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 1176
    check-cast v15, Lgnu/math/DFloNum;

    invoke-virtual {v15}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v7, v5

    goto :goto_3

    .line 1171
    :cond_2
    :goto_2
    iget-object v4, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/Object;

    const-string v15, "Not a number for latitude or longitude"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/16 v15, 0x2eec

    invoke-virtual {v4, v8, v2, v15, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move-object v4, v7

    move-object v7, v12

    const/16 v17, 0x0

    .line 1179
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v18, -0x3fa9800000000000L    # -90.0

    cmpg-double v12, v14, v18

    if-ltz v12, :cond_3

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v18, 0x4056800000000000L    # 90.0

    cmpl-double v12, v14, v18

    if-gtz v12, :cond_3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v18, -0x3f99800000000000L    # -180.0

    cmpg-double v12, v14, v18

    if-ltz v12, :cond_3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v18, 0x4066800000000000L    # 180.0

    cmpl-double v12, v14, v18

    if-lez v12, :cond_4

    .line 1181
    :cond_3
    iget-object v14, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/Object;

    const-string v5, "Range for the latitude or longitude is wrong"

    const/16 v16, 0x0

    aput-object v5, v15, v16

    const/16 v5, 0x2eec

    invoke-virtual {v14, v8, v6, v5, v15}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/16 v17, 0x0

    .line 1185
    :cond_4
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1189
    iget-boolean v15, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->g:Z

    .line 1191
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v12

    const-string v14, "Value: "

    move-object/from16 v20, v10

    const/4 v10, 0x3

    if-lt v12, v10, :cond_6

    .line 1192
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x2

    .line 1195
    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    .line 1197
    instance-of v10, v12, Lgnu/math/IntNum;

    if-eqz v10, :cond_5

    .line 1198
    new-instance v2, Ljava/lang/Float;

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/math/IntNum;

    invoke-virtual {v10}, Lgnu/math/IntNum;->intValue()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v2, v10}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move/from16 v19, v2

    move/from16 v22, v11

    move/from16 p1, v15

    goto :goto_5

    .line 1201
    :cond_5
    iget-object v10, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    move/from16 v22, v11

    move-object/from16 p1, v12

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    move-object/from16 v11, p1

    move/from16 p1, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1202
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is not a number"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    aput-object v11, v12, v15

    const/16 v11, 0x2eec

    .line 1201
    invoke-virtual {v10, v8, v2, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/16 v17, 0x0

    goto :goto_4

    :cond_6
    move/from16 v22, v11

    move/from16 p1, v15

    :goto_4
    const/high16 v19, 0x43700000    # 240.0f

    .line 1206
    :goto_5
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const-string v10, ""

    const/4 v11, 0x4

    if-lt v2, v11, :cond_7

    const/4 v2, 0x3

    .line 1207
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1208
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    move-object v12, v10

    .line 1212
    :goto_6
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v11, 0x5

    if-lt v2, v11, :cond_8

    const/4 v2, 0x4

    .line 1213
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1214
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_8
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v11, 0x6

    if-lt v2, v11, :cond_a

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 1224
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v11, v0

    goto :goto_7

    .line 1227
    :cond_9
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "marker not as a list"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x2eec

    invoke-virtual {v0, v8, v6, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move/from16 v11, p1

    const/16 v17, 0x0

    goto :goto_7

    :cond_a
    move/from16 v11, p1

    :goto_7
    if-eqz v17, :cond_b

    .line 1234
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v7

    move/from16 v4, v19

    move-object v5, v12

    move-object v6, v10

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    :cond_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v20

    move/from16 v11, v22

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1240
    :cond_c
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Marker is not represented as list"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x2eec

    invoke-virtual {v0, v8, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1242
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 1245
    :cond_d
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public BoundCamera(DDDD)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Transforms the camera such that the specified latitude/longitude bounds are centered on screen at the greatest possible zoom level. Need to specify both latitudes and longitudes for both northeast location and southwest location of the bounding box"
    .end annotation

    .line 1566
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1567
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p1, p5, p6, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1568
    new-instance p2, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 p1, 0x0

    .line 1570
    invoke-static {p2, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 1571
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method public CameraPositionChanged(DDFFF)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called after the camera position of a map has changed."
    .end annotation

    move-object v9, p0

    .line 1498
    iget-object v10, v9, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v11, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DDFFF)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CompassEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the compass widget is currently enabled in the map ui"
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isCompassEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableCompass(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the compass widget on the map\'s ui. Call this only after event \"MapIsReady\" is received"
    .end annotation

    .line 339
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d()V

    .line 341
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Z

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    return-void
.end method

.method public EnableMapCameraPosChangeListener(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/Disable to listen to map\'s camera position changed event"
    .end annotation

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@EnableMapCameraPosChangeListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->j:Z

    if-eq v0, p1, :cond_0

    .line 818
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->j:Z

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable cameraChangedListener?:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    :cond_2
    return-void
.end method

.method public EnableMapClickListener(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/Disable to listen to map\'s click event"
    .end annotation

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@EnableMapClickListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->h:Z

    if-eq v0, p1, :cond_0

    .line 768
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->h:Z

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable map listener?: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    :cond_2
    return-void
.end method

.method public EnableMapLongClickListener(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/disable to listen to map\'s long click event"
    .end annotation

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@EnableMapLongClickListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->i:Z

    if-eq v0, p1, :cond_0

    .line 793
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->i:Z

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable long click listener?:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    :cond_2
    return-void
.end method

.method public EnableMyLocation(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable or disable my location widget control for Google Map. One can call GetMyLocation() to obtain the current location after enable this.\""
    .end annotation

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@EnableMyLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Z

    if-eq v0, p1, :cond_0

    .line 698
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Z

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 702
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    if-eqz p1, :cond_1

    .line 705
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b()V

    .line 706
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 709
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_2
    :goto_0
    return-void
.end method

.method public EnableRotate(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to rotate a map on the ui. Call this only after the event \"MapIsReady\" is received."
    .end annotation

    .line 353
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d()V

    .line 355
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:Z

    .line 356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    return-void
.end method

.method public EnableScroll(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to scroll a map on the ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .line 367
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d()V

    .line 369
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d:Z

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    return-void
.end method

.method public EnableZoomControl(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the zoom widget on the map\'s ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d()V

    .line 383
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->e:Z

    .line 384
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void
.end method

.method public EnableZoomGesture(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables zoom gesture on the map ui. Call this only after the event  \"MapIsReady\" is received. "
    .end annotation

    .line 396
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d()V

    .line 398
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->f:Z

    .line 399
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    return-void
.end method

.method public FinishedDraggingCircle(IDDD)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event been raised after the action of moving a draggable circle is finished. Possible a user drag the center of the circle or drag the radius marker of the circle"
    .end annotation

    move-object v9, p0

    .line 626
    iget-object v10, v9, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v11, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDDD)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetAllCircleIDs()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all circles Ids. A short cut to get all the references for the eixisting circles"
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetAllMarkerID()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all the existing markers\'s Ids"
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetMarkers()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a list of markers composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    .line 1034
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public GetMyLocation()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get current location using Google Map Service. Return a YailList with first item beingthe latitude, the second item being the longitude, and last time being the accuracy of the reading."
    .end annotation

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 724
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NiotronGoogleMaps"

    const-string v2, "client is connected"

    .line 725
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    .line 729
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the google map height"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 266
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public InfoWindowClicked(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the marker\'s infowindow is clicked, returning marker\'s id"
    .end annotation

    .line 1429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public MapCameraChangedListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the map camera\'s position changed listener is currently enabled"
    .end annotation

    .line 834
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->j:Z

    return v0
.end method

.method public MapClickListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the mapClick event listener is currently enabled"
    .end annotation

    .line 782
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->h:Z

    return v0
.end method

.method public MapIsReady()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the map has been rendered and ready for adding markers or changing other settings. Please add or updating markers within this event"
    .end annotation

    const-string v0, "NiotronGoogleMaps"

    const-string v1, "Map is ready for adding markers and other setting"

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 412
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->k:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MapIsReady"

    .line 413
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MapLongClickListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the map longClick listener is currently enabled"
    .end annotation

    .line 807
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->i:Z

    return v0
.end method

.method public MapType()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates the current map type"
    .end annotation

    .line 839
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "hybrid"

    return-object v0

    :cond_1
    const-string/jumbo v0, "terrain"

    return-object v0

    :cond_2
    const-string v0, "satellite"

    return-object v0

    :cond_3
    const-string v0, "normal"

    return-object v0
.end method

.method public MoveCamera(DDF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the map\'s camera to the specified position and zoom level"
    .end annotation

    .line 1549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1550
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, p5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public MyLocationEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether my locaiton UI control is currently enabled for the Google map."
    .end annotation

    .line 715
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Z

    return v0
.end method

.method public OnLocationChanged(DD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers this event when user location has changed. Only works when EnableMylocation is set to true"
    .end annotation

    .line 1732
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$3;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DD)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMapClick(DD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a tap gesture on the map"
    .end annotation

    .line 1538
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DD)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMapLongClick(DD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a long-press gesture on the map"
    .end annotation

    .line 1520
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$12;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$12;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DD)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerClick(IDD)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker is clicked"
    .end annotation

    .line 1419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$9;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$9;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDD)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerDrag(IDD)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker is been dragged"
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDD)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerDragEnd(IDD)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the user drags a marker and finish the action, returning marker\'s id and it\'s latest position"
    .end annotation

    .line 1409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDD)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerDragStart(IDD)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker starts been dragged"
    .end annotation

    .line 1387
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$6;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDD)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RemoveCircle(I)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a circle for the map. Returns true if successfully removed, false if the circle does not exist with the specified id"
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 519
    :cond_0
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    if-eqz v0, :cond_1

    .line 520
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->removeFromMap()V

    .line 521
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 524
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_2

    .line 525
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public RemoveMarker(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a marker from the map"
    .end annotation

    .line 1313
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_0
    return-void
.end method

.method public RotateEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to rotate a map on the ui is currently enabled"
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public ScrollEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to scroll a map on the ui is currently enabled"
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public SetMapType(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the layer of Google map. Default layer is \"normal\", other choices including \"hybrid\",\"satellite\", and \"terrain\" "
    .end annotation

    const-string v0, "normal"

    .line 741
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 742
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:I

    goto :goto_0

    :cond_0
    const-string v0, "hybrid"

    .line 743
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    .line 744
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:I

    goto :goto_0

    :cond_1
    const-string v0, "satellite"

    .line 745
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 746
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "terrain"

    .line 747
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 748
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:I

    goto :goto_0

    .line 750
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting layer with name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NiotronGoogleMaps"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x2eec

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not the correct type"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "SetMapType"

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 755
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_4

    .line 756
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    :cond_4
    return-void
.end method

.method public UpdateCircle(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of an existing circle. Properties include: \"alpha\"(number, value ranging from 0~255), \"color\" (nimber, hue value ranging 0~360), \"radius\"(number in meters)"
    .end annotation

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inputs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 541
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "UpdateCircle"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 545
    instance-of p1, v2, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    if-eqz p1, :cond_0

    .line 546
    move-object p1, v2

    check-cast p1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getCircle()Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 549
    :goto_0
    instance-of v6, v2, Lcom/google/android/gms/maps/model/Circle;

    if-eqz v6, :cond_1

    .line 550
    move-object p1, v2

    check-cast p1, Lcom/google/android/gms/maps/model/Circle;

    .line 555
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "alpha"

    .line 556
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 558
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v7

    .line 559
    invoke-static {v7, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 560
    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 562
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    .line 563
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    :cond_2
    const-string v1, "color"

    .line 566
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    new-array v0, v0, [F

    .line 569
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v0, v4

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v0, v5

    const/4 v8, 0x2

    aput v7, v0, v8

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    .line 570
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    :cond_3
    const-string v0, "radius"

    .line 573
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 576
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 578
    instance-of p1, v2, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    if-eqz p1, :cond_5

    .line 580
    move-object p1, v2

    check-cast p1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 581
    move-object p2, v2

    check-cast p2, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object p2

    .line 582
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 583
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 584
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v6, v1

    invoke-static {p1, v6, v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 585
    invoke-virtual {p1, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 v0, 0x43520000    # 210.0f

    .line 586
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 583
    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 589
    check-cast v2, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    invoke-virtual {v2, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->setRadiusMarker(Lcom/google/android/gms/maps/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 598
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x2eec

    new-array v0, v5, [Ljava/lang/Object;

    .line 599
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v4

    .line 598
    invoke-virtual {p1, p0, v3, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 605
    :cond_4
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x2eef

    new-array v0, v5, [Ljava/lang/Object;

    .line 606
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    .line 605
    invoke-virtual {p2, p0, v3, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public UpdateMarker(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of a marker, note that the marker has to be added first or else will throw an exception! Properties include: \"color\"(hue value ranging from 0~360), \"title\", \"snippet\", \"draggable\"(give either true or false as the value)."
    .end annotation

    .line 1255
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1256
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NiotronGoogleMaps"

    const-string v3, "@UpdateMarker"

    .line 1258
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markerId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 1263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "marker?:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    const-string p2, "color"

    .line 1267
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p2, "we are changing color"

    .line 1268
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v3, 0x0

    cmpg-float p3, p3, v3

    if-ltz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float p3, p3, v3

    if-lez p3, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_1

    .line 1271
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x2eec

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1272
    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v5

    const-string p2, "UpdateMarker"

    .line 1271
    invoke-virtual {p3, p0, p2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    const-string/jumbo p2, "title"

    .line 1279
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string/jumbo p2, "we are changing title"

    .line 1280
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo p2, "snippet"

    .line 1283
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string/jumbo p2, "we are changing snippet"

    .line 1284
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    :cond_4
    const-string p2, "draggable"

    .line 1287
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string/jumbo p2, "we are changing draggable"

    .line 1288
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    new-instance p2, Ljava/lang/Boolean;

    invoke-direct {p2, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    :cond_5
    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the google map width"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 257
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public ZoomControlEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom widget on the map ui is currently enabled"
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isZoomControlsEnabled()Z

    move-result v0

    return v0
.end method

.method public ZoomGestureEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom gesture is currently enabled"
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public addOverlay()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds a overlay"
    .end annotation

    .line 1847
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v1, 0x40445b672b884407L    # 40.714086

    const-wide v3, -0x3fad715d074213a1L    # -74.228697

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1848
    new-instance v1, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>()V

    const v2, 0x46066000    # 8600.0f

    const v3, 0x45cb2000    # 6500.0f

    .line 1849
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    .line 1850
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;

    return-void
.end method

.method public addPolygon(DDDD)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds polygon"
    .end annotation

    .line 1751
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/gms/maps/model/LatLng;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p3, p4, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p3, p4, p5, p6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 p3, 0x2

    aput-object v2, v1, p3

    new-instance p3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p3, p1, p2, p5, p6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 p4, 0x3

    aput-object p3, v1, p4

    new-instance p3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p3, p1, p2, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 p1, 0x4

    aput-object p3, v1, p1

    .line 1752
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    .line 1759
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object p1

    .line 1760
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTileOverlay()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add title overlay"
    .end annotation

    .line 1855
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$4;

    const/16 v1, 0x100

    invoke-direct {v0, p0, v1, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;II)V

    .line 1892
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    .line 1893
    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    .line 1892
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    return-void
.end method

.method public clearAllPolygons()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all the polygons"
    .end annotation

    .line 1765
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1766
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polygon;

    .line 1767
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawCentralSquare()V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a central square"
    .end annotation

    move-object/from16 v0, p0

    .line 1773
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 1775
    iget-object v2, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    .line 1776
    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    .line 1778
    iget-wide v3, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1779
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1781
    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1782
    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 1785
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1786
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double v1, v6, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v10

    sub-double v3, v8, v4

    mul-double v3, v3, v10

    .line 1795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[{lat:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, ",lng:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "}]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->AddMarkersFromJson(Ljava/lang/String;)V

    .line 1797
    new-instance v5, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/google/android/gms/maps/model/LatLng;

    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    add-double v12, v6, v1

    add-double v14, v8, v3

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/16 v16, 0x0

    aput-object v11, v10, v16

    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    sub-double/2addr v6, v1

    invoke-direct {v11, v6, v7, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v1, 0x1

    aput-object v11, v10, v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    sub-double/2addr v8, v3

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x2

    aput-object v2, v10, v3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v12, v13, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x3

    aput-object v2, v10, v3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x4

    aput-object v2, v10, v3

    .line 1798
    invoke-virtual {v5, v10}, Lcom/google/android/gms/maps/model/PolygonOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    .line 1805
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v2

    .line 1806
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBoundingBox(DDD)Ljava/lang/String;
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets blonding box"
    .end annotation

    .line 1818
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1819
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, p5

    .line 1825
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    mul-double v8, v8, v6

    .line 1826
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, 0x42c260252d89d1a5L    # 4.040829980355529E13

    mul-double v10, v10, v6

    .line 1827
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v12, 0x415854a640000000L    # 6378137.0

    mul-double v6, v6, v12

    .line 1828
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide v14, 0x41583fc413333333L    # 6356752.3

    mul-double v12, v12, v14

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    mul-double v6, v6, v6

    mul-double v12, v12, v12

    add-double/2addr v6, v12

    div-double/2addr v8, v6

    .line 1829
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1832
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    div-double v6, v4, v6

    sub-double v10, v0, v6

    add-double/2addr v0, v6

    div-double/2addr v4, v8

    sub-double v6, v2, v4

    add-double/2addr v2, v4

    .line 1839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapCenter()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets map center"
    .end annotation

    .line 1898
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 1899
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getZoomLevelInfo()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets zoom level info"
    .end annotation

    .line 1904
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    return v0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 12

    .line 1479
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1480
    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1481
    iget v2, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1482
    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1483
    iget p1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1484
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->CameraPositionChanged(DDFFF)V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "NiotronGoogleMaps"

    const-string v0, "onConnected to location listener....."

    .line 1693
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1441
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->InfoWindowClicked(I)V

    return-void
.end method

.method public onInitialize()V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 1727
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnLocationChanged(DD)V

    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    const-string v0, "NiotronGoogleMaps"

    const-string v1, "receive google maps\'s onMapClick"

    .line 1531
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMapClick(DD)V

    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 1510
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMapLongClick(DD)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    const-string v0, "NiotronGoogleMaps"

    const-string v1, "Yes, we have a google map..."

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->k:Z

    .line 288
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Lcom/google/android/gms/maps/GoogleMap;

    .line 289
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c()V

    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 7

    .line 1448
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1449
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 1450
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMarkerClick(IDD)V

    const/4 p1, 0x0

    return p1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 8

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dragging M:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1331
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMarkerDrag(IDD)V

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    .line 1336
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1337
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 11

    .line 1346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1349
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1350
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMarkerDragEnd(IDD)V

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    .line 1355
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1356
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 1358
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1359
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 1360
    iget-wide v5, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getRadius()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->FinishedDraggingCircle(IDDD)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 8

    .line 1369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1371
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1372
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMarkerDragStart(IDD)V

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;

    .line 1377
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1378
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$a;->onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 1719
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    const/4 v0, 0x0

    .line 1721
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->l:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "NiotronGoogleMaps"

    const-string v1, "in onResume...Google Map redraw"

    .line 647
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Z

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b()V

    .line 651
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a()V

    const/4 v0, 0x1

    .line 655
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->l:Z

    return-void
.end method
