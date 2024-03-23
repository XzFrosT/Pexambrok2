.class Lcom/google/appinventor/components/runtime/Form$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V
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

    .line 2976
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$7;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 2978
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$7;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->c(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 p1, 0x1

    return p1
.end method
