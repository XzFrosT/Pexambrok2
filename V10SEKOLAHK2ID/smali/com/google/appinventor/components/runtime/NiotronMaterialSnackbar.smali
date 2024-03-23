.class public final Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronSnakbar.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/app/Activity;

.field private a:Landroid/view/View;

.field private a:Lcom/google/android/material/snackbar/Snackbar;

.field private b:I

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:I

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->b:I

    const/4 v1, 0x1

    .line 37
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->c:I

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Landroid/view/View;

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Landroid/app/Activity;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget p1, p1, Lcom/google/appinventor/components/runtime/Form;->FRAME_LAYOUT_ID_CONSTANT:I

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Form;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->b:Landroid/view/View;

    const/high16 p1, -0x1000000

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->BackgroundColor(I)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->TextColor(I)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->ActionTextColor(I)V

    return-void
.end method


# virtual methods
.method public ActionClick(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Action button is clicked"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ActionClick"

    .line 157
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ActionTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the action text color"
    .end annotation

    .line 107
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->d:I

    return v0
.end method

.method public ActionTextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set action text color of the snackbar"
    .end annotation

    .line 103
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->d:I

    return-void
.end method

.method public AnchorView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set component so snackbar will be shown above it"
    .end annotation

    .line 152
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Landroid/view/View;

    return-void
.end method

.method public AnimationMode()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the animation mode"
    .end annotation

    .line 147
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->c:I

    return v0
.end method

.method public AnimationMode(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "Integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set animation type 1 or 2"
    .end annotation

    .line 143
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->c:I

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color"
    .end annotation

    .line 127
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set background color of the snackbar"
    .end annotation

    .line 123
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:I

    return-void
.end method

.method public Dismiss()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismisses the snackbar"
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_0
    return-void
.end method

.method public Duration()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the duration"
    .end annotation

    .line 137
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->b:I

    return v0
.end method

.method public Duration(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "Integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set duration of the snackbar "
    .end annotation

    .line 133
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->b:I

    return-void
.end method

.method public IsShowing()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if the snackbar is showing"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Show(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the snackbar"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->b:Landroid/view/View;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->b:I

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    .line 60
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 61
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->e:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 62
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->c:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAnimationMode(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 63
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setAnchorView(Landroid/view/View;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public ShowWithAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows snackbar with icon"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->b:Landroid/view/View;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->b:I

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    .line 72
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar$1;

    invoke-direct {v0, p0, p2}, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 78
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    iget p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 79
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    iget p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->e:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 80
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    iget p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->c:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAnimationMode(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    iget p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->d:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 82
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    iget p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->e:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 83
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 84
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p2, p1}, Lcom/google/android/material/snackbar/Snackbar;->setAnchorView(Landroid/view/View;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color"
    .end annotation

    .line 117
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->e:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set action text color of the snackbar"
    .end annotation

    .line 113
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->e:I

    return-void
.end method
