.class Lme/aemo/floatingview/FloatingView$9;
.super Ljava/lang/Object;
.source "FloatingView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/floatingview/FloatingView;->floatViewHV(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/aemo/floatingview/FloatingView;


# direct methods
.method constructor <init>(Lme/aemo/floatingview/FloatingView;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 312
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$800(Lme/aemo/floatingview/FloatingView;)I

    move-result p1

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$900(Lme/aemo/floatingview/FloatingView;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 313
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$1000(Lme/aemo/floatingview/FloatingView;)I

    move-result v0

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$1100(Lme/aemo/floatingview/FloatingView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 315
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto/16 :goto_1

    .line 327
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v3}, Lme/aemo/floatingview/FloatingView;->access$800(Lme/aemo/floatingview/FloatingView;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v4}, Lme/aemo/floatingview/FloatingView;->access$1000(Lme/aemo/floatingview/FloatingView;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 329
    iget-object v4, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lme/aemo/floatingview/FloatingView;->access$802(Lme/aemo/floatingview/FloatingView;I)I

    .line 330
    iget-object v4, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lme/aemo/floatingview/FloatingView;->access$1002(Lme/aemo/floatingview/FloatingView;I)I

    .line 331
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ge p1, v5, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, v5, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1, v4}, Lme/aemo/floatingview/FloatingView;->access$1202(Lme/aemo/floatingview/FloatingView;Z)Z

    goto/16 :goto_1

    .line 332
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 333
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p2, v1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 334
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p2, v3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 335
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1, v2}, Lme/aemo/floatingview/FloatingView;->access$1202(Lme/aemo/floatingview/FloatingView;Z)Z

    .line 336
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 337
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, p2, v0}, Lme/aemo/floatingview/FloatingView;->PositionMoved(II)V

    .line 338
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p2}, Lme/aemo/floatingview/FloatingView;->access$000(Lme/aemo/floatingview/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 341
    :cond_3
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1, v4}, Lme/aemo/floatingview/FloatingView;->access$1202(Lme/aemo/floatingview/FloatingView;Z)Z

    goto :goto_1

    .line 324
    :cond_4
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$1300(Lme/aemo/floatingview/FloatingView;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-static {p1, p2}, Lme/aemo/floatingview/FloatingView;->access$1202(Lme/aemo/floatingview/FloatingView;Z)Z

    goto :goto_1

    .line 317
    :cond_5
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lme/aemo/floatingview/FloatingView;->access$802(Lme/aemo/floatingview/FloatingView;I)I

    .line 318
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Lme/aemo/floatingview/FloatingView;->access$1002(Lme/aemo/floatingview/FloatingView;I)I

    .line 319
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$800(Lme/aemo/floatingview/FloatingView;)I

    move-result p2

    invoke-static {p1, p2}, Lme/aemo/floatingview/FloatingView;->access$902(Lme/aemo/floatingview/FloatingView;I)I

    .line 320
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$1000(Lme/aemo/floatingview/FloatingView;)I

    move-result p2

    invoke-static {p1, p2}, Lme/aemo/floatingview/FloatingView;->access$1102(Lme/aemo/floatingview/FloatingView;I)I

    .line 321
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$1300(Lme/aemo/floatingview/FloatingView;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-static {p1, p2}, Lme/aemo/floatingview/FloatingView;->access$1202(Lme/aemo/floatingview/FloatingView;Z)Z

    .line 350
    :cond_6
    :goto_1
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$9;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {p1}, Lme/aemo/floatingview/FloatingView;->access$1200(Lme/aemo/floatingview/FloatingView;)Z

    move-result p1

    return p1
.end method
