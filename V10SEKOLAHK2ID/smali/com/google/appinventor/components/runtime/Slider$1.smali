.class Lcom/google/appinventor/components/runtime/Slider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Slider;->ThumbEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Slider;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Slider;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Slider$1;->a:Lcom/google/appinventor/components/runtime/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Slider$1;->a:Lcom/google/appinventor/components/runtime/Slider;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Slider;->a(Lcom/google/appinventor/components/runtime/Slider;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
