.class public Lcom/google/appinventor/components/runtime/util/TextViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F
    .locals 0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static getText(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 0

    .line 253
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEnabled(Landroid/widget/TextView;)Z
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static setAlignment(Landroid/widget/TextView;IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x3

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const/16 p1, 0x10

    goto :goto_1

    :cond_3
    const/16 p1, 0x30

    :goto_1
    or-int/2addr p1, v0

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public static setBackgroundColor(Landroid/widget/TextView;I)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public static setEnabled(Landroid/widget/TextView;Z)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public static setFontSize(Landroid/widget/TextView;F)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public static setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V
    .locals 7

    .line 128
    iget-boolean v0, p4, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 152
    invoke-virtual {p4}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p4, "fontawesome-webfont.ttf"

    invoke-static {p1, p4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 156
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 148
    :cond_1
    invoke-virtual {p4}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p4, "MaterialIcons-Regular.ttf"

    invoke-static {p1, p4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 144
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 136
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 140
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    const/4 p4, 0x0

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz p3, :cond_7

    or-int/lit8 v0, v0, 0x2

    .line 166
    :cond_7
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_2

    .line 169
    :cond_8
    new-instance v6, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;

    move-object v0, v6

    move v1, p1

    move-object v2, p0

    move-object v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil$1;-><init>(ILandroid/widget/TextView;Lcom/google/appinventor/components/runtime/Form;ZZ)V

    invoke-virtual {p4, v6}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    :goto_2
    return-void
.end method

.method public static setFontTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;ZZLcom/google/appinventor/components/runtime/Form;)V
    .locals 1

    .line 218
    iget-boolean v0, p4, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v0, :cond_2

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    const/4 p4, 0x1

    :cond_0
    if-eqz p3, :cond_1

    or-int/lit8 p4, p4, 0x2

    .line 226
    :cond_1
    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 229
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;-><init>(ZZLandroid/widget/TextView;Landroid/graphics/Typeface;)V

    invoke-virtual {p4, v0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    :goto_0
    return-void
.end method

.method public static setMinHeight(Landroid/widget/TextView;I)V
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 327
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    return-void
.end method

.method public static setMinSize(Landroid/widget/TextView;II)V
    .locals 0

    .line 338
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinWidth(Landroid/widget/TextView;I)V

    .line 339
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinHeight(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static setMinWidth(Landroid/widget/TextView;I)V
    .locals 0

    .line 313
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 314
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method public static setPadding(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1, p1, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 286
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 274
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public static setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 263
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
