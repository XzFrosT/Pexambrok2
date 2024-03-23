.class public final Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "New Material design textbox. Helps to create textbox with matial design provided by google"
    iconName = "images/material_textbox.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "NiotronMaterialTextBox"


# instance fields
.field private a:F

.field a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

.field private a:Lcom/google/android/material/textfield/TextInputLayout;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Ljava/lang/String;

.field private a:Z

.field private a:[Ljava/lang/String;

.field private b:F

.field b:I

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:F

.field private c:I

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:F

.field private d:I

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:F

.field private e:I

.field private e:Z

.field private f:I

.field private f:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "Hint"

    .line 35
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Ljava/lang/String;

    const/high16 v0, -0x1000000

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:I

    const/high16 v0, 0x41600000    # 14.0f

    .line 38
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 39
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:F

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:F

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:F

    .line 42
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:F

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->f:Z

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->j:I

    .line 59
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->k:I

    .line 60
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->l:I

    .line 61
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->m:I

    .line 62
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->n:I

    .line 63
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->o:I

    .line 64
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->p:I

    .line 65
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->q:I

    const v0, -0x9dff12

    .line 66
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:I

    const v0, -0x616162

    .line 67
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:I

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroid/content/Context;

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:Z

    .line 74
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroid/widget/LinearLayout;

    .line 75
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->Width(I)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->Height(I)V

    const-string p1, "5,5,5,5"

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->HeihMargin(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 6

    .line 464
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->getView()Landroid/view/View;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 467
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->j:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->k:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->l:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->m:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 468
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 471
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->j:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->k:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->l:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->m:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 472
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 5

    .line 477
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->n:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->o:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->p:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->q:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setPadding(IIII)V

    return-void
.end method

.method private c()V
    .locals 5

    .line 481
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setTextColor(I)V

    .line 483
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:F

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setTextSize(F)V

    .line 484
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public Bordered(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set to true if to create a material textbox with a outline background"
        userVisible = false
    .end annotation

    .line 83
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Z

    const-string/jumbo v0, "spinner"

    const-string v1, "com.google.android.material.R$layout"

    const-string v2, "layout_inflater"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 87
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "niotronmaterialspinner2"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->f:I

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 98
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "niotronmaterialspinner1"

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :catch_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->f:I

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 105
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 108
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 109
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->g:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    .line 110
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x101009c

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v6, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 120
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 121
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c()V

    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d()V

    return-void
.end method

.method public CustomFontTypeFace(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets custom font typeface"
    .end annotation

    if-eqz p1, :cond_4

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/"

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:Z

    if-eqz v0, :cond_1

    .line 286
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 292
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
        description = "Set enabled"
    .end annotation

    .line 337
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->f:Z

    .line 338
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get enabled"
    .end annotation

    .line 343
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->f:Z

    return v0
.end method

.method public FocusedBorderColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns focused border color"
    .end annotation

    .line 144
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:I

    return v0
.end method

.method public FocusedBorderColor(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Focused border color"
    .end annotation

    .line 129
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:I

    .line 130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x101009c

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v6, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

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

    .line 329
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:Z

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 315
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:Z

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets font typeface"
        userVisible = false
    .end annotation

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:Z

    .line 267
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:I

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 420
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public HeihMargin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5,5,5,5"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the margin"
        userVisible = false
    .end annotation

    const-string v0, ","

    .line 444
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 445
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->j:I

    const/4 v0, 0x1

    .line 446
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->l:I

    const/4 v0, 0x2

    .line 447
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->k:I

    const/4 v0, 0x3

    .line 448
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->m:I

    .line 449
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a()V

    return-void
.end method

.method public HeihPadding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "17,17,17,17"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the padding"
        userVisible = false
    .end annotation

    const-string v0, ","

    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 456
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->n:I

    const/4 v0, 0x1

    .line 457
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->p:I

    const/4 v0, 0x2

    .line 458
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->o:I

    const/4 v0, 0x3

    .line 459
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->q:I

    .line 460
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b()V

    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the hint"
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Hint"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set hint for material spinner"
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ItemClick(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when item is selected"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ItemClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ItemsFromString(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set icon from string"
    .end annotation

    const-string v0, ","

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 390
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 391
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 392
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public OnFocusChange(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when focus changes"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 378
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnFocusChange"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RadiusBottomLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Bottom left radious"
    .end annotation

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 248
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:F

    .line 249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:F

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiusBottomRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Bottom right radious"
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 240
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:F

    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiusTopLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Top left radious"
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 232
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:F

    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiusTopRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Top right radious"
    .end annotation

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 224
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:F

    .line 225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->e:F

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public SecondaryBorderColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Secondary border color"
    .end annotation

    .line 165
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:I

    return v0
.end method

.method public SecondaryBorderColor(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Secondary border color"
    .end annotation

    .line 150
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:I

    .line 151
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x101009c

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v6, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public SetMargin(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the margin"
    .end annotation

    .line 425
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->k:I

    .line 426
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->m:I

    .line 427
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->l:I

    .line 428
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->j:I

    .line 429
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a()V

    return-void
.end method

.method public SetPadding(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets padding"
    .end annotation

    .line 434
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->o:I

    .line 435
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->q:I

    .line 436
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->p:I

    .line 437
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->n:I

    .line 438
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->b()V

    return-void
.end method

.method public StartIcon()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns start icon"
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->f:Ljava/lang/String;

    return-object v0
.end method

.method public StartIcon(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set start icon"
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->f:Ljava/lang/String;

    const-string v0, ""

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public StartIconTint()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets start icon tint"
    .end annotation

    .line 372
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->g:I

    return v0
.end method

.method public StartIconTint(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set start icon tint"
        userVisible = false
    .end annotation

    .line 366
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->g:I

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "returns the text"
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 198
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->d:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color"
    .end annotation

    .line 191
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set text color of the spinner"
    .end annotation

    .line 185
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->c:I

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setTextColor(I)V

    return-void
.end method

.method public TextSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text size"
    .end annotation

    .line 216
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:F

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

    .line 210
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:F

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setTextSize(F)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the width"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa0

    .line 411
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
