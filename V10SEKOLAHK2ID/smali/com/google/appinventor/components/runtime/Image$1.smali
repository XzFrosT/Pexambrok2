.class Lcom/google/appinventor/components/runtime/Image$1;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Image;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Image;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Image;Landroid/content/Context;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image$1;->a:Lcom/google/appinventor/components/runtime/Image;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    const/4 p1, 0x1

    return p1
.end method
