.class public final Lcom/google/appinventor/components/runtime/Ball;
.super Lcom/google/appinventor/components/runtime/Sprite;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A round \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>ImageSprite</code>s and other <code>Ball</code>s) and the edge of the Canvas, and move according to its property values.</p><p>For example, to have a <code>Ball</code> move 4 pixels toward the top of a <code>Canvas</code> every 500 milliseconds (half second), you would set the <code>Speed</code> property to 4 [pixels], the <code>Interval</code> property to 500 [milliseconds], the <code>Heading</code> property to 90 [degrees], and the <code>Enabled</code> property to <code>True</code>.</p><p>The difference between a <code>Ball</code> and an <code>ImageSprite</code> is that the latter can get its appearance from an image file, while a <code>Ball</code>\'s appearance can be changed only by varying its <code>PaintColor</code> and <code>Radius</code> properties.</p>"
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field static final a:I = 0x5


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ball;->a:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ball;->PaintColor(I)V

    const/4 p1, 0x5

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ball;->Radius(I)V

    return-void
.end method


# virtual methods
.method public Height()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->b:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Height(I)V
    .locals 0

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public MoveTo(DD)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the x and y coordinates of the Ball. If CenterAtOrigin is true, the center of the Ball will be placed here. Otherwise, the top left edge of the Ball will be placed at the specified coordinates."
    .end annotation

    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    return-void
.end method

.method public OriginAtCenter(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the x- and y-coordinates should represent the center of the Ball (true) or its left and top edges (false)."
        userVisible = false
    .end annotation

    .line 194
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the Ball."
    .end annotation

    .line 159
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->c:I

    return v0
.end method

.method public PaintColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 172
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ball;->c:I

    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->a:Landroid/graphics/Paint;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ball;->a:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    return-void
.end method

.method public Radius()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 146
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->b:I

    return v0
.end method

.method public Radius(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The distance from the edge of the Ball to its center."
    .end annotation

    .line 131
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->b:I

    sub-int v0, p1, v0

    .line 133
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Ball;->originAtCenter:Z

    if-eqz v1, :cond_0

    .line 134
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    .line 135
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v3

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    .line 137
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ball;->b:I

    .line 138
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    return-void
.end method

.method public Width()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->b:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Width(I)V
    .locals 0

    return-void
.end method

.method public WidthPercent(I)V
    .locals 0

    return-void
.end method

.method public X()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal coordinate of the Ball, increasing as the Ball moves right. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the leftmost point of the Ball."
    .end annotation

    .line 208
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v0

    return-wide v0
.end method

.method public Y()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical coordinate of the Ball, increasing as the Ball moves down. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the uppermost point of the Ball."
    .end annotation

    .line 222
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    return-wide v0
.end method

.method public containsPoint(DD)Z
    .locals 4

    .line 120
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xCenter:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->xCenter:D

    sub-double/2addr p1, v2

    mul-double v0, v0, p1

    iget-wide p1, p0, Lcom/google/appinventor/components/runtime/Ball;->yCenter:D

    sub-double p1, p3, p1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->yCenter:D

    sub-double/2addr p3, v2

    mul-double p1, p1, p3

    add-double/2addr v0, p1

    iget p1, p0, Lcom/google/appinventor/components/runtime/Ball;->b:I

    mul-int p1, p1, p1

    int-to-double p1, p1

    cmpg-double p3, v0, p1

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 76
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ball;->visible:Z

    if-eqz v0, :cond_0

    .line 77
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 78
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 79
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ball;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    .line 80
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ball;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
