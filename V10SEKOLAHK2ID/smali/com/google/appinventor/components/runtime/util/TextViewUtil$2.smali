.class final Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;ZZLcom/google/appinventor/components/runtime/Form;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Typeface;

.field final synthetic a:Landroid/widget/TextView;

.field final synthetic a:Z

.field final synthetic b:Z


# direct methods
.method constructor <init>(ZZLandroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;->a:Z

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;->b:Z

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;->a:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialize()V
    .locals 3

    .line 233
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;->b:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;->a:Landroid/graphics/Typeface;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
