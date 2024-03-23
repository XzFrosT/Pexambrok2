.class final Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Landroid/widget/TextView;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic a:Z

.field final synthetic b:Z


# direct methods
.method constructor <init>(ILandroid/widget/TextView;Lcom/google/appinventor/components/runtime/Form;ZZ)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:I

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:Lcom/google/appinventor/components/runtime/Form;

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:Z

    iput-boolean p5, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialize()V
    .locals 4

    .line 173
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fontawesome-webfont.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "MaterialIcons-Regular.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 179
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 183
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 203
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 206
    :goto_1
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->b:Z

    if-eqz v2, :cond_7

    or-int/lit8 v1, v1, 0x2

    .line 209
    :cond_7
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
