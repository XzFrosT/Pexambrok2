.class public abstract Lcom/google/appinventor/components/runtime/TextBoxBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z

.field private e:I

.field private e:Z

.field private f:I

.field private f:Z

.field protected final view:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V
    .locals 4

    .line 106
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 88
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->e:Z

    .line 94
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->f:Z

    .line 107
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    .line 109
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Landroid/content/Context;

    .line 111
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->f:I

    .line 117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 118
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->disableSuggestions(Landroid/widget/EditText;)V

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/16 p2, 0xa0

    .line 134
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextAlignment(I)V

    .line 138
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    instance-of p2, p2, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->d:Z

    const/4 p2, 0x1

    .line 146
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Enabled(Z)V

    .line 147
    iput v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->c:I

    const/high16 p2, 0x41600000    # 14.0f

    .line 148
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/TextBoxBase;->FontSize(F)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Hint(Ljava/lang/String;)V

    .line 150
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->e:Z

    if-nez p2, :cond_2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->f:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1

    .line 151
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 p2, -0x100

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 157
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Text(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextColor(I)V

    const p1, -0x777778

    .line 159
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->HintColor(I)V

    .line 160
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->BackgroundColor(I)V

    const-string p1, "10,10,10,10"

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->HeihPadding(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    new-instance p2, Lcom/google/appinventor/components/runtime/TextBoxBase$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/TextBoxBase$1;-><init>(Lcom/google/appinventor/components/runtime/TextBoxBase;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string p3, ""

    .line 88
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Ljava/lang/String;

    const/4 p3, 0x0

    .line 91
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->e:Z

    .line 94
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->f:Z

    .line 182
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    .line 184
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Landroid/content/Context;

    .line 190
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p1, p3, :cond_0

    .line 191
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->disableSuggestions(Landroid/widget/EditText;)V

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 197
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The background color of the input box.  You can choose a color by name in the Designer or in the Blocks Editor.  The default background color is \'default\' (shaded 3-D look)."
    .end annotation

    .line 292
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 309
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:I

    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 313
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->e:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 314
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    :goto_1
    return-void
.end method

.method public CursorVisible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

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

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/"

    .line 489
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 490
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->d:Z

    if-eqz v0, :cond_1

    .line 491
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 497
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the user can enter text into the %type%.  By default, this is true."
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public ErrorText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "returns the error text"
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Ljava/lang/String;

    return-object v0
.end method

.method public ErrorText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the error text, It will be shown on the bottom of any textbox. To disable it use empty string"
    .end annotation

    .line 510
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Ljava/lang/String;

    return-void
.end method

.method public FontBold(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 376
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Z

    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->c:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the font for the text should be bold.  By default, it is not."
        userVisible = false
    .end annotation

    .line 362
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 406
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Z

    .line 407
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->c:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should appear in italics.  By default, it does not."
        userVisible = false
    .end annotation

    .line 393
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size for the text.  By default, it is 14.0 points."
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/high16 v0, 0x41600000    # 14.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :goto_0
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font for the text.  The value can be changed in the Designer."
        userVisible = false
    .end annotation

    .line 454
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->c:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 471
    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->c:Z

    .line 472
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->c:I

    .line 473
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the %type% is selected for input, such as by the user touching it."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    .line 219
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text that should appear faintly in the %type% to provide a hint as to what the user should enter.  This can only be seen if the Text property is empty."
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Ljava/lang/String;

    return-object v0
.end method

.method public Hint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 564
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 566
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public HintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color for the hint.  You can choose a color by name in the Designer or in the Blocks Editor.  The default hint color is gray."
    .end annotation

    .line 652
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->e:I

    return v0
.end method

.method public HintColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 665
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->e:I

    .line 666
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the %type% is no longer selected for input, such as if the user touches a different text box."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LostFocus"

    .line 229
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnTextChange(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when text changes"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnTextChange"

    .line 671
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestFocus()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the %type% active."
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public SelectText(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Selects the text with given range"
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method

.method public SetCursorPosition(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the cursor position into the given index"
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public ShowErrorMessage(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the error message"
    .end annotation

    if-nez p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text in the %type%, which can be set by the programmer in the Designer or Blocks Editor, or it can be entered by the user (unless the <code>Enabled</code> property is false)."
    .end annotation

    .line 594
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->c:Z

    if-eqz v0, :cond_0

    .line 596
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

    .line 597
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should be left justified, centered, or right justified.  By default, text is left justified."
        userVisible = false
    .end annotation

    .line 257
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 275
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:I

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color for the text.  You can choose a color by name in the Designer or in the Blocks Editor.  The default text color is black."
    .end annotation

    .line 619
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->d:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 632
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->d:I

    if-eqz p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 636
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->e:Z

    const/4 v0, -0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 640
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v0, -0x1000000

    :goto_0
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 637
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    :goto_2
    return-void
.end method

.method public getHighContrast()Z
    .locals 1

    .line 736
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->e:Z

    return v0
.end method

.method public getLargeFont()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->f:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->GotFocus()V

    goto :goto_0

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->LostFocus()V

    :goto_0
    return-void
.end method

.method public setHighContrast(Z)V
    .locals 3

    .line 710
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->b:I

    const/high16 v1, -0x1000000

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 720
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->d:I

    if-nez v0, :cond_4

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 722
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 723
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1

    .line 727
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, -0x1

    :cond_3
    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 728
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setLargeFont(Z)V
    .locals 6

    .line 741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const/high16 v2, 0x41600000    # 14.0f

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 743
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 745
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :cond_2
    :goto_0
    return-void
.end method
