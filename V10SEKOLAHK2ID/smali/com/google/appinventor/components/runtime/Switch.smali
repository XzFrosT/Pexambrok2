.class public final Lcom/google/appinventor/components/runtime/Switch;
.super Lcom/google/appinventor/components/runtime/ToggleBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Toggle switch that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/ToggleBase<",
        "Landroid/widget/CompoundButton;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private final a:Landroid/app/Activity;

.field private final a:Landroidx/appcompat/widget/SwitchCompat;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ToggleBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroid/app/Activity;

    .line 58
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result p1

    const/16 v0, 0xe

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroidx/appcompat/widget/SwitchCompat;

    .line 60
    new-instance p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroidx/appcompat/widget/SwitchCompat;

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    :goto_0
    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->On(Z)V

    const/4 p1, -0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->ThumbColorActive(I)V

    const p1, -0x333334

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->ThumbColorInactive(I)V

    const p1, -0xff0100

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->TrackColorActive(I)V

    const p1, -0x777778

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->TrackColorInactive(I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Switch;->initToggle()V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ToggleBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroidx/appcompat/widget/SwitchCompat;

    .line 80
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    .line 82
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private a(II)Landroid/content/res/ColorStateList;
    .locals 7

    .line 87
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

    aput p1, v1, v6

    aput p2, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method


# virtual methods
.method public Changed()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User change the state of the `Switch` from On to Off or back."
    .end annotation

    .line 226
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Changed()V

    return-void
.end method

.method public On(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 220
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public On()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public ThumbColorActive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 105
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->a:I

    return v0
.end method

.method public ThumbColorActive(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 117
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->a:I

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->b:I

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Switch;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 120
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public ThumbColorInactive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = true
    .end annotation

    .line 132
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->b:I

    return v0
.end method

.method public ThumbColorInactive(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 144
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->b:I

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->a:I

    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/Switch;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 147
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public TrackColorActive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = true
    .end annotation

    .line 158
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->c:I

    return v0
.end method

.method public TrackColorActive(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF00FF00"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Color of the toggle track when switched on"
        userVisible = true
    .end annotation

    .line 174
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->c:I

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->d:I

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Switch;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 177
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public TrackColorInactive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = true
    .end annotation

    .line 162
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->d:I

    return v0
.end method

.method public TrackColorInactive(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Color of the toggle track when switched off"
        userVisible = true
    .end annotation

    .line 189
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->d:I

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->a:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->c:I

    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/Switch;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 192
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_0
    return-void
.end method
