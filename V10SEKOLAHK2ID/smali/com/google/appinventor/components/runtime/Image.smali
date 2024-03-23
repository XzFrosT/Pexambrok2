.class public final Lcom/google/appinventor/components/runtime/Image;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for displaying images.  The picture to display, and other aspects of the Image\'s appearance, can be specified in the Designer or in the Blocks Editor."
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# instance fields
.field private a:D

.field private a:I

.field private final a:Landroid/widget/ImageView;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 79
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:D

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:I

    .line 69
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->b:Z

    .line 81
    new-instance v0, Lcom/google/appinventor/components/runtime/Image$1;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Image$1;-><init>(Lcom/google/appinventor/components/runtime/Image;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 92
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/ImageView;)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string p1, ""

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:D

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:I

    .line 69
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Z

    .line 71
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->b:Z

    .line 97
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public AlternateText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A written description of what the image looks like."
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Animation(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is a limited form of animation that can attach a small number of motion types to images.  The allowable motions are ScrollRightSlow, ScrollRight, ScrollRightFast, ScrollLeftSlow, ScrollLeft, ScrollLeftFast, and Stop"
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An event that occurs when an image is clicked."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 113
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Clickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be clickable or not."
    .end annotation

    .line 120
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Z

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 122
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Z

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Image$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Image$2;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public Clickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the image should be clickable or not."
    .end annotation

    .line 136
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Z

    return v0
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when image long clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 141
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LongClickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be long clickable or not."
    .end annotation

    .line 149
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->b:Z

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 151
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->b:Z

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Image$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Image$3;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method

.method public LongClickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the image should be long clickable or not."
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->b:Z

    return v0
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Ljava/lang/String;

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 194
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v2, Lcom/google/appinventor/components/runtime/Image$4;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/Image$4;-><init>(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 208
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Ljava/lang/String;

    .line 212
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Image"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public RotationAngle()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angle at which the image picture appears rotated. This rotation does not appear on the designer screen, only on the device."
    .end annotation

    .line 248
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:D

    return-wide v0
.end method

.method public RotationAngle(D)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 230
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 p2, 0xbb9

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RotationAngle"

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->viewSetRotate(Landroid/view/View;D)V

    .line 241
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:D

    return-void
.end method

.method public ScalePictureToFit(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be resized to match the size of the ImageView."
    .end annotation

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public Scaling()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 309
    iget v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:I

    return v0
.end method

.method public Scaling(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property determines how the picture scales according to the Height or Width of the Image. Scale proportionally (0) preserves the picture aspect ratio. Scale to fit (1) matches the Image area, even if the aspect ratio changes."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 299
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal scaling mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 301
    :goto_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Image;->a:I

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->a:Landroid/widget/ImageView;

    return-object v0
.end method
