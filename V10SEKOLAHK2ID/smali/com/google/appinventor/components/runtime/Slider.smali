.class public Lcom/google/appinventor/components/runtime/Slider;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Slider is a progress bar that adds a draggable thumb. You can touch the thumb and drag left or right to set the slider thumb position. As the Slider thumb is dragged, it will trigger the PositionChanged event, reporting the position of the Slider thumb. The reported position of the Slider thumb can be used to dynamically update another component attribute, such as the font size of a TextBox or the radius of a Ball."
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Slider$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Slider"

.field private static final a:Z = false

.field private static final b:Ljava/lang/String; = "&HFF888888"

.field private static final c:I = -0x777778

.field private static final c:Ljava/lang/String; = "&HFFFFC800"

.field private static final d:I = -0x3800


# instance fields
.field private a:F

.field private a:I

.field private final a:Landroid/widget/SeekBar;

.field private b:F

.field private b:I

.field private b:Z

.field private c:F

.field public final referenceGetThumb:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 105
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 97
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->referenceGetThumb:Z

    .line 106
    new-instance v0, Landroid/widget/SeekBar;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    .line 108
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    :cond_1
    const/16 v0, -0x3800

    .line 112
    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->b:I

    const v0, -0x777778

    .line 113
    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:I

    .line 114
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->a()V

    .line 117
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 120
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 121
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->b:F

    const/high16 p1, 0x41f00000    # 30.0f

    .line 122
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->c:F

    .line 123
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Slider;->b:Z

    .line 125
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 135
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Slider;)Landroid/widget/SeekBar;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->b:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    .line 154
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 164
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v1, 0x1020000

    .line 166
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 168
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 173
    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v1, 0x102000d

    .line 174
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->b:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Slider;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Slider;->b:Z

    return p0
.end method

.method private b()V
    .locals 3

    .line 182
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->c:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Slider;->b:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    .line 190
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public ColorLeft()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the left of the thumb."
    .end annotation

    .line 364
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->b:I

    return v0
.end method

.method public ColorLeft(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFC800"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 379
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->b:I

    .line 380
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->a()V

    return-void
.end method

.method public ColorRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the right of the thumb."
    .end annotation

    .line 396
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:I

    return v0
.end method

.method public ColorRight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 411
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:I

    .line 412
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->a()V

    return-void
.end method

.method public Height()I
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public MaxValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the slider max value."
        userVisible = true
    .end annotation

    .line 347
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->b:F

    return v0
.end method

.method public MaxValue(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the maximum value of slider.  Changing the maximum value also resets Thumbposition to be halfway between the minimum and the (new) maximum. If the new maximum is less than the current minimum, then minimum and maximum will both be set to this value.  Setting MaxValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .line 329
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->b:F

    .line 330
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:F

    .line 335
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->b:F

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    return-void
.end method

.method public MinValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the value of slider min value."
        userVisible = true
    .end annotation

    .line 311
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:F

    return v0
.end method

.method public MinValue(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the minimum value of slider.  Changing the minimum value also resets Thumbposition to be halfway between the (new) minimum and the maximum. If the new minimum is greater than the current maximum, then minimum and maximum will both be set to this value.  Setting MinValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .line 291
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:F

    .line 293
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->b:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->b:F

    .line 298
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:F

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    return-void
.end method

.method public PositionChanged(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 455
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PositionChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ThumbColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF0000FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets color of the slider thumb."
        userVisible = true
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public ThumbEnabled(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether or not to display the slider thumb."
        userVisible = true
    .end annotation

    .line 203
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Slider;->b:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 205
    :goto_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->referenceGetThumb:Z

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Lcom/google/appinventor/components/runtime/Slider$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Slider$a;-><init>(Lcom/google/appinventor/components/runtime/Slider;Lcom/google/appinventor/components/runtime/Slider$1;)V

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Slider$a;->getThumb(I)V

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    new-instance v0, Lcom/google/appinventor/components/runtime/Slider$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Slider$1;-><init>(Lcom/google/appinventor/components/runtime/Slider;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public ThumbEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether or not the slider thumb is being be shown"
        userVisible = true
    .end annotation

    .line 235
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->b:Z

    return v0
.end method

.method public ThumbImage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set thumb image of the slider"
        userVisible = true
    .end annotation

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 423
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ThumbPosition()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the position of slider thumb"
        userVisible = true
    .end annotation

    .line 271
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->c:F

    return v0
.end method

.method public ThumbPosition(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the position of the slider thumb. If this value is greater than MaxValue, then it will be set to same value as MaxValue. If this value is less than MinValue, then it will be set to same value as MinValue."
        userVisible = true
    .end annotation

    .line 255
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->b:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->c:F

    .line 258
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->b()V

    .line 259
    iget p1, p0, Lcom/google/appinventor/components/runtime/Slider;->c:F

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    return-void
.end method

.method public TouchDown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchDown"

    .line 465
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TouchUp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchUp"

    .line 460
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->a:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 438
    iget p1, p0, Lcom/google/appinventor/components/runtime/Slider;->b:F

    iget p3, p0, Lcom/google/appinventor/components/runtime/Slider;->a:F

    sub-float/2addr p1, p3

    int-to-float p2, p2

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    add-float/2addr p1, p3

    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->c:F

    .line 447
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 470
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->TouchDown()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 475
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->TouchUp()V

    return-void
.end method
