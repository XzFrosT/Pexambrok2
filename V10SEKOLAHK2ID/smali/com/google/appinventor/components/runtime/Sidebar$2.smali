.class Lcom/google/appinventor/components/runtime/Sidebar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sidebar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Sidebar;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Sidebar;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar$2;->a:Lcom/google/appinventor/components/runtime/Sidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar$2;->a:Lcom/google/appinventor/components/runtime/Sidebar;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sidebar;->DrawerClosed()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar$2;->a:Lcom/google/appinventor/components/runtime/Sidebar;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sidebar;->DrawerOpened()V

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar$2;->a:Lcom/google/appinventor/components/runtime/Sidebar;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sidebar;->a(Lcom/google/appinventor/components/runtime/Sidebar;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getToggle()Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
