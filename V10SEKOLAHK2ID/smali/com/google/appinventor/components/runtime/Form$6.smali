.class Lcom/google/appinventor/components/runtime/Form$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->addExitButtonToMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 2965
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$6;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 2967
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$6;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->b(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 p1, 0x1

    return p1
.end method
