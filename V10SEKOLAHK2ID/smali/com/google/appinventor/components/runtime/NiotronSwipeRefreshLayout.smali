.class public Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A layout with ability to refresh on drag from top"
    iconName = "images/swiperefreshlayout.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "MockSwipeRefreshLayout"


# instance fields
.field private final a:I

.field private final a:Landroid/app/Activity;

.field private a:Landroid/graphics/drawable/Drawable;

.field private final a:Landroid/os/Handler;

.field private a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private final a:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private a:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 97
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Z

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Ljava/util/List;

    const-string v1, ""

    .line 70
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Ljava/lang/String;

    .line 74
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    .line 76
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->e:I

    .line 78
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->f:I

    .line 80
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->g:I

    .line 82
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->h:I

    const/4 v1, 0x1

    .line 84
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->i:I

    .line 98
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/app/Activity;

    .line 100
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:I

    .line 101
    new-instance v3, Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v4, 0x64

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 103
    invoke-direct {v3, v2, v0, v5, v5}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 105
    invoke-virtual {v3, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 106
    new-instance v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 107
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b:I

    .line 108
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->c:I

    .line 109
    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 110
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->c:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 112
    new-instance v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 114
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b:Landroid/graphics/drawable/Drawable;

    .line 122
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->BackgroundColor(I)V

    .line 125
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 451
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->d:I

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->d:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the %type% are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .line 231
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b:I

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 249
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x579

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "HorizontalAlignment"

    .line 251
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the %type% are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .line 268
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->c:I

    return v0
.end method

.method public AlignVertical(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 286
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->c:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x57a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "VerticalAlignment"

    .line 288
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the background color of the %type%"
    .end annotation

    .line 302
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->d:I

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

    .line 320
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->d:I

    .line 322
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b()V

    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets if the layout is enabled or not"
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 378
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b()V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the background image for the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 356
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 364
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :catch_0
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b()V

    return-void
.end method

.method public NestedScrolling(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 400
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b()V

    return-void
.end method

.method public NestedScrolling()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public OnPageRefresh()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = ""
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnPageRefresh"

    .line 432
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RefreshBarBackGroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF0000FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public Refreshing(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 389
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->b()V

    return-void
.end method

.method public Refreshing()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    return v0
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

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 194
    div-int/lit8 p2, v0, 0x64

    .line 197
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 199
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 200
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 p3, -0x3e8

    if-gt p2, p3, :cond_1

    .line 167
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HVArrangement.setChildWidth(): width = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent Width = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " child = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "MockSwipeRefreshLayout"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 168
    div-int/lit8 p2, v0, 0x64

    .line 171
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 173
    iget p3, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->a:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 174
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    :goto_0
    return-void
.end method
