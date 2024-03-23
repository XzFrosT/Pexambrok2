.class Lcom/google/appinventor/components/runtime/Form$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->AddMenuItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 0

    .line 1397
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$17;->a:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$17;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1399
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$17;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$17;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->MenuItemClick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
