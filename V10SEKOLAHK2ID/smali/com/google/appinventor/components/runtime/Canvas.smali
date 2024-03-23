.class public final Lcom/google/appinventor/components/runtime/Canvas;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional touch-sensitive rectangular panel on which drawing can be done and sprites can be moved.</p> <p>The <code>BackgroundColor</code>, <code>PaintColor</code>, <code>BackgroundImage</code>, <code>Width</code>, and <code>Height</code> of the Canvas can be set in either the Designer or in the Blocks Editor.  The <code>Width</code> and <code>Height</code> are measured in pixels and must be positive.</p><p>Any location on the Canvas can be specified as a pair of (X, Y) values, where <ul> <li>X is the number of pixels away from the left edge of the Canvas</li><li>Y is the number of pixels away from the top edge of the Canvas</li></ul>.</p> <p>There are events to tell when and where a Canvas has been touched or a <code>Sprite</code> (<code>ImageSprite</code> or <code>Ball</code>) has been dragged.  There are also methods for drawing points, lines, and circles.</p>"
    version = 0xf
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Canvas$b;,
        Lcom/google/appinventor/components/runtime/Canvas$a;,
        Lcom/google/appinventor/components/runtime/Canvas$c;,
        Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;
    }
.end annotation


# static fields
.field private static final a:F = 2.0f

.field private static final a:Ljava/lang/String; = "Canvas"

.field private static final e:I = 0x1

.field private static final f:I = -0x1000000

.field private static final g:I = -0x1

.field private static final h:I = 0x1

.field private static final i:I = 0x3e8

.field private static final j:I = 0xf


# instance fields
.field private a:I

.field private final a:Landroid/app/Activity;

.field private final a:Landroid/graphics/Paint;

.field private final a:Landroid/view/GestureDetector;

.field private final a:Lcom/google/appinventor/components/runtime/Canvas$a;

.field private final a:Lcom/google/appinventor/components/runtime/Canvas$c;

