.class public Lcom/google/appinventor/components/runtime/TableArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed in tabular form.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final a:Lcom/google/appinventor/components/runtime/TableLayout;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 68
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Ljava/util/List;

    .line 69
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Landroid/app/Activity;

    .line 71
    new-instance v1, Lcom/google/appinventor/components/runtime/TableLayout;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2, v2}, Lcom/google/appinventor/components/runtime/TableLayout;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Lcom/google/appinventor/components/runtime/TableLayout;

    .line 73
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public Columns()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TableLayout;->a()I

    move-result v0

    return v0
.end method

.method public Columns(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->a(I)V

    return-void
.end method

.method public Rows()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TableLayout;->b()I

    move-result v0

    return v0
.end method

.method public Rows(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->b(I)V

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->a:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TableLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2

    const/16 v0, -0x3e8

    if-gt p2, v0, :cond_1

    .line 168
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v1

    if-le v1, v0, :cond_0

    if-gtz v1, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v1, v1, p2

    .line 174
    div-int/lit8 p2, v1, 0x64

    .line 178
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 180
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForTableLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 4

    .line 146
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableArrangment.setChildWidth: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " component = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, -0x3e8

    if-gt p2, v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v1

    if-le v1, v0, :cond_0

    if-gtz v1, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 155
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%%TableArrangement.setChildWidth(): width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " parent Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v1, v1, p2

    .line 156
    div-int/lit8 p2, v1, 0x64

    .line 160
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 162
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForTableLayout(Landroid/view/View;I)V

    return-void
.end method
