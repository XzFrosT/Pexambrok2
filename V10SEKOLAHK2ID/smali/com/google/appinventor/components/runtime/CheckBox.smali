.class public final Lcom/google/appinventor/components/runtime/CheckBox;
.super Lcom/google/appinventor/components/runtime/ToggleBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Checkbox that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor."
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/ToggleBase<",
        "Landroid/widget/CheckBox;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ToggleBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xff7f80

    .line 32
    iput v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->a:I

    const v0, -0x777778

    .line 33
    iput v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->b:I

    .line 42
    new-instance v0, Landroid/widget/CheckBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/CheckBox;->Checked(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CheckBox;->initToggle()V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/CheckBox;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ToggleBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const p1, -0xff7f80

    .line 32
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->a:I

    const p1, -0x777778

    .line 33
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->b:I

    .line 49
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    .line 50
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 51
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public Checked(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 76
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method

.method public Checked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "True if the box is checked, false otherwise."
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public SelectedColor(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF008080"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 83
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->a:I

    .line 84
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast p1, Landroid/widget/CheckBox;

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

    iget v4, p0, Lcom/google/appinventor/components/runtime/CheckBox;->a:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/CheckBox;->b:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public UnselectedColor(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 100
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->b:I

    .line 101
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast p1, Landroid/widget/CheckBox;

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

    iget v4, p0, Lcom/google/appinventor/components/runtime/CheckBox;->a:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/CheckBox;->b:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
