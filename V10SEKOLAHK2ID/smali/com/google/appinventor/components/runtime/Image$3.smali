.class Lcom/google/appinventor/components/runtime/Image$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Image;->LongClickable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Image;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Image;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image$3;->a:Lcom/google/appinventor/components/runtime/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image$3;->a:Lcom/google/appinventor/components/runtime/Image;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Image;->LongClick()V

    const/4 p1, 0x1

    return p1
.end method