.field private a:Lcom/google/appinventor/components/runtime/Form;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 759
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 152
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:Z

    const/16 v1, 0xf

    .line 166
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->d:I

    .line 192
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/Set;

    .line 194
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 197
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->c:Z

    .line 760
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/app/Activity;

    .line 763
    new-instance v0, Lcom/google/appinventor/components/runtime/Canvas$a;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v2}, Lcom/google/appinventor/components/runtime/Canvas$a;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    .line 764
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 766
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 767
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 770
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->LineWidth(F)V

    const/high16 p1, -0x1000000

    .line 771
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->PaintColor(I)V

    const/4 p1, -0x1

    .line 772
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->BackgroundColor(I)V

    .line 773
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->TextAlignment(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 774
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->FontSize(F)V

    .line 775
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->TapThreshold(I)V

    .line 777
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/List;

    .line 778
    new-instance p1, Lcom/google/appinventor/components/runtime/Canvas$c;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Canvas$c;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$c;

    .line 779
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/Canvas$b;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Canvas$b;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    invoke-direct {p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/view/GestureDetector;

    .line 780
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 781
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->c:Z

    goto :goto_0

    .line 783
    :cond_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->c:Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->d:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:I

    return p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    return-object p0
.end method

.method private a([[F)Landroid/graphics/Path;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1468
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 1471
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1473
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    .line 1474
    aget-object v3, p1, v2

    aget v3, v3, v2

    mul-float v3, v3, v0

    aget-object v4, p1, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float v4, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x1

    .line 1475
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1476
    aget-object v4, p1, v3

    aget v4, v4, v2

    mul-float v4, v4, v0

    aget-object v6, p1, v3

    aget v6, v6, v5

    mul-float v6, v6, v0

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 1469
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$a;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$c;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$c;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1684
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->c:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1685
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Form;

    new-instance p2, Lcom/google/appinventor/components/runtime/Canvas$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Canvas$1;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p3, p2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1691
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw p1

    .line 1694
    :cond_1
    :goto_0
    new-instance v10, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 1695
    new-instance v11, Lcom/google/appinventor/components/runtime/Canvas$2;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Form;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v8, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/Canvas$2;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;ZZLcom/google/appinventor/components/runtime/util/Synchronizer;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 1702
    invoke-virtual {v11}, Lcom/google/appinventor/components/runtime/Canvas$2;->run()V

    .line 1704
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/FileNotFoundException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1705
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    const/16 v2, 0x2c3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 1707
    invoke-static {v3, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 1705
    invoke-virtual {p2, p0, p3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1708
    :cond_2
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_3

    .line 1709
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 p2, 0x2c4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1710
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1709
    invoke-virtual {p1, p0, p3, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1711
    :cond_3
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    if-eqz p2, :cond_4

    .line 1712
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    .line 1713
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    .line 1712
    invoke-virtual {p1, p0, p3, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_1

    .line 1714
    :cond_4
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    if-eqz p2, :cond_5

    .line 1715
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    .line 1716
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 1715
    invoke-virtual {p1, p0, p3, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1717
    :cond_5
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1718
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/Set;

    return-object p0
.end method

.method private a(Landroid/graphics/Paint;I)V
    .locals 1

    if-nez p2, :cond_0

    const/high16 p2, -0x1000000

    .line 1161
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0

    :cond_0
    const v0, 0xffffff

    if-ne p2, v0, :cond_1

    .line 1163
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaintTransparent(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1165
    :cond_1
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;)Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Canvas;Z)Z
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Z

    return p1
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/YailList;)[[F
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1483
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1486
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    const-class v0, F

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 1489
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v7, p1, v5

    .line 1490
    instance-of v8, v7, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v8, :cond_1

    .line 1491
    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1492
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-ne v8, v1, :cond_0

    .line 1494
    :try_start_0
    aget-object v8, v0, v6

    invoke-virtual {v7, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v8, v4

    .line 1495
    aget-object v8, v0, v6

    invoke-virtual {v7, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v8, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1503
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length of item YailList("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is not 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1506
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") in YailList is not a YailList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0

    .line 1484
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Canvas;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:I

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Canvas;Z)Z
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->c:Z

    return p1
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 888
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Canvas.$add() called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the canvas background."
    .end annotation

    .line 1032
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:I

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

    .line 1048
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->setBackgroundColor(I)V

    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of a file containing the background image for the canvas"
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:Ljava/lang/String;

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
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public BackgroundImageinBase64(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background image in Base64 format. This requires API level >= 8. For devices with API level less than 8, setting this will end up with an empty background."
    .end annotation

    .line 1091
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Clear()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears anything drawn on this Canvas but not any background color or image."
    .end annotation

    .line 1382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)V

    return-void
.end method

.method public Dragged(FFFFFFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1369
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 1370
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const-string p1, "Dragged"

    .line 1369
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DrawArc(IIIIFFZZ)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw an arc on Canvas, by drawing an arc from a specified oval (specified by left, top, right & bottom). Start angle is 0 when heading to the right, and increase when rotate clockwise. When useCenter is true, a sector will be drawed instead of an arc. When fill is true, a filled arc (or sector) will be drawed instead of just an outline."
    .end annotation

    .line 1534
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1535
    new-instance v6, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p8, :cond_0

    .line 1536
    sget-object p8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v6, p8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1537
    iget-object p8, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {p8}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Canvas;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p3, p3

    mul-float p3, p3, v0

    int-to-float p4, p4

    mul-float v0, v0, p4

    invoke-direct {v2, p1, p2, p3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1541
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void
.end method

.method public DrawCircle(IIFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    int-to-float p1, p1

    .line 1410
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p1, p1, v0

    int-to-float p2, p2

    .line 1411
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    .line 1412
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p3, p3, v0

    .line 1413
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p4, :cond_0

    .line 1414
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1415
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {p4}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Canvas;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1416
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void
.end method

.method public DrawLine(IIII)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    int-to-float p1, p1

    .line 1429
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v2, p1, v0

    int-to-float p1, p2

    .line 1430
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float v3, p1, p2

    int-to-float p1, p3

    .line 1431
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float v4, p1, p2

    int-to-float p1, p4

    .line 1432
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float v5, p1, p2

    .line 1433
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1434
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void
.end method

.method public DrawPoint(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    int-to-float p1, p1

    .line 1393
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p1, p1, v0

    int-to-float p2, p2

    .line 1394
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    .line 1395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1396
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void
.end method

.method public DrawShape(Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws a shape on the canvas. pointList should be a list contains sub-lists with two number which represents a coordinate. The first point and last point does not need to be the same. e.g. ((x1 y1) (x2 y2) (x3 y3)) When fill is true, the shape will be filled."
    .end annotation

    .line 1455
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/util/YailList;)[[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->a([[F)Landroid/graphics/Path;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 1461
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p2, :cond_0

    .line 1462
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1463
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Canvas;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1464
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void

    .line 1457
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 p2, 0x3ec

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DrawShape"

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public DrawText(Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text relative to the specified coordinates using the values of the FontSize and TextAlignment properties."
    .end annotation

    .line 1556
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p3, p3

    mul-float p3, p3, v0

    .line 1559
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1560
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void
.end method

.method public DrawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text starting at the specified coordinates at the specified angle using the values of the FontSize and TextAlignment properties."
    .end annotation

    int-to-float p2, p2

    .line 1576
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    int-to-float p3, p3

    .line 1577
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 1578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;Ljava/lang/String;IIF)V

    return-void
.end method

.method public ExtendMovesOutsideCanvas(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 1279
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:Z

    return-void
.end method

.method public ExtendMovesOutsideCanvas()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether moves can extend beyond the canvas borders.   Default is false. This should normally be false, and the property is provided for backwards compatibility."
        userVisible = true
    .end annotation

    .line 1269
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->b:Z

    return v0
.end method

.method public Flung(FFFFFFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1346
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const-string p1, "Flung"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size of text drawn on the canvas."
    .end annotation

    .line 1173
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1174
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public FontSize(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1185
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    mul-float p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public GetBackgroundPixelColor(II)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point. This includes the background and any drawn points, lines, or circles but not sprites."
    .end annotation

    int-to-float p1, p1

    .line 1594
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    .line 1595
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 1596
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;II)I

    move-result p1

    return p1
.end method

.method public GetPixelColor(II)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point."
    .end annotation

    int-to-float p1, p1

    .line 1629
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    .line 1630
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 1631
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$a;->b(Lcom/google/appinventor/components/runtime/Canvas$a;II)I

    move-result p1

    return p1
.end method

.method public Height(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Height"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1010
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    :goto_1
    return-void
.end method

.method public LineWidth()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of lines drawn on the canvas."
    .end annotation

    .line 1197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public LineWidth(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color in which lines are drawn"
    .end annotation

    .line 1139
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:I

    return v0
.end method

.method public PaintColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1154
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:I

    .line 1155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public Save()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage. If an error occurs, the Screen\'s ErrorOccurred event will be called."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 1646
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "png"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getScopedPictureFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v2, "Save"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SaveAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage in the file named fileName. fileName must end with one of .jpg, .jpeg, or .png, which determines the file type."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    const-string v0, ".jpg"

    .line 1666
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SaveAs"

    if-nez v0, :cond_3

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ".png"

    .line 1668
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1669
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_1
    const-string v2, "."

    .line 1670
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1672
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 1674
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v0, 0x2c2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1

    .line 1667
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1678
    :goto_1
    new-instance v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetBackgroundPixelColor(III)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the color of the specified point. This differs from DrawPoint by having an argument for color."
    .end annotation

    .line 1610
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1611
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    int-to-float p1, p1

    .line 1612
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    int-to-float p2, p2

    .line 1613
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p3

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1614
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Canvas;

    move-result-object p3

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1615
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void
.end method

.method public TapThreshold()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the number of pixels right, left, up or down, a sequence of drags mustmove from the starting point to be considered a drag (instead of a touch)."
    .end annotation

    .line 1110
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->d:I

    return v0
.end method

.method public TapThreshold(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "15"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1123
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->d:I

    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the alignment of the text drawn by DrawText() or DrawAngle() with respect to the point specified by that command: point at the left of the text, point at the center of the text, or point at the right of the text."
        userVisible = true
    .end annotation

    .line 1229
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->c:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 1248
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->c:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1257
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 1254
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 1251
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void
.end method

.method public TouchDown(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1309
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TouchDown"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TouchUp(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1322
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TouchUp"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Touched(FFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1296
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "Touched"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Width(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Width"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 986
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    :goto_1
    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6

    const/4 v0, 0x0

    .line 844
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 846
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 0

    .line 871
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 872
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 873
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    return-void
.end method

.method d(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->invalidate()V

    .line 916
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method

.method protected findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    if-eq v1, p1, :cond_0

    .line 941
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 943
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 944
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 945
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 946
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 947
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    .line 953
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 955
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 958
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
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

    .line 893
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Lcom/google/appinventor/components/runtime/Canvas$a;

    return-object v0
.end method

.method public ready()Z
    .locals 1

    .line 826
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Z

    return v0
.end method

.method public registerCustomGestureDetector(Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCustomGestureDetector(Ljava/lang/Object;)V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 903
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Canvas.setChildHeight() called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 898
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Canvas.setChildWidth() called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
