.class public abstract Lcom/google/appinventor/components/runtime/ToggleBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/CompoundButton;",
        ">",
        "Lcom/google/appinventor/components/runtime/AndroidViewComponent;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/google/appinventor/components/runtime/AccessibleComponent;"
    }
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private c:Z

.field private d:Z

.field private e:Z

.field protected view:Landroid/widget/CompoundButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->e:Z

    .line 69
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:Landroid/content/Context;

    .line 70
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->d:Z

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 175
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The background color of the %type% as an alpha-red-green-blue integer."
    .end annotation

    .line 156
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:I

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    const v0, 0xffffff

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method

.method public Changed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User tapped and released the %type%."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Changed"

    .line 127
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CustomFontTypeFace(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-eqz p1, :cond_4

    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->d:Z

    if-eqz v0, :cond_1

    .line 233
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 239
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;ZZLcom/google/appinventor/components/runtime/Form;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "True if the %type% is active and clickable."
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set to true if the text of the %type% should be bold."
        userVisible = false
    .end annotation

    .line 214
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:Z

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 260
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set to true if the text of the %type% should be italic."
        userVisible = false
    .end annotation

    .line 275
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:Z

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 291
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the text font size of the %type% in scale-independent pixels."
    .end annotation

    const/high16 v0, 0x41600000    # 14.0f

    sub-float v1, p1, v0

    .line 304
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const/high16 v3, 0x41c00000    # 24.0f

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v1, v4

    if-ltz v6, :cond_1

    sub-float v1, p1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v6, v1, v4

    if-gez v6, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_2

    .line 305
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->e:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_2

    .line 306
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :goto_2
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 363
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the text font face of the %type%."
        userVisible = false
    .end annotation

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 344
    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->c:Z

    .line 345
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:I

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->a:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "%type% became the focused component."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    .line 135
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "%type% stopped being the focused component."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LostFocus"

    .line 143
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the text displayed by the %type%."
    .end annotation

    .line 374
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->c:Z

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 428
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->c:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the text color of the %type% as an alpha-red-green-blue integer."
    .end annotation

    .line 409
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->c:I

    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    :goto_0
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    :goto_1
    return-void
.end method

.method public getHighContrast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLargeFont()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->e:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method protected initToggle()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const v0, 0xffffff

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->BackgroundColor(I)V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Enabled(Z)V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->b:I

    const/high16 v1, 0x41600000    # 14.0f

    .line 84
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ToggleBase;->FontSize(F)V

    const-string v1, ""

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ToggleBase;->Text(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->TextColor(I)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 434
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Changed()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->GotFocus()V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->LostFocus()V

    :goto_0
    return-void
.end method

.method public setHighContrast(Z)V
    .locals 0

    return-void
.end method

.method public setLargeFont(Z)V
    .locals 6

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const/high16 v2, 0x41600000    # 14.0f

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :cond_2
    :goto_0
    return-void
.end method
