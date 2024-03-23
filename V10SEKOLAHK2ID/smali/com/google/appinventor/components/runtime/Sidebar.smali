.class public Lcom/google/appinventor/components/runtime/Sidebar;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Sidebar component lets you help to create sidebar for your app"
    iconName = "images/sidebar.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroidx/drawerlayout/widget/DrawerLayout;

.field private a:Lcom/google/android/material/navigation/NavigationView;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Lcom/google/appinventor/components/runtime/Form;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/high16 v0, -0x1000000

    .line 32
    iput v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:I

    const-string v0, "#6200EE"

    .line 33
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->b:I

    .line 37
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroid/content/Context;

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 40
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 41
    new-instance p1, Lcom/google/android/material/navigation/NavigationView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 43
    new-instance p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 44
    iput v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->a()V

    .line 47
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->setColor()V

    .line 48
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->enableHamburger()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Sidebar;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sidebar$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Sidebar$1;-><init>(Lcom/google/appinventor/components/runtime/Sidebar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sidebar$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Sidebar$2;-><init>(Lcom/google/appinventor/components/runtime/Sidebar;)V

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds menu item"
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->navigationCheck()V

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0, p2, v1, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 86
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    const/4 p2, 0x0

    .line 87
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public AddItemWithIcon(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds menu item"
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->navigationCheck()V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0, p3, v1, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    .line 98
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    const/4 p2, 0x0

    .line 99
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 101
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Sidebar"

    const-string p3, "No icon found for menu item"

    invoke-direct {p1, p2, p3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public AddSidebar(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add custom layout to show as sidebar"
    .end annotation

    .line 53
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->removeViewAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 62
    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 63
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationView;->setBackgroundColor(I)V

    return-void
.end method

.method public ClearItems()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public Close()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Closes the sidebar"
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void
.end method

.method public DrawerClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when drawer closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DrawerClosed"

    .line 185
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DrawerOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when drawer opened"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DrawerOpened"

    .line 180
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ItemColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 191
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:I

    .line 192
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->setColor()V

    return-void
.end method

.method public MenuItemSelected(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Item selected"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MenuItemSelected"

    .line 165
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Open()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the sidebar"
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method

.method public SelectedItemColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 198
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->b:I

    .line 199
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->setColor()V

    return-void
.end method

.method public SetHeader(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set header to the drawer"
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sidebar;->navigationCheck()V

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getHeaderCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationView;->addHeaderView(Landroid/view/View;)V

    return-void

    .line 77
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Sidebar"

    const-string v1, "More than 1 header is not allowed"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public SetSelected(Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 114
    :goto_0
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 115
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 118
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public navigationCheck()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeViewAt(I)V

    .line 126
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 127
    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 128
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1, v2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setColor()V
    .locals 7

    .line 203
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a0

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v6, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/google/appinventor/components/runtime/Sidebar;->b:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 212
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 213
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sidebar;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
