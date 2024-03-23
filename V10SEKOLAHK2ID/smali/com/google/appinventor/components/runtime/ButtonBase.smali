.class public abstract Lcom/google/appinventor/components/runtime/ButtonBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final a:F = 10.0f

.field private static final a:I = -0x333334

.field private static final a:Ljava/lang/String; = "ButtonBase"

.field private static final a:[F

.field private static g:I

.field private static h:I


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/content/res/ColorStateList;

.field private a:Landroid/graphics/drawable/Drawable;

.field private final a:Landroid/widget/Button;

.field private a:Z

.field private b:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:I

.field private d:Z

.field private e:I

.field private e:Z

.field private f:I

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 70
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:[F

    const/4 v0, 0x0

    .line 129
    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->g:I

    .line 136
    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->h:I

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 160
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Z

    const-string v1, ""

    .line 103
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 108
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 119
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:Z

    .line 122
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->e:Z

    .line 161
    new-instance v3, Landroid/widget/Button;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    .line 163
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->f:Z

    .line 164
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/content/Context;

    .line 166
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/graphics/drawable/Drawable;

    .line 167
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/content/res/ColorStateList;

    .line 168
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinWidth(Landroid/widget/TextView;)I

    move-result v3

    sput v3, Lcom/google/appinventor/components/runtime/ButtonBase;->g:I

    .line 169
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinHeight(Landroid/widget/TextView;)I

    move-result v3

    sput v3, Lcom/google/appinventor/components/runtime/ButtonBase;->h:I

    .line 172
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 175
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 178
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/IceCreamSandwichUtil;->setAllCaps(Landroid/widget/TextView;Z)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextAlignment(I)V

    .line 186
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->BackgroundColor(I)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->Image(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Enabled(Z)V

    .line 189
    iput v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:I

    const/high16 p1, 0x41600000    # 14.0f

    .line 190
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontSize(F)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextColor(I)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->Shape(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/Button;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Z

    const-string p1, ""

    .line 103
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:Z

    .line 122
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->e:Z

    .line 198
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    return-void
.end method

.method private a()Landroid/content/res/ColorStateList;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [[I

    new-array v2, v0, [I

    const/4 v3, 0x0

    const v4, 0x101009e

    aput v4, v2, v3

    aput-object v2, v1, v3

    .line 507
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    new-array v0, v0, [I

    .line 508
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 509
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v6, 0x46

    .line 508
    invoke-static {v6, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v3

    .line 511
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 489
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ButtonBase"

    const-string v2, "Unable to clone button drawable"

    .line 493
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Landroid/graphics/drawable/Drawable;

    .line 501
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 444
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->f:I

    if-nez v0, :cond_4

    .line 445
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 448
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 449
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    const v2, 0xffffff

    if-ne v0, v2, :cond_3

    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 474
    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->b()V

    .line 476
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    sget v1, Lcom/google/appinventor/components/runtime/ButtonBase;->g:I

    sget v2, Lcom/google/appinventor/components/runtime/ButtonBase;->h:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    goto :goto_2

    .line 479
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    :goto_2
    return-void
.end method

.method private b()V
    .locals 4

    .line 516
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 519
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->f:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 527
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 524
    :cond_1
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 521
    :cond_2
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v2, Lcom/google/appinventor/components/runtime/ButtonBase;->a:[F

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 534
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 535
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->a()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 540
    :goto_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:I

    const v1, 0xffffff

    if-ne v0, v1, :cond_4

    .line 541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_4
    if-nez v0, :cond_7

    .line 544
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 547
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0x333334

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 545
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 551
    :cond_7
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 554
    :goto_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .line 416
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 434
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:I

    .line 435
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->a()V

    return-void
.end method

.method public CustomFontTypeFace(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-eqz p1, :cond_4

    .line 818
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/"

    .line 824
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 825
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->f:Z

    if-eqz v0, :cond_1

    .line 826
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 827
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 832
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 833
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;ZZLcom/google/appinventor/components/runtime/Form;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, user can tap %type% to cause action."
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 606
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Z

    .line 607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in bold."
    .end annotation

    .line 592
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 667
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Z

    .line 668
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in italics."
    .end annotation

    .line 653
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for %type% text."
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    const/high16 v0, 0x41600000    # 14.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :goto_0
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for %type% text."
        userVisible = false
    .end annotation

    .line 717
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 734
    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->g:Z

    .line 735
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:I

    .line 736
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved over the %type% so it is now possible to click it."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    .line 264
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image to display on button."
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
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
        description = "Specifies the path of the image of the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 386
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Landroid/graphics/drawable/Drawable;

    .line 391
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 393
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ButtonBase"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->a()V

    return-void
.end method

.method public Initialize()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->a()V

    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved away from the %type% so it is now no longer possible to click it."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LostFocus"

    .line 274
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Opacity(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set opacity value between 1 to 10"
    .end annotation

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    const-string p1, "1f"

    goto :goto_0

    .line 889
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 890
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method public PerformClick()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    return-void
.end method

.method public Shape()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 324
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->f:I

    return v0
.end method

.method public Shape(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "button_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the shape of the %type% (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed."
        userVisible = false
    .end annotation

    .line 348
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->f:I

    .line 349
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->a()V

    return-void
.end method

.method public ShowFeedback(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies if a visual feedback should be shown  for a %type% that has an image as background."
    .end annotation

    .line 623
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Z

    return-void
.end method

.method public ShowFeedback()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the visual feedback state of the %type%"
    .end annotation

    .line 639
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:Z

    return v0
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on %type%."
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 760
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->g:Z

    if-eqz v0, :cond_0

    .line 762
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .line 291
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 308
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->b:I

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for button text."
    .end annotation

    .line 783
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->e:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 797
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->e:I

    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 801
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 805
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 802
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    :goto_1
    return-void
.end method

.method public TouchDown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% was pressed down."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchDown"

    .line 246
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TouchUp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% has been released."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchUp"

    .line 254
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract click()V
.end method

.method public getHighContrast()Z
    .locals 1

    .line 918
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->d:Z

    return v0
.end method

.method public getLargeFont()Z
    .locals 1

    .line 934
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->e:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    return-object v0
.end method

.method public longClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 863
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->click()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->GotFocus()V

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->LostFocus()V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 881
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->longClick()Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v1, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchDown()V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v1, :cond_3

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchUp()V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setHighContrast(Z)V
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->f:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->c:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 899
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 900
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 907
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->e:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 909
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 911
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLargeFont(Z)V
    .locals 6

    .line 923
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const/high16 v2, 0x41600000    # 14.0f

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 925
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 927
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->a:Landroid/widget/Button;

    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :cond_2
    :goto_0
    return-void
.end method
