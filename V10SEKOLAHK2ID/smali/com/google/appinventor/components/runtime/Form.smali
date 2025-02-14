.class public Lcom/google/appinventor/components/runtime/Form;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/HandlesEventDispatching;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Top-level component containing all other components in the program"
    showOnPalette = false
    version = 0x1e
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Form$a;,
        Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    }
.end annotation


# static fields
.field public static final APPINVENTOR_URL_SCHEME:Ljava/lang/String; = "niotron"

.field public static final ASSETS_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field public static final MAX_PERMISSION_NONCE:I = 0x186a0

.field private static a:J = 0x0L

.field private static final a:Ljava/lang/String; = "Form"

.field private static a:Z = false

.field protected static activeForm:Lcom/google/appinventor/components/runtime/Form; = null

.field private static final b:I

.field private static final b:Ljava/lang/String; = "APP_INVENTOR_RESULT"

.field private static final c:I

.field private static final c:Ljava/lang/String; = "APP_INVENTOR_START"

.field private static final d:I = 0x1

.field private static e:I

.field private static h:Ljava/lang/String;

.field public static highQuality:Z

.field private static k:Z

.field private static l:Z

.field private static q:Z


# instance fields
.field public FRAME_LAYOUT_ID_CONSTANT:I

.field private a:F

.field private a:Landroid/app/ProgressDialog;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Bundle;

.field private a:Landroid/view/Menu;

.field private a:Landroid/widget/FrameLayout;

.field private a:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private a:Landroidx/drawerlayout/widget/DrawerLayout;

.field private a:Landroidx/fragment/app/FragmentManager;

.field private a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field private a:Lcom/google/appinventor/components/common/FileScope;

.field private a:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private a:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private a:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private a:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

.field private a:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private a:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Random;

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final androidUIHandler:Landroid/os/Handler;

.field private b:F

.field private b:J

.field private b:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/PermissionResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnClearListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private f:Ljava/lang/String;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field protected formName:Ljava/lang/String;

.field private g:I

.field private g:Ljava/lang/String;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private i:Ljava/lang/String;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/OnInitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:I

.field private j:Ljava/lang/String;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:I

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private m:Z

.field private n:I

.field private n:Z

.field private o:Z

.field private p:Z

.field public screenInitialized:Z

.field protected startupValue:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "&HFF3700B3"

    .line 118
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->b:I

    const-string v0, "&HFFFF4081"

    .line 120
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->c:I

    const/4 v0, 0x2

    .line 148
    sput v0, Lcom/google/appinventor/components/runtime/Form;->e:I

    const/4 v0, 0x0

    .line 206
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    const-wide v1, 0x2540be400L

    .line 240
    sput-wide v1, Lcom/google/appinventor/components/runtime/Form;->a:J

    .line 274
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->q:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/List;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    const v0, 0x16e57d

    .line 143
    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->FRAME_LAYOUT_ID_CONSTANT:I

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Z

    .line 157
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->c:Z

    .line 158
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->d:Z

    .line 160
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->e:Z

    const-string v1, ""

    .line 161
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/lang/String;

    .line 179
    sget-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 180
    sget-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->b:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 183
    sget v2, Lcom/google/appinventor/components/runtime/Form;->a:I

    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->g:I

    .line 184
    sget v2, Lcom/google/appinventor/components/runtime/Form;->b:I

    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->h:I

    .line 185
    sget v2, Lcom/google/appinventor/components/runtime/Form;->c:I

    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->i:I

    .line 208
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Set;

    .line 210
    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/FileScope;

    .line 213
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/HashMap;

    .line 214
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Map;

    .line 215
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->b:Ljava/util/Set;

    .line 216
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->c:Ljava/util/Set;

    .line 217
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->d:Ljava/util/Set;

    .line 218
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/util/Set;

    .line 219
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->f:Ljava/util/Set;

    .line 220
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->g:Ljava/util/Set;

    .line 221
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/util/Set;

    .line 224
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/util/Set;

    .line 227
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->j:Ljava/util/Set;

    .line 228
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->k:Ljava/util/Set;

    .line 231
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->b:Ljava/util/HashMap;

    .line 233
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Random;

    .line 237
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 241
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/google/appinventor/components/runtime/Form;->a:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Form;->b:J

    const/4 v2, 0x0

    .line 254
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Form;->m:Z

    .line 255
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Form;->n:Z

    const/4 v3, 0x0

    .line 256
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/os/Bundle;

    .line 261
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Form;->o:Z

    .line 265
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->p:Z

    const/4 v0, -0x1

    .line 267
    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:I

    .line 269
    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->n:I

    .line 297
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/LinkedHashMap;

    .line 3020
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->j:Ljava/lang/String;

    return-void
.end method

