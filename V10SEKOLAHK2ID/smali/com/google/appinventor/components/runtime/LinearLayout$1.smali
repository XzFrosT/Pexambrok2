.class Lcom/google/appinventor/components/runtime/LinearLayout$1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/LinearLayout;

.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->a:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->b:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(II)I
    .locals 2

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 89
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->a:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->a(Lcom/google/appinventor/components/runtime/LinearLayout;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->a(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->b:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->a(II)I

    move-result p2

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->setMeasuredDimension(II)V

    return-void

    .line 62
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
