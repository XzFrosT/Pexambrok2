.class public final Lcom/google/appinventor/components/runtime/NiotronMaterialButton;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "New Material design buttom. Helps to create button with material design provided by google"
    iconName = "images/material_textbox.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "NiotronMaterialButton"


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/LinearLayout;

.field private a:Lcom/google/android/material/button/MaterialButton;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Ljava/lang/String;

.field private a:Z

.field private a:[Ljava/lang/String;

.field private b:F

.field private b:I

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:F

.field private c:I

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:F

.field private d:I

.field private d:Z

.field private e:F

.field private e:I

.field private e:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0x9dff12

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:I

    const/high16 v0, 0x41600000    # 14.0f

    .line 38
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 39
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->b:F

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->c:F

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->d:F

    .line 42
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:F

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->b:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->d:Z

    .line 54
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->f:Z

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->i:I

    .line 60
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->j:I

    .line 61
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->k:I

    .line 62
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->l:I

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 67
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Landroid/content/Context;

    .line 68
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->b:Z

    .line 69
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Landroid/widget/LinearLayout;

    .line 70
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->Width(I)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->Height(I)V

    const-string p1, "5,5,5,5"

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->HeihMargin(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->i:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->j:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->k:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->l:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/button/MaterialButton;->setPadding(IIII)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialButton;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialButton;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color"
    .end annotation

    .line 284
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->f:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the background color"
        userVisible = false
    .end annotation

    .line 278
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->f:I

    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public Bordered(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set to true if to create a material textbox with a outline background"
        userVisible = false
    .end annotation

    .line 78
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Z

    const-string v0, "com.google.android.material.R$layout"

    const-string v1, "layout_inflater"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 82
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "niotronmaterialbutton2"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 92
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "niotronmaterialbutton1"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :catch_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 101
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->b()V

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->c()V

    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when button is clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 296
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CornerRadius(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Corner radius"
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->px(I)I

    move-result p1

    .line 147
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->h:I

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    return-void
.end method

.method public CustomFontTypeFace(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the custom font typeface"
    .end annotation

    if-eqz p1, :cond_4

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->b:Z

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 193
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->d:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
        description = "Sets if enabled"
    .end annotation

    .line 237
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->f:Z

    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns if enabled"
    .end annotation

    .line 243
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->f:Z

    return v0
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

    .line 230
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->d:Z

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->d:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 216
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->d:Z

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the font typeface"
        userVisible = false
    .end annotation

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->c:Z

    .line 168
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->d:I

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->d:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the height"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 324
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public HeihMargin(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5,5,0,0"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets paddings"
        userVisible = false
    .end annotation

    .line 352
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->HeihMargin(Ljava/lang/String;)V

    return-void
.end method

.method public HeihPadding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16,16,0,0"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the padding"
        userVisible = false
    .end annotation

    const-string v0, ","

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 341
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->i:I

    const/4 v0, 0x1

    .line 342
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->k:I

    const/4 v0, 0x2

    .line 343
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->j:I

    const/4 v0, 0x3

    .line 344
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->l:I

    .line 345
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a()V

    return-void
.end method

.method public Icon()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:Ljava/lang/String;

    return-object v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the icon"
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->e:Ljava/lang/String;

    const-string v0, ""

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public IconTint()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the icon tint"
    .end annotation

    .line 272
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->g:I

    return v0
.end method

.method public IconTint(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the icon tint"
        userVisible = false
    .end annotation

    .line 266
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->g:I

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when button is long clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 301
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RippleColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ripple color"
        userVisible = false
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public SetPadding(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets padding to the component"
    .end annotation

    .line 329
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->j:I

    .line 330
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->l:I

    .line 331
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->k:I

    .line 332
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->i:I

    .line 333
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a()V

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "returns the text"
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the text"
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->c:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color"
    .end annotation

    .line 116
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set text color of the button"
    .end annotation

    .line 110
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:I

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    return-void
.end method

.method public TextSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the text size"
    .end annotation

    .line 140
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:F

    return v0
.end method

.method public TextSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the text size"
    .end annotation

    .line 134
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:F

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextSize(F)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the width"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 315
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
