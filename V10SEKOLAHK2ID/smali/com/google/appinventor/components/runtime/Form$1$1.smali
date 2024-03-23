.class Lcom/google/appinventor/components/runtime/Form$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Form$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form$1;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->a:Lcom/google/appinventor/components/runtime/Form$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
