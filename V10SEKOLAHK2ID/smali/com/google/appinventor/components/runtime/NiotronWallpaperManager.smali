.class public final Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronWallpaperManager.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.SET_WALLPAPER, android.permission.READ_EXTERNAL_STORAGE, android.permission.READ_INTERNAL_STORAGE"
.end annotation


# instance fields
.field a:Landroid/app/WallpaperManager;

.field a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field a:Z

.field b:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Z

    .line 34
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->b:Z

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Landroid/app/WallpaperManager;

    return-void
.end method


# virtual methods
.method public HighQuality(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 154
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->b:Z

    return-void
.end method

.method public OnWallpaperReset()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnWallpaperReset"

    .line 175
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnWallpaperSet()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnWallpaperSet"

    .line 170
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ResetWallpaper()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->OnWallpaperReset()V

    :goto_0
    return-void
.end method

.method public SaveWallpaper(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->WallpaperSaved()V

    :goto_0
    return-void
.end method

.method public Scrollable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 160
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Z

    return-void
.end method

.method public SetLockScreenWallpaper(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 113
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$3;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->start()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x1

    const-string v1, "Set Lock Screen Wallpaper only works for android 7 and above."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public SetWallpaper(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 67
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$1;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->start()V

    return-void
.end method

.method public WallpaperSaved()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WallpaperSaved"

    .line 165
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
