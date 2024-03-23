.class public final Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;
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

.field private a:Lcom/google/android/material/textfield/TextInputEditText;

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

.field private g:Z

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

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 76
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "Hint"

    .line 36
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:Z

    const/high16 v1, -0x1000000

    .line 38
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:I

    const v1, -0x777778

    .line 39
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:I

    const/high16 v1, 0x41600000    # 14.0f

    .line 41
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:F

    const/4 v1, 0x5

    .line 42
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    .line 43
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    .line 44
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    .line 45
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

    const-string v1, ""

    .line 46
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:Ljava/lang/String;

    .line 57
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->g:Z

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->l:I

    .line 63
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->m:I

    .line 64
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->n:I

    .line 65
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->o:I

    .line 66
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->p:I

    .line 67
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->q:I

    .line 68
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->r:I

    .line 69
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->s:I

    const v0, -0x9dff12

    .line 70
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:I

    const v0, -0x444445

    .line 71
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:I

    const v0, 0xffffff

    .line 72
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->t:I

    .line 77
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Landroid/content/Context;

    .line 79
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:Z

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Landroid/widget/LinearLayout;

    .line 81
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->Width(I)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->Height(I)V

    const-string p1, "5,5,5,5"

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->HeihMargin(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 5

    .line 673
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setSingleLine(Z)V

    .line 675
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setTextColor(I)V

    .line 676
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setHintTextColor(I)V

    .line 677
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setTextSize(F)V

    .line 678
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 679
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 683
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 685
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 688
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 690
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 692
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    .line 694
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->invalidate()V

    .line 695
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    return-void
.end method

.method private b()V
    .locals 6

    .line 739
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->getView()Landroid/view/View;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 741
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 742
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->l:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->m:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->n:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->o:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 743
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 745
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 746
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->l:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->m:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->n:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->o:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 5

    .line 752
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->p:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->q:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->r:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->s:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setPadding(IIII)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 763
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color"
    .end annotation

    .line 152
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->t:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the background color"
    .end annotation

    .line 146
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->t:I

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public Bordered(Z)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set to true if to create a material textbox with a outline background"
        userVisible = false
    .end annotation

    .line 89
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Z

    const-string/jumbo v0, "textbox"

    const-string v1, "com.google.android.material.R$layout"

    const-string v2, "layout_inflater"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 93
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "niotronmaterialtextfield2"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->h:I

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 100
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 104
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "niotronmaterialtextfield1"

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :catch_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->h:I

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 111
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 114
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->j:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 115
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->k:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->i:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    .line 117
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const v6, 0x101009c

    aput v6, v4, v5

    aput-object v4, v2, v5

    new-array v4, v5, [I

    aput-object v4, v2, v3

    new-array v4, v1, [I

    iget v7, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:I

    aput v7, v4, v5

    iget v7, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:I

    aput v7, v4, v3

    invoke-direct {v0, v2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 127
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v1, [[I

    new-array v4, v3, [I

    aput v6, v4, v5

    aput-object v4, v2, v5

    new-array v4, v5, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:I

    aput v4, v1, v5

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 137
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a()V

    .line 140
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d()V

    return-void
.end method

.method public CursorVisible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets if cursor visible"
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setCursorVisible(Z)V

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

    .line 493
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/"

    .line 499
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:Z

    if-eqz v0, :cond_1

    .line 501
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 507
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->f:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
        description = "Sets enabled"
    .end annotation

    .line 569
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->g:Z

    .line 570
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns enabled"
    .end annotation

    .line 575
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->g:Z

    return v0
.end method

.method public EndIconMode()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns end icon mode"
    .end annotation

    .line 616
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->j:I

    return v0
.end method

.method public EndIconMode(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets end icon mode"
    .end annotation

    .line 610
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->j:I

    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    return-void
.end method

.method public EndIconTint()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns end icon tint"
    .end annotation

    .line 628
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->k:I

    return v0
.end method

.method public EndIconTint(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 622
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->k:I

    .line 623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public ErrorText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the error text"
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:Ljava/lang/String;

    return-object v0
.end method

.method public ErrorText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the error text, It will be shown on the bottom of any textbox"
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:Ljava/lang/String;

    return-void
.end method

.method public FocusedBorderColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Focused border color"
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:I

    return v0
.end method

.method public FocusedBorderColor(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Focused bordered color"
    .end annotation

    .line 158
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:I

    .line 159
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const v6, 0x101009c

    aput v6, v4, v5

    aput-object v4, v2, v5

    new-array v4, v5, [I

    aput-object v4, v2, v3

    new-array v4, v1, [I

    iget v7, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:I

    aput v7, v4, v5

    iget v7, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:I

    aput v7, v4, v3

    invoke-direct {v0, v2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 169
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v1, [[I

    new-array v4, v3, [I

    aput v6, v4, v5

    aput-object v4, v2, v5

    new-array v4, v5, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:I

    aput v4, v1, v5

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->invalidate()V

    .line 180
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    return-void
.end method

.method public FontBold(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets font bold"
        userVisible = false
    .end annotation

    .line 544
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:Z

    .line 545
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->g:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->f:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 530
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:Z

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

    .line 481
    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:Z

    .line 482
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->g:I

    .line 483
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->f:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets height"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x38

    .line 669
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
        description = "Sets margin"
        userVisible = false
    .end annotation

    const-string v0, ","

    .line 719
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 720
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->l:I

    const/4 v0, 0x1

    .line 721
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->n:I

    const/4 v0, 0x2

    .line 722
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->m:I

    const/4 v0, 0x3

    .line 723
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->o:I

    .line 724
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b()V

    return-void
.end method

.method public HeihPadding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "17,17,17,17"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets padding"
        userVisible = false
    .end annotation

    const-string v0, ","

    .line 730
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 731
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->p:I

    const/4 v0, 0x1

    .line 732
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->r:I

    const/4 v0, 0x2

    .line 733
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->q:I

    const/4 v0, 0x3

    .line 734
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->s:I

    .line 735
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c()V

    return-void
.end method

.method public HelperText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns helper text"
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:Ljava/lang/String;

    return-object v0
.end method

.method public HelperText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the helper text, It will be shown on the bottom of any textbox. To disable it use empty string"
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 350
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 346
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    :goto_1
    return-void
.end method

.method public HideKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard.  Only multiline text boxes need this. \tSingle line text boxes close the keyboard when the users presses the Done key."
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 553
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 554
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the hint"
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getHint()Ljava/lang/CharSequence;

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
        description = "Set hint for material textbox"
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public HintColor()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:I

    return v0
.end method

.method public HintColor(I)V
    .locals 7

    .line 264
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:I

    .line 265
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

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

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public InputType()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the input type"
    .end annotation

    .line 301
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:I

    return v0
.end method

.method public InputType(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "input_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specify the input type of the text box, Possible integer values are\n1 for normal text\n2 for number only\n3 for email address\n4 for password text\n5 for phone number\n6 for date time"
    .end annotation

    .line 281
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 284
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x20001

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x3002

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 288
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 290
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 291
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 293
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 295
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public MaxLength()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns max length"
    .end annotation

    .line 396
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->f:I

    return v0
.end method

.method public MaxLength(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the maximum length of the counter, It will be shown on the bottom left corner of any textbox. To disable it use 0 number"
    .end annotation

    .line 384
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->f:I

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 387
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 390
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->f:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    :goto_0
    return-void
.end method

.method public OnFocusChange(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when focus changes"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 641
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnFocusChange"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

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

    .line 646
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RadiousBottomLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Bottom left radious"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 463
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    .line 464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiousBottomRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Bottom right radious"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 454
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

    .line 455
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiousTopLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Top left radious"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 445
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    .line 446
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public RadiousTopRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Top right radious"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 436
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    .line 437
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

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

    .line 426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 427
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

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

    .line 418
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 419
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

    .line 420
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

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

    .line 410
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 411
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

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

    .line 402
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->px(I)I

    move-result p1

    int-to-float p1, p1

    .line 403
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:F

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->e:F

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public SecondaryBorderColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Secondary border color"
    .end annotation

    .line 208
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:I

    return v0
.end method

.method public SecondaryBorderColor(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFBBBBBB"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Secondary border color"
    .end annotation

    .line 191
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:I

    .line 192
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

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

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 202
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->invalidate()V

    .line 203
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    return-void
.end method

.method public SelectText(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Select text"
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(II)V

    return-void
.end method

.method public SetCursorPosition(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set cursor position"
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(I)V

    return-void
.end method

.method public SetMargin(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets margin"
    .end annotation

    .line 700
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->m:I

    .line 701
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->o:I

    .line 702
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->n:I

    .line 703
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->l:I

    .line 704
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->b()V

    return-void
.end method

.method public SetPadding(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets padding"
    .end annotation

    .line 709
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->q:I

    .line 710
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->s:I

    .line 711
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->r:I

    .line 712
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->p:I

    .line 713
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c()V

    return-void
.end method

.method public ShowErrorMessage(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows error message"
    .end annotation

    if-nez p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 369
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 372
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public ShowKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the keyboard."
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    .line 561
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 562
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public SingleLine(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set to to, to make the text box a single line textbox"
    .end annotation

    .line 226
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:Z

    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setSingleLine(Z)V

    return-void
.end method

.method public SingleLine()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get single line"
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:Z

    return v0
.end method

.method public StartIcon()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the start icon"
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->f:Ljava/lang/String;

    return-object v0
.end method

.method public StartIcon(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets start icon"
    .end annotation

    .line 581
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->f:Ljava/lang/String;

    const-string v0, ""

    .line 582
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
        description = "Returns start icon tint"
    .end annotation

    .line 604
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->i:I

    return v0
.end method

.method public StartIconTint(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets start icon tint"
        userVisible = false
    .end annotation

    .line 598
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->i:I

    .line 599
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

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

    .line 307
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color"
    .end annotation

    .line 245
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set text color of the textbox"
    .end annotation

    .line 239
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->c:I

    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setTextColor(I)V

    return-void
.end method

.method public TextSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get text size"
    .end annotation

    .line 338
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:F

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

    .line 332
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:F

    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setTextSize(F)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets width"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa0

    .line 660
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
