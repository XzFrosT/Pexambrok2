.class public Lcom/google/appinventor/components/runtime/view/ZoomControlView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:F

.field private final a:Landroid/widget/Button;

.field private final a:Lorg/osmdroid/views/MapView;

.field private final b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 5

    .line 29
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:F

    .line 33
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Lorg/osmdroid/views/MapView;

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setOrientation(I)V

    .line 35
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Landroid/widget/Button;

    .line 36
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->b:Landroid/widget/Button;

    .line 37
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Landroid/widget/Button;

    const-string v1, "+"

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->b:Landroid/widget/Button;

    const-string/jumbo v1, "\u2212"

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Landroid/widget/Button;

    new-instance v1, Lcom/google/appinventor/components/runtime/view/ZoomControlView$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView$1;-><init>(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->b:Landroid/widget/Button;

    new-instance v1, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;-><init>(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:F

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a(F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:F

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->b(F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    new-array v1, p1, [[I

    new-array v2, v0, [I

    const v3, -0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v0, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v0

    new-array p1, p1, [I

    .line 59
    fill-array-data p1, :array_0

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Landroid/widget/Button;

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->b:Landroid/widget/Button;

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->addView(Landroid/view/View;)V

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->b:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->addView(Landroid/view/View;)V

    .line 69
    iget p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1, v4, v4}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setPadding(IIII)V

    .line 70
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    return-void

    :array_0
    .array-data 4
        -0x333334
        -0x1000000
    .end array-data
.end method

.method private static a(F)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    .line 94
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    int-to-float p0, p0

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 v3, 0x1

    aput p0, v2, v3

    const/4 v3, 0x2

    aput p0, v2, v3

    const/4 v3, 0x3

    aput p0, v2, v3

    const/4 p0, 0x4

    const/4 v3, 0x0

    aput v3, v2, p0

    const/4 p0, 0x5

    aput v3, v2, p0

    const/4 p0, 0x6

    aput v3, v2, p0

    const/4 p0, 0x7

    aput v3, v2, p0

    const/4 p0, 0x0

    invoke-direct {v1, v2, p0, p0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 95
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)Lorg/osmdroid/views/MapView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method private a(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41b00000    # 22.0f

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p2, 0x0

    .line 85
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 86
    iget p2, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:F

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setWidth(I)V

    .line 87
    iget p2, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setHeight(I)V

    .line 88
    invoke-virtual {p1}, Landroid/widget/Button;->setSingleLine()V

    const/16 p2, 0x11

    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setGravity(I)V

    return-void
.end method

.method private static b(F)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    .line 101
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    int-to-float p0, p0

    const/4 v3, 0x4

    aput p0, v2, v3

    const/4 v3, 0x5

    aput p0, v2, v3

    const/4 v3, 0x6

    aput p0, v2, v3

    const/4 v3, 0x7

    aput p0, v2, v3

    const/4 p0, 0x0

    invoke-direct {v1, v2, p0, p0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 102
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public final updateButtons()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
