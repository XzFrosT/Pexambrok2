.class public final Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;
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
.field private static final a:Ljava/lang/String; = "NiotronMaterialButton"


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/LinearLayout;

.field private a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private a:[Ljava/lang/String;

.field private b:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/high16 v0, -0x1000000

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:I

    const/high16 v0, 0x41600000    # 14.0f

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:F

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->b:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Ljava/util/HashMap;

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Landroid/content/Context;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Z

    .line 53
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Landroid/widget/LinearLayout;

    .line 54
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 55
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->Width(I)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->Height(I)V

    .line 59
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->b()V

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->SingleSelection(Z)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setBackgroundColor(I)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    return-void
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set items in toggle button"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.android.material.R$layout"

    .line 67
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "niotronmaterialbutton3"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 73
    :goto_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->b:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 74
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    .line 77
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:I

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 79
    iget p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:F

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextSize(F)V

    .line 80
    iget p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->e:I

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    const-string p1, ""

    if-eq p2, p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 83
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 157
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->c:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 144
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->c:I

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public CheckButton(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will check the button of the given id"
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    return-void
.end method

.method public ClearSelection()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will clear the selection"
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    return-void
.end method

.method public Click(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when button is clicked"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 177
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "Click"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CornerRadius(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Corner radius"
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->px(I)I

    move-result p1

    .line 113
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->e:I

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

    .line 120
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->b:Z

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->b:Z

    return v0
.end method

.method public GetCheckedButtonId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This will return the current checked button id"
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->getIdByValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 200
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public IconTint()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 137
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->d:I

    return v0
.end method

.method public IconTint(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 132
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->d:I

    return-void
.end method

.method public SingleSelection(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color"
    .end annotation

    .line 95
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set text color of the button"
    .end annotation

    .line 90
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:I

    return-void
.end method

.method public TextSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 106
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:F

    return v0
.end method

.method public TextSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the text size"
    .end annotation

    .line 101
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:F

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 191
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getIdByValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
