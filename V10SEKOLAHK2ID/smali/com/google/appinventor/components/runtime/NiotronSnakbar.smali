.class public final Lcom/google/appinventor/components/runtime/NiotronSnakbar;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronSnakbar.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/view/View;

.field private a:Lcom/google/android/material/snackbar/Snackbar;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->b:Ljava/lang/String;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->b:I

    .line 38
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->c:I

    const/16 v0, 0x5dc

    .line 39
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->d:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Z

    const v0, -0xbbbbbc

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->e:I

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget p1, p1, Lcom/google/appinventor/components/runtime/Form;->FRAME_LAYOUT_ID_CONSTANT:I

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Form;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->d:I

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->b:I

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSnakbar$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronSnakbar$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSnakbar;)V

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSnakbar;)V

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronSnakbar;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Z

    return p1
.end method


# virtual methods
.method public ActionClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ActionClick"

    .line 116
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ActionColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 68
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->b:I

    return-void
.end method

.method public ActionText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Ljava/lang/String;

    return-void
.end method

.method public Dismiss()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_0
    return-void
.end method

.method public Dismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Dismissed"

    .line 111
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Duration(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "To set duration of the snakbar use time in milliseconds, To use predifined time constants follow the below values\n\n \"LENGTH_SHORT\" = 0\n \"LENGTH_LONG\" = -1\n \"LENGTH_INFINITE\" = -2"
    .end annotation

    .line 88
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->d:I

    return-void
.end method

.method public Show()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a()V

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public Shown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Shown"

    .line 106
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Text(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->b:Ljava/lang/String;

    return-void
.end method
