.class public final Lcom/google/appinventor/components/runtime/Label;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Label displays a piece of text, which is specified through the <code>Text</code> property.  Other properties, all of which can be set in the Designer or Blocks Editor, control the appearance and placement of the text."
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "MaterialIcons-Regular.ttf, fontawesome-webfont.ttf,fa-brands-400.ttf, fa-regular-400.ttf, fa-solid-900.ttf"
.end annotation


# static fields
.field private static final a:I = 0x2


# instance fields
.field private a:Landroid/content/Context;

.field private final a:Landroid/widget/LinearLayout$LayoutParams;

.field private final a:Landroid/widget/TextView;

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

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 115
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/appinventor/components/runtime/Label;->b:I

    .line 70
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->b:Z

    .line 73
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->c:Z

    .line 107
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->k:Z

    .line 116
    new-instance v1, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    .line 118
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Label;->g:Z

    .line 119
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/content/Context;

    .line 121
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 127
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 130
    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 131
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/Label;->a(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->b:I

    goto :goto_0

    .line 134
    :cond_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/Label;->b:I

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/LinearLayout$LayoutParams;

    const-string p1, "Label"

    const-string v1, "Error: The label\'s view does not have linear layout parameters"

    .line 136
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 141
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->TextAlignment(I)V

    const p1, 0xffffff

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->BackgroundColor(I)V

    .line 143
    iput v0, p0, Lcom/google/appinventor/components/runtime/Label;->e:I

    const/high16 p1, 0x41600000    # 14.0f

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->FontSize(F)V

    const-string p1, ""

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->Text(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->TextColor(I)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->HTMLFormat(Z)V

    const/4 p1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->HasMargins(Z)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->Clickable(Z)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->LongClickable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/TextView;)V
    .locals 1

    .line 155
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/appinventor/components/runtime/Label;->b:I

    .line 70
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->b:Z

    .line 73
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->c:Z

    .line 107
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->k:Z

    .line 156
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    .line 157
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    instance-of p2, p2, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/Label;->g:Z

    .line 158
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/content/Context;

    .line 159
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 162
    instance-of p2, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 163
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Label;->a(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->b:I

    goto :goto_0

    .line 166
    :cond_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/Label;->b:I

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/LinearLayout$LayoutParams;

    const-string p1, "Label"

    const-string p2, "Error: The label\'s view does not have linear layout parameters"

    .line 168
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static a(Landroid/view/View;I)I
    .locals 0

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, p0

    .line 176
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 340
    iget p1, p0, Lcom/google/appinventor/components/runtime/Label;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 342
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 228
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->d:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 241
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->d:I

    if-eqz p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const v0, 0xffffff

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when label clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 683
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Clickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be clickable or not."
    .end annotation

    .line 718
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->i:Z

    .line 719
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 720
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->i:Z

    if-eqz p1, :cond_0

    .line 721
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Label$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Label$2;-><init>(Lcom/google/appinventor/components/runtime/Label;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 728
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public Clickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the image should be clickable or not."
    .end annotation

    .line 734
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->i:Z

    return v0
.end method

.method public CountLines()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the number of lines"
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    return v0
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

    .line 658
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/"

    .line 664
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->g:Z

    if-eqz v0, :cond_1

    .line 666
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 672
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 678
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->d:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;ZZLcom/google/appinventor/components/runtime/Form;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public Ellipsize(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "None"
        editorArgs = {
            "None",
            "Start",
            "Center",
            "End",
            "Marquee"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const-string v0, "Marquee"

    .line 744
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 745
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 746
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 747
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 748
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "Start"

    .line 749
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 752
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "Center"

    .line 753
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 754
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 756
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "End"

    .line 757
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 758
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 760
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "None"

    .line 761
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 762
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 763
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 764
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_4
    :goto_0
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

    .line 274
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Z

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->e:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->d:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Z

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

    .line 303
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->d:Z

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->e:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->a:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 289
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->d:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    if-nez v0, :cond_1

    .line 366
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :goto_0
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 386
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->e:I

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

    .line 403
    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->h:Z

    .line 404
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->e:I

    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->d:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public HTMLContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 578
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->f:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Ljava/lang/String;

    return-object v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public HTMLFormat(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 610
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->f:Z

    if-eqz p1, :cond_0

    .line 612
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public HTMLFormat()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this label will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .line 597
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->f:Z

    return v0
.end method

.method public HasMargins(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 335
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->e:Z

    .line 336
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->a(Z)V

    return-void
.end method

.method public HasMargins()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the label appears with margins.  All four margins (left, right, top, bottom) are the same.  This property has no effect in the designer, where labels are always shown with margins."
        userVisible = true
    .end annotation

    .line 319
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->e:Z

    return v0
.end method

.method public final JoinText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Join text in label inline or in new line"
    .end annotation

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 456
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->h:Z

    if-eqz v0, :cond_0

    .line 458
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

    .line 459
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 462
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 468
    :goto_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->f:Z

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 473
    :goto_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Ljava/lang/String;

    return-void
.end method

.method public JustifyContent(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true then justified contents by stretching spaces."
    .end annotation

    .line 555
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->c:Z

    .line 557
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setJustificationMode(I)V

    return-void
.end method

.method public JustifyContent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 562
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->c:Z

    return v0
.end method

.method public LineSpacing(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Line Spacing. From 0.0 to nth value"
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when label long clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 687
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LongClickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be long clickable or not."
    .end annotation

    .line 694
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->j:Z

    .line 695
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 696
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->j:Z

    if-eqz p1, :cond_0

    .line 697
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Label$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Label$1;-><init>(Lcom/google/appinventor/components/runtime/Label;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 705
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method

.method public LongClickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the image should be long clickable or not."
    .end annotation

    .line 711
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->j:Z

    return v0
.end method

.method public MaxLines(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLines(I)V

    return-void
.end method

.method public Opacity(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set opacity value between 1 to 10"
    .end annotation

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    const-string p1, "1f"

    goto :goto_0

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public Selectable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set test to selectable"
    .end annotation

    .line 547
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->b:Z

    .line 548
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-void
.end method

.method public Selectable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 535
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->b:Z

    return v0
.end method

.method public SetShadow(FFFI)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set shadow under the text"
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final ShowLinks(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "None"
        editorArgs = {
            "None",
            "All",
            "Email",
            "Phone",
            "URLs"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Highlight the links, phone numbers and email addresses. Clicking on it will load the given URI"
    .end annotation

    const-string v0, "All"

    .line 485
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xf

    goto :goto_0

    :cond_0
    const-string v0, "Email"

    .line 487
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "Phone"

    .line 489
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const-string v0, "URLs"

    .line 491
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/16 p1, 0x10

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

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
    .end annotation

    .line 428
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->h:Z

    if-eqz v0, :cond_0

    .line 430
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

    .line 431
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 434
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 440
    :goto_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->f:Z

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 445
    :goto_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Ljava/lang/String;

    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 197
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->c:I

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

    .line 214
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->c:I

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 630
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->f:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 643
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->f:I

    if-eqz p1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 647
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

.method public WordSpacing(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set space between words"
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, " "

    .line 515
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-gez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v1, 0x0

    move-object v3, v2

    :goto_0
    if-ge v1, p1, :cond_1

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "\\s"

    .line 522
    invoke-virtual {v0, p1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->h:Z

    if-nez p1, :cond_2

    .line 526
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->f:Z

    if-nez p1, :cond_2

    .line 527
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 528
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public getHighContrast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLargeFont()Z
    .locals 1

    .line 797
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->k:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public setHighContrast(Z)V
    .locals 0

    return-void
.end method

.method public setLargeFont(Z)V
    .locals 6

    .line 786
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const/high16 v2, 0x41600000    # 14.0f

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 788
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 790
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->a:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :cond_2
    :goto_0
    return-void
.end method