.method private static a()I
    .locals 2

    .line 739
    sget v0, Lcom/google/appinventor/components/runtime/Form;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/Form;->e:I

    return v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 1432
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1433
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1434
    new-instance p2, Landroid/text/style/ImageSpan;

    invoke-direct {p2, p1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x1

    const/16 v1, 0x21

    .line 1435
    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private a(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;
    .locals 1

    .line 720
    sget-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne p2, v0, :cond_0

    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 723
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decodeJSONStringForForm -- decoding JSON representation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 647
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeJSONStringForForm -- got decoded JSON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const-string v2, ""

    .line 650
    :catch_1
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x387

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    invoke-virtual {v1, v1, p1, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/HashMap;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Random;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/util/Set;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 2

    .line 1360
    :try_start_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1361
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1362
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1363
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1364
    invoke-direct {p0, p1, v1, p3}, Lcom/google/appinventor/components/runtime/Form;->a(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1366
    :cond_0
    instance-of p1, p2, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 1367
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 3181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/graphics/drawable/Drawable;

    .line 3182
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, ""

    if-eq v1, v3, :cond_1

    if-eqz v0, :cond_1

    .line 3183
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3184
    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->f:I

    if-eqz v1, :cond_0

    move v2, v1

    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 3187
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->f:I

    if-eqz v1, :cond_2

    move v2, v1

    :cond_2
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3190
    :goto_0
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 3191
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static a(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .locals 2

    .line 1254
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Component;

    .line 1255
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ComponentContainer;

    if-eqz v1, :cond_1

    .line 1256
    check-cast v0, Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Form;->a(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    goto :goto_0

    .line 1257
    :cond_1
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    if-eqz v1, :cond_0

    .line 1258
    check-cast v0, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/AccessibleComponent;->setHighContrast(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->f()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 103
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->k:Z

    return v0
.end method

.method private static b(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .locals 2

    .line 1293
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Component;

    .line 1294
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ComponentContainer;

    if-eqz v1, :cond_1

    .line 1295
    check-cast v0, Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Form;->b(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    goto :goto_0

    .line 1296
    :cond_1
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    if-eqz v1, :cond_0

    .line 1297
    check-cast v0, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/AccessibleComponent;->setLargeFont(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->i()V

    return-void
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->j()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 421
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Set;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Form"

    const-string v2, "Exception while attempting to learn permissions."

    .line 425
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->g()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 430
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->hasActionBar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    :goto_0
    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->Scrollable(Z)V

    .line 436
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast(Z)V

    .line 437
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText(Z)V

    const-string v1, "Responsive"

    .line 438
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    const-string v1, ""

    .line 439
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->AboutScreen(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->BackgroundImage(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 441
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontal(I)V

    .line 442
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignVertical(I)V

    .line 443
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->Title(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->Subtitle(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowStatusBar(Z)V

    .line 446
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    const/4 v1, -0x1

    .line 447
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->TitleColor(I)V

    .line 448
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->SubtitleColor(I)V

    .line 449
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowListsAsJson(Z)V

    .line 450
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    .line 451
    sget v3, Lcom/google/appinventor/components/runtime/Form;->c:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->AccentColor(I)V

    .line 452
    sget v3, Lcom/google/appinventor/components/runtime/Form;->a:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColor(I)V

    .line 453
    sget v3, Lcom/google/appinventor/components/runtime/Form;->b:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColorDark(I)V

    const-string v3, "Theme.MaterialComponents.Light.DarkActionBar"

    .line 454
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->Theme(Ljava/lang/String;)V

    const-string/jumbo v3, "unspecified"

    .line 455
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BackgroundColor(I)V

    .line 457
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarColor(I)V

    .line 458
    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 459
    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 460
    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V

    .line 461
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 462
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/view/Menu;

    if-eqz v1, :cond_1

    .line 463
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_2

    .line 466
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    const/4 v1, 0x0

    .line 467
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 470
    :goto_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 471
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 474
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 475
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 477
    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowAboutInMenu(Z)V

    .line 478
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->StatusBarLightIcons(Z)V

    .line 479
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowNavigationBar(Z)V

    .line 480
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->HighQualityImages(Z)V

    .line 482
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 483
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 484
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V

    return-void
.end method

.method private f()V
    .locals 5

    const-string v0, "Form"

    const-string v1, "recomputeLayout called"

    .line 1499
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1502
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1504
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1516
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->h:Z

    if-eqz v1, :cond_1

    .line 1517
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    .line 1518
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 1521
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    goto :goto_0

    .line 1524
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    .line 1526
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->FRAME_LAYOUT_ID_CONSTANT:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1527
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1531
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->a(Landroid/view/View;)V

    const-string v1, "About to create a new ScaledFrameLayout"

    .line 1533
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    new-instance v0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    .line 1535
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 1536
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1537
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1542
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1544
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1545
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1548
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1551
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1554
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1555
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->requestLayout()V

    .line 1556
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$2;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static finishActivity()V
    .locals 2

    .line 2858
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2859
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    return-void

    .line 2861
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithResult(Ljava/lang/Object;)V
    .locals 2

    .line 2867
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_1

    .line 2868
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    .line 2869
    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm;->setResult(Ljava/lang/Object;)V

    .line 2870
    sget-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "close screen with value"

    .line 2872
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2873
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "APP_INVENTOR_RESULT"

    .line 2874
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2875
    sget-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 2878
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "activeForm is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static finishActivityWithTextResult(Ljava/lang/String;)V
    .locals 2

    .line 2884
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2885
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "APP_INVENTOR_RESULT"

    .line 2886
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2887
    sget-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    return-void

    .line 2889
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "activeForm is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static finishApplication()V
    .locals 2

    .line 2904
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2905
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromBlocks()V

    return-void

    .line 2907
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g()V
    .locals 0

    .line 2916
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->h()V

    return-void
.end method

.method public static getActiveForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 2815
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public static getCompatibilityMode()Z
    .locals 1

    .line 3195
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->k:Z

    return v0
.end method

.method public static getStartText()Ljava/lang/String;
    .locals 2

    .line 2826
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2827
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    return-object v0

    .line 2829
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartValue()Ljava/lang/Object;
    .locals 2

    .line 2844
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2845
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    const-string v1, "get start value"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2847
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x1

    .line 2925
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->a:Z

    .line 2927
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2929
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v1, "Screen1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2935
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 9

    .line 3006
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$8;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Form$8;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 3007
    new-instance v8, Lcom/google/appinventor/components/runtime/Form$9;

    invoke-direct {v8, p0}, Lcom/google/appinventor/components/runtime/Form$9;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v1, "Stop this application and exit? You\'ll need to relaunch the application to use it again."

    const-string v2, "Stop application?"

    const-string v3, "Stop and exit"

    const-string v4, "Don\'t stop"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v7, v8

    .line 3008
    invoke-static/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 3030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<p><small><em>Invented Niotron<br>niotron.com</em></small></p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    const-string v2, "<br>"

    .line 3031
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "About this app"

    const-string v2, "Got it"

    .line 3033
    invoke-static {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonEncodeForForm -- creating JSON representation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2700
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonEncodeForForm -- got JSON representation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const-string v0, ""

    .line 2702
    :catch_1
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x388

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2705
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    .line 2702
    invoke-virtual {v1, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static switchForm(Ljava/lang/String;)V
    .locals 4

    .line 2599
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/lang/String;

    .line 2600
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v1, :cond_1

    .line 2602
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.niotron.companion"

    .line 2604
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2606
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2607
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    .line 2608
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    sget-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2613
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "activeForm is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static switchFormWithStartValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 2627
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/lang/String;

    .line 2628
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v1, :cond_1

    .line 2630
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.niotron.companion"

    .line 2632
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2634
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2635
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    .line 2636
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2638
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    sget-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2641
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "activeForm is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 2741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 2742
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method protected $define()V
    .locals 1

    .line 883
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    return-object p0
.end method

.method public AboutScreen()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Information about the screen.  It appears when \"About this Application\" is selected from the system menu. Use it to inform people about your app.  In multiple screen apps, each screen has its own AboutScreen info."
    .end annotation

    .line 1701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->d:Ljava/lang/String;

    return-object v0
.end method

.method public AboutScreen(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1715
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->d:Ljava/lang/String;

    return-void
.end method

.method public AccentColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2447
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->i:I

    return v0
.end method

.method public AccentColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF4081"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the accent color used for highlights and other user interface accents."
        userVisible = false
    .end annotation

    .line 2436
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->i:I

    return-void
.end method

.method public ActionBar(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1957
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:Z

    if-eq v0, p1, :cond_1

    .line 1958
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setActionBarEnabled(Z)V

    if-eqz p1, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->e:Z

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:Z

    goto :goto_0

    .line 1962
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:Z

    .line 1964
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->m:Z

    :cond_1
    return-void
.end method

.method public ActionBarIconClick(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Title bar icon clicked"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ActionBarIconClick"

    .line 1484
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AddActionBarIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Call this after MenuInitialize Event"
    .end annotation

    .line 1442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1444
    :try_start_0
    invoke-interface {v0, p2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$19;

    invoke-direct {v1, p0, p2}, Lcom/google/appinventor/components/runtime/Form$19;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 1445
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p2

    .line 1451
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 p1, 0x2

    .line 1452
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public AddMenuItem(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Call this after MenuInitialize Event"
    .end annotation

    .line 1395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1396
    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$17;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form$17;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 1397
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public AddMenuItemWithIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Call this after MenuInitialize Event"
    .end annotation

    .line 1409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1411
    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$18;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form$18;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 1412
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    .line 1418
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    .line 1419
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->px(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->px(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {p2, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1420
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public AdmobAppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/HorizontalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the screen are aligned  horizontally. The choices are: 1 = left aligned, 3 = horizontally centered,  2 = right aligned."
    .end annotation

    .line 1978
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 3
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/HorizontalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1995
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x579

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1998
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "HorizontalAlignment"

    .line 1997
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 2001
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    return-void
.end method

.method public AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method

.method public AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 2020
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-void
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/VerticalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom. Vertical alignment has no effect if the screen is scrollable."
    .end annotation

    .line 2034
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignVertical(I)V
    .locals 3
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VerticalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2053
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x57a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2056
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "VerticalAlignment"

    .line 2055
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 2059
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    return-void
.end method

.method public AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .locals 1

    .line 2077
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 2078
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-void
.end method

.method public AppName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This is the display name of the installed application in the phone.If the AppName is blank, it will be set to the name of the project when the project is built."
        userVisible = false
    .end annotation

    return-void
.end method

.method public AreMultiplePermissionGranted(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "When Verifying that all the permissions mentioned in the list have been allowed, it will return true or false."
    .end annotation

    .line 3259
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 3260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3261
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 3262
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3264
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3266
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public AskForPermission(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ask the user to grant access to a dangerous permission."
    .end annotation

    const-string v0, "."

    .line 1205
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1208
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$16;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Form$16;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method public AskForPermissionAbstract(Lcom/google/appinventor/components/common/Permission;)V
    .locals 0

    .line 1309
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->AskForPermission(Ljava/lang/String;)V

    return-void
.end method

.method public BackPressed()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Device back button pressed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackPressed"

    .line 599
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1583
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->f:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1598
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1600
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->f:Z

    .line 1601
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->f:I

    .line 1604
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->a(Landroid/view/View;)V

    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .line 1616
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1636
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/lang/String;

    .line 1639
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1641
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Form"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1642
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/graphics/drawable/Drawable;

    .line 1644
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->a(Landroid/view/View;)V

    return-void
.end method

.method public BigDefaultText(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1286
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->j:Z

    .line 1287
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->b(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 1288
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->f()V

    return-void
.end method

.method public BigDefaultText()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, we will use high contrast mode"
    .end annotation

    .line 1272
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->j:Z

    return v0
.end method

.method public BlocksToolkit(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "subset_json"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A JSON string representing the subset for the screen. Authors of template apps can use this to control what components, designer properties, and blocks are available in the project."
        userVisible = false
    .end annotation

    return-void
.end method

.method public ClearMenu()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all the existing menus"
    .end annotation

    .line 1473
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 1474
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public ClearTextEnabled(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public CloseScreenAnimation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScreenAnimation;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for closing current screen and returning  to the previous screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .line 2147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v0, :cond_0

    .line 2148
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public CloseScreenAnimation(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2164
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x389

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Screen"

    .line 2166
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 2170
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    return-void
.end method

.method public CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 2180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 0

    .line 2191
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->b:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-void
.end method

.method public DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App"
        editorType = "file_scope"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1657
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/FileScope;

    return-void
.end method

.method public ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an error occurs. Only some errors will raise this condition.  For those errors, the system will show a notification by default.  You can use this event handler to prescribe an error behavior different than the default."
    .end annotation

    .line 1022
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 1023
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", componentType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", functionName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", messages = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    .line 1028
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "ErrorOccurred"

    .line 1027
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz p1, :cond_0

    .line 1035
    new-instance p1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1042
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 1043
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", componentType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", functionName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", messages = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    .line 1048
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "ErrorOccurred"

    .line 1047
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz p1, :cond_0

    .line 1055
    new-instance p1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5, p6}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen height (y-size)."
    .end annotation

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form.Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->l:I

    return v0
.end method

.method public HideKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the onscreen soft keyboard."
    .end annotation

    .line 3203
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    :cond_0
    const-string v1, "input_method"

    .line 3207
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3208
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public HighContrast(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1248
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->i:Z

    .line 1249
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->a(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 1250
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->f()V

    return-void
.end method

.method public HighContrast()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, we will use high contrast mode"
    .end annotation

    .line 1234
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->i:Z

    return v0
.end method

.method public HighQualityImages(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1349
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    return-void
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public Initialize()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The Initialize event is run when the Screen starts and is only run once per screen."
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$12;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$12;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public IsPermissionGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the mentioned permission has been granted, it will return true or false."
    .end annotation

    .line 3251
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public KeepScreeenOn()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keeps the screen on"
    .end annotation

    .line 3213
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public MenuInitialize()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Menu initialized"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MenuInitialize"

    .line 1494
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MenuItemClick(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Menu item clicked"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MenuItemClick"

    .line 1489
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MinSdkVersion(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "19"
        editorType = "sdk_versions"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public MoveTaskToBack()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move task to back"
    .end annotation

    const/4 v0, 0x1

    .line 1222
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->moveTaskToBack(Z)Z

    return-void
.end method

.method public NavigationBarColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets navigation bar color"
    .end annotation

    .line 2542
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2543
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method public OnCreate()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invokes when the Screen is created"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnCreate"

    .line 978
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnDestroy()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invokes when the Screen is destroyed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnDestroy"

    .line 989
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnPause()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked when the user leaves the Screen"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnPause"

    .line 999
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnResume()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked when the Screen comes to the foreground"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnResume"

    .line 1004
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnStart()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invokes when the Screen starts to show the UI"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnStart"

    .line 984
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnStop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invokes when Screen is no longer visible to the user"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnStop"

    .line 994
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OpenScreenAnimation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScreenAnimation;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for switching to another screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .line 2091
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v0, :cond_0

    .line 2092
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public OpenScreenAnimation(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2107
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x389

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Screen"

    .line 2109
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 2113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    return-void
.end method

.method public OpenScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 2123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 0

    .line 2133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-void
.end method

.method public OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when another screen has closed and control has returned to this screen."
    .end annotation

    .line 2713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OtherScreenClosed, otherScreenName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2714
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    .line 2713
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OtherScreenClosed"

    .line 2715
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PackageName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "android.permission."

    .line 1163
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 1165
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "PermissionDenied"

    .line 1167
    invoke-static {p0, v3, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x38c

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 1168
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public PermissionGranted(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to handle when the app user has granted a needed permission. This event is only run when permission is granted in response to the AskForPermission method."
    .end annotation

    const-string v0, "android.permission."

    .line 1182
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 1184
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PermissionGranted"

    .line 1186
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Platform()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The platform the app is running on, for example \"Android\" or \"iOS\"."
    .end annotation

    const-string v0, "Android"

    return-object v0
.end method

.method public PlatformVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The dotted version number of the platform, such as 4.2.2 or 10.0. This is platform specific and there is no guarantee that it has a particular format."
    .end annotation

    .line 2588
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public PollfishApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public PrimaryColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2410
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->g:I

    return v0
.end method

.method public PrimaryColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for Material UI elements, such as the ActionBar."
        userVisible = false
    .end annotation

    .line 2400
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setPrimaryColor(I)V

    return-void
.end method

.method public PrimaryColorDark()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2428
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->h:I

    return v0
.end method

.method public PrimaryColorDark(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3700B3"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for darker elements in Material UI."
        userVisible = false
    .end annotation

    .line 2418
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->h:I

    return-void
.end method

.method public ScreenFontTypeFace(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1355
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/lang/String;

    return-void
.end method

.method public ScreenOrientation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScreenOrientation;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The requested screen orientation, specified as a text value.  Commonly used values are landscape, portrait, sensor, user and unspecified.  See the Android developer documentation for ActivityInfo.Screen_Orientation for the complete list of possible settings."
    .end annotation

    .line 1878
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ScreenOrientation(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenOrientation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unspecified"
        editorType = "screen_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1944
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenOrientation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x385

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScreenOrientation"

    .line 1946
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1950
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V

    return-void
.end method

.method public ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 1

    .line 1886
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getRequestedOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1912
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1902
    :pswitch_0
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1906
    :pswitch_1
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1904
    :pswitch_2
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1910
    :pswitch_3
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1908
    :pswitch_4
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1892
    :pswitch_5
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1896
    :pswitch_6
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1888
    :pswitch_7
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1900
    :pswitch_8
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1894
    :pswitch_9
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1890
    :pswitch_a
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1898
    :pswitch_b
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V
    .locals 3

    .line 1921
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScreenOrientation;->getOrientationConstant()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 1922
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    const/16 v0, 0x385

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScreenOrientation"

    .line 1923
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1927
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    return-void
.end method

.method public ScreenOrientationChanged()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen orientation changed"
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 1010
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;->onOrientationChange()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ScreenOrientationChanged"

    .line 1012
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Scrollable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1337
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->h:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 1341
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->h:Z

    .line 1342
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->f()V

    return-void
.end method

.method public Scrollable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, there will be a vertical scrollbar on the screen, and the height of the application can exceed the physical height of the device. When unchecked, the application height is constrained to the height of the device."
    .end annotation

    .line 1323
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->h:Z

    return v0
.end method

.method public SetFont()V
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "/"

    .line 959
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 960
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 962
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 967
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 968
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 972
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->a(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Typeface;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public ShowAboutInMenu(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1376
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->o:Z

    if-eqz p1, :cond_0

    .line 1377
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/view/Menu;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public ShowListsAsJson(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If false, lists will be converted to strings using Lisp notation, i.e., as symbols separated by spaces, e.g., (a 1 b2 (c d). If true, lists will appear as in Json or Python, e.g.  [\"a\", 1, \"b\", 2, [\"c\", \"d\"]].  This property appears only in Screen 1, and the value for Screen 1 determines the behavior for all screens. The property defaults to \"true\" meaning that the App Inventor programmer must explicitly set it to \"false\" if Lisp syntax is desired. In older versions of App Inventor, this setting defaulted to false. Older projects should not have been affected by this default settings update."
        userVisible = false
    .end annotation

    .line 2316
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->l:Z

    return-void
.end method

.method public ShowListsAsJson()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 2329
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->l:Z

    return v0
.end method

.method public ShowNavigationBar(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1824
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->c:Z

    if-nez p1, :cond_0

    .line 1826
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1828
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->d:Z

    if-nez v0, :cond_1

    .line 1829
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1831
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1834
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form$3;-><init>(Lcom/google/appinventor/components/runtime/Form;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public ShowOptionsMenu(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1383
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->p:Z

    if-nez p1, :cond_0

    .line 1385
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/view/Menu;

    if-eqz p1, :cond_0

    .line 1386
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1389
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1390
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    return-void
.end method

.method public ShowStatusBar(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1809
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Z

    if-eq p1, v0, :cond_1

    const/16 v0, 0x800

    const/16 v1, 0x400

    if-eqz p1, :cond_0

    .line 1811
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1812
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 1814
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1815
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1817
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->b:Z

    :cond_1
    return-void
.end method

.method public ShowStatusBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible."
    .end annotation

    .line 1796
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Z

    return v0
.end method

.method public ShowTitleBarBackButton(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show The Title Bar Back Button, It won\'t show if sidebar is present in screen and it\'s icon is showing"
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-nez v0, :cond_2

    .line 1462
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1463
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1464
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1465
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-void

    .line 1467
    :cond_2
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Cannot show back button in title bar if sidebar is present"

    const-string v1, "Screen"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public Sizing(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "Responsive"
        editorType = "sizing"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to fixed,  screen layouts will be created for a single fixed-size screen and autoscaled. If set to responsive, screen layouts will use the actual resolution of the device.  See the documentation on responsive design in App Inventor for more information. This property appears on Screen1 only and controls the sizing for all screens in the app."
        userVisible = false
    .end annotation

    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sizing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->k:I

    .line 2271
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->l:I

    const-string v0, "Fixed"

    .line 2272
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2273
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->k:Z

    .line 2274
    iget p1, p0, Lcom/google/appinventor/components/runtime/Form;->k:I

    int-to-float p1, p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->k:I

    .line 2275
    iget p1, p0, Lcom/google/appinventor/components/runtime/Form;->l:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->l:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2277
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->k:Z

    .line 2279
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:F

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 2280
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    .line 2281
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2283
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "formWidth = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " formHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SplashEnabled(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public SplashImage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public StatusBarColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3700B3"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets status bar color"
    .end annotation

    .line 2552
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2553
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 2556
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 2559
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2562
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public StatusBarLightIcons(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1847
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1848
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->d:Z

    if-nez p1, :cond_0

    .line 1850
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1852
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->c:Z

    if-nez p1, :cond_1

    .line 1853
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1855
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Subtitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1765
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public Subtitle(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1772
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public SubtitleColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1777
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->n:I

    return v0
.end method

.method public SubtitleColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1784
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->n:I

    .line 1785
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    return-void
.end method

.method public TargetSdkVersion(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "33"
        editorType = "sdk_versions"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public Theme(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Theme.MaterialComponents.Light.DarkActionBar"
        editorType = "theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the theme used by the application."
        userVisible = false
    .end annotation

    .line 2465
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 2466
    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->f:I

    .line 2467
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->a(Landroid/view/View;)V

    return-void

    .line 2470
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "AppTheme"

    .line 2471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    .line 2472
    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->f:I

    goto :goto_0

    .line 2474
    :cond_1
    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->f:I

    .line 2476
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->a(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    .line 2478
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->g:Z

    const-string v0, "Theme.MaterialComponents"

    .line 2479
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2480
    sget-object p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->MATERIAL_DARK:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_1

    :cond_3
    const-string v0, "Theme.MaterialComponents.Light.DarkActionBar"

    .line 2481
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2482
    sget-object p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->MATERIAL:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The caption for the form, which apears in the title bar"
    .end annotation

    .line 1672
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1685
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    .line 1686
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setTitle(Ljava/lang/CharSequence;)V

    .line 1687
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->updateTitle()V

    return-void
.end method

.method public TitleBarBackButtonClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Title bar back button clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TitleBarBackButtonClick"

    .line 1479
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TitleColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1760
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:I

    return v0
.end method

.method public TitleColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1751
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->m:I

    .line 1752
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 1753
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1755
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-result-object p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    :cond_2
    return-void
.end method

.method public TitleVisible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1739
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->e:Z

    if-eq p1, v0, :cond_0

    .line 1740
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->e:Z

    .line 1741
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->m:Z

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->m:Z

    :cond_0
    return-void
.end method

.method public TitleVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title bar is the top gray bar on the screen. This property reports whether the title bar is visible."
    .end annotation

    .line 1726
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->e:Z

    return v0
.end method

.method public TutorialURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A URL to use to populate the Tutorial Sidebar while editing a project. Used as a teaching aid."
        userVisible = false
    .end annotation

    return-void
.end method

.method public VersionCode()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2225
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->j:I

    return v0
.end method

.method public VersionCode(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "An integer value which must be incremented each time a new Android Application Package File (APK) is created for the Google Play Store."
    .end annotation

    .line 2219
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->j:I

    return-void
.end method

.method public VersionName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->f:Ljava/lang/String;

    return-object v0
.end method

.method public VersionName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A string which can be changed to allow Google Play Store users to distinguish between different versions of the App."
    .end annotation

    .line 2239
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->f:Ljava/lang/String;

    return-void
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen width (x-size)."
    .end annotation

    .line 2494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form.Width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->k:I

    return v0
.end method

.method a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file:///android_asset/"

    .line 3463
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3464
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/16 v1, 0x16

    .line 3465
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "file:"

    .line 3466
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3467
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/net/URI;)Ljava/io/FileInputStream;

    move-result-object p1

    return-object p1

    .line 3469
    :cond_1
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .locals 3

    .line 380
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->OnStart()V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateFinish called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->d()V

    .line 388
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->e()V

    .line 391
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "APP_INVENTOR_START"

    .line 392
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 396
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 400
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 401
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 402
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 406
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$define()V

    .line 413
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Initialize()V

    return-void
.end method

.method public addAboutInfoToMenu(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "About this application"

    .line 2975
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/Form$7;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Form$7;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2976
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public addExitButtonToMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Stop this application"

    .line 2963
    invoke-interface {p1, v0, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/Form$6;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Form$6;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2965
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x108005a

    .line 2971
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
    .locals 3

    .line 3315
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 3316
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3317
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3318
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3319
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3322
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 3324
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    goto :goto_1

    .line 3327
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form$11;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V
    .locals 2

    .line 3291
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3293
    invoke-interface {p2, p1, v0}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    return-void

    .line 3296
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$10;

    invoke-direct {v1, p0, p1, p2, p0}, Lcom/google/appinventor/components/runtime/Form$10;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public assertPermission(Ljava/lang/String;)V
    .locals 1

    .line 3244
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3245
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()V
    .locals 4

    const-string v0, "Form"

    const-string v1, "ReplayFormOrientation()"

    .line 706
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 708
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 710
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    .line 711
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->a:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    sget-object v3, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne v2, v3, :cond_0

    .line 712
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->a:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->a:I

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    goto :goto_0

    .line 714
    :cond_0
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->a:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->a:I

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method c()V
    .locals 1

    const-string v0, "<p><small>Language translation powered by Yandex.Translate</small></p>"

    .line 3023
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->j:Ljava/lang/String;

    return-void
.end method

.method public callInitialize(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Form"

    .line 3126
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Initialize"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3135
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling Initialize method for Object "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :catch_1
    return-void

    :catch_2
    move-exception p1

    .line 3128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-nez v0, :cond_1

    if-ne p1, p0, :cond_0

    const-string p1, "Initialize"

    .line 890
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 895
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    :cond_2
    return p1
.end method

.method public clear()V
    .locals 2

    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clear called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3040
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3041
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 3042
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    .line 3045
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->e()V

    .line 3046
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3047
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3048
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3049
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3050
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3051
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3052
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3053
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3054
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 3055
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    .line 3057
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnClearListener;

    .line 3058
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnClearListener;->onClear()V

    goto :goto_0

    .line 3061
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3062
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Form.clear() About to do moby GC!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3063
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3064
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .locals 0

    .line 2912
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->h()V

    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 2896
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->setResult(ILandroid/content/Intent;)V

    .line 2898
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2899
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->b:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    return-void
.end method

.method public compatScalingFactor()F
    .locals 1

    .line 2757
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:F

    return v0
.end method

.method public deleteComponent(Ljava/lang/Object;)V
    .locals 1

    .line 3068
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnStopListener;

    if-eqz v0, :cond_0

    .line 3069
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3071
    :cond_0
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    if-eqz v0, :cond_1

    .line 3072
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3074
    :cond_1
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    if-eqz v0, :cond_2

    .line 3075
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3077
    :cond_2
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    if-eqz v0, :cond_3

    .line 3078
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3080
    :cond_3
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    if-eqz v0, :cond_4

    .line 3081
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3083
    :cond_4
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    if-eqz v0, :cond_5

    .line 3084
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3086
    :cond_5
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    if-eqz v0, :cond_6

    .line 3087
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3089
    :cond_6
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    if-eqz v0, :cond_7

    .line 3090
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3092
    :cond_7
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    if-eqz v0, :cond_8

    .line 3093
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3095
    :cond_8
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Deleteable;

    if-eqz v0, :cond_9

    .line 3096
    check-cast p1, Lcom/google/appinventor/components/runtime/Deleteable;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/Deleteable;->onDelete()V

    :cond_9
    return-void
.end method

.method public deviceDensity()F
    .locals 1

    .line 2753
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:F

    return v0
.end method

.method public varargs dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 7

    .line 1093
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$14;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$14;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 7

    .line 1108
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$15;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$15;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 0

    .line 912
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 0

    .line 918
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    .locals 0

    .line 1069
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    .line 1070
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1083
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$13;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public doesAppDeclarePermission(Ljava/lang/String;)Z
    .locals 1

    .line 3387
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dontGrabTouchEventsForComponent()V
    .locals 2

    .line 3107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public enableHamburger()V
    .locals 7

    .line 3494
    new-instance v6, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v4, 0x104000f

    const v5, 0x104000f

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v0, 0x1

    .line 3495
    invoke-virtual {v6, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3496
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerSlideAnimationEnabled(Z)V

    .line 3497
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 3498
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->m:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    return-void
.end method

.method public declared-synchronized fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    monitor-enter p0

    .line 3177
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3441
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    .line 3442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapFromAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file:///android_asset/"

    .line 3474
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3475
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/16 v1, 0x16

    .line 3476
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 3477
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "file:"

    .line 3478
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3479
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    .line 3480
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Ljava/net/URI;)Ljava/io/FileInputStream;

    move-result-object p1

    .line 3481
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 3483
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    .line 3484
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    .line 3485
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 2747
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 0

    return-object p0
.end method

.method public getDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 3490
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

.method public getFAB()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .locals 1

    .line 3506
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    return-object v0
.end method

.method public getOnCreateBundle()Landroid/os/Bundle;
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPrivatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public getToggle()Landroidx/appcompat/app/ActionBarDrawerToggle;
    .locals 1

    .line 3502
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/appcompat/app/ActionBarDrawerToggle;

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 3221
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->g:Z

    return v0
.end method

.method public isDeniedPermission(Ljava/lang/String;)Z
    .locals 2

    .line 3233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3234
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onActivityResult, requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "APP_INVENTOR_RESULT"

    .line 617
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 618
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string p2, "other screen closed"

    .line 622
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 624
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form;->g:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/Form;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/ActivityResultListener;

    if-eqz v0, :cond_2

    .line 629
    invoke-interface {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 634
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 635
    invoke-interface {v3, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->BackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 593
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 489
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Form"

    const-string v1, "onConfigurationChanged() called"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form$1;-><init>(Lcom/google/appinventor/components/runtime/Form;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 318
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 319
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->OnCreate()V

    .line 321
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/os/Bundle;

    .line 322
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/fragment/app/FragmentManager;

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 326
    sput-object p1, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/lang/String;

    const/16 v0, 0x2e

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Form "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " got onCreate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Form"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeForm is now "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:F

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceDensity = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->computeCompatibleScaling(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->b:F

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compatScalingFactor = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->b:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance p1, Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 339
    new-instance v3, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v3, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    const/4 p1, 0x0

    .line 341
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/app/ProgressDialog;

    .line 342
    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->q:Z

    const-string v4, " formName = "

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v5, "Screen1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MULTI: _initialized = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/google/appinventor/components/runtime/Form;->q:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sput-boolean v1, Lcom/google/appinventor/components/runtime/Form;->q:Z

    .line 349
    sget-boolean v3, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    if-eqz v3, :cond_0

    const-string p1, "MultiDex already installed."

    .line 350
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "Please Wait..."

    const-string v3, "Installation Finishing"

    .line 353
    invoke-static {p0, v0, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/app/ProgressDialog;

    .line 354
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 355
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$a;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/Form$a;-><init>(Lcom/google/appinventor/components/runtime/Form$1;)V

    new-array p1, v1, [Lcom/google/appinventor/components/runtime/Form;

    aput-object p0, p1, v2

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Form$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 358
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NO MULTI: _initialized = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/google/appinventor/components/runtime/Form;->q:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sput-boolean v1, Lcom/google/appinventor/components/runtime/Form;->q:Z

    .line 360
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->a()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_0

    .line 858
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 856
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->createFullScreenVideoDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 2946
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2950
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroid/view/Menu;

    .line 2951
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 2952
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->o:Z

    if-eqz v0, :cond_0

    .line 2953
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2955
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .line 2956
    invoke-interface {v2, p1}, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;->onCreateOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    .line 2958
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->MenuInitialize()V

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .line 826
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->OnDestroy()V

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 833
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 834
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnDestroyListener;->onDestroy()V

    goto :goto_0

    .line 838
    :cond_0
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onDestroy()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .line 557
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGlobalLayout(): diffPercent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Form"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v0, v1

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    const-string v0, "keyboard hidden!"

    .line 567
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->n:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 569
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->n:Z

    .line 570
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->k:Z

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->b:F

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    goto :goto_0

    :cond_0
    const-string v0, "keyboard shown!"

    .line 576
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->n:Z

    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 579
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 580
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 781
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 784
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/OnNewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 2986
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 2987
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->TitleBarBackButtonClick()V

    return v1

    .line 2990
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 2991
    invoke-interface {v2, p1}, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 794
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->OnPause()V

    .line 795
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onPause()V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 798
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnPauseListener;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_0

    .line 868
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0

    .line 865
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->prepareFullScreenVideoDialog(Landroid/app/Dialog;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 3359
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    const-string v1, "Form"

    if-nez v0, :cond_0

    const-string p1, "Received permission response which we cannot match."

    .line 3362
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3365
    :cond_0
    array-length v2, p3

    if-lez v2, :cond_2

    const/4 v1, 0x0

    .line 3366
    aget p3, p3, v1

    if-nez p3, :cond_1

    .line 3367
    aget-object p2, p2, v1

    const/4 p3, 0x1

    invoke-interface {v0, p2, p3}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3369
    :cond_1
    aget-object p2, p2, v1

    invoke-interface {v0, p2, v1}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3372
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRequestPermissionsResult: grantResults.length = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " requestCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    :goto_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 744
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onResume()V

    .line 745
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->OnResume()V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 751
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->a:Z

    if-eqz v0, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->h()V

    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 757
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnResumeListener;->onResume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 808
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->OnStop()V

    .line 809
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onStop()V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 812
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnStopListener;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3428
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public openAssetForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3457
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public px(I)I
    .locals 1

    int-to-float p1, p1

    .line 1428
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I
    .locals 3

    .line 659
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->a()I

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 674
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 675
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnCreateOptionsMenu(Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnOptionsItemSelected(Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;)V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnOrientationChange(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .locals 1

    .line 728
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;-><init>(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    .line 729
    invoke-direct {p0, p1, p3}, Lcom/google/appinventor/components/runtime/Form;->a(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;

    move-result-object p1

    .line 730
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public runtimeFormErrorOccurredEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "functionName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FORM_RUNTIME_ERROR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorNumber is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 4

    .line 2787
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 2790
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form$5;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v0, -0x3e8

    if-gt p2, v0, :cond_1

    .line 2799
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    div-int/lit8 p2, v0, 0x64

    .line 2802
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 2805
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 2762
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    .line 2765
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form$4;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2773
    :cond_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form.setChildWidth(): width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " parent Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 2775
    div-int/lit8 p2, v0, 0x64

    .line 2779
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 2782
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setFAB(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V
    .locals 1

    .line 3510
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 3511
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 3512
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const v0, 0x800055

    .line 3513
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 3514
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startNewForm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2656
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.niotron.companion"

    .line 2658
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 2665
    :goto_0
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_1

    const-string v2, "open another screen"

    goto :goto_1

    :cond_1
    const-string v2, "open another screen with start value"

    :goto_1
    if-eqz p2, :cond_2

    .line 2671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartNewForm about to JSON encode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    invoke-static {p2, v2}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartNewForm got JSON encoding:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string p2, ""

    :goto_2
    const-string v3, "APP_INVENTOR_START"

    .line 2677
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2680
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->g:Ljava/lang/String;

    .line 2681
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "about to start new form"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 2683
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNewForm starting activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    invoke-virtual {p0, v0, p2}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2685
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/16 v0, 0x386

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    .line 2687
    invoke-virtual {p0, p0, v2, v0, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method protected toastAllowed()Z
    .locals 6

    .line 3114
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3115
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Form;->b:J

    sget-wide v4, Lcom/google/appinventor/components/runtime/Form;->a:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3116
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->b:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V
    .locals 4

    .line 681
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 683
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 684
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 687
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 688
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/Map;

    .line 693
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 694
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 695
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 696
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 697
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 698
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->a:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form;->a(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected updateTitle()V
    .locals 2

    .line 3217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setTitle(Ljava/lang/String;)V

    return-void
.end method
