.class Lcom/google/appinventor/components/runtime/NiotronChipView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChipView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronChipView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronChipView;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView$1;->a:Lcom/google/appinventor/components/runtime/NiotronChipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 313
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView$1;->a:Lcom/google/appinventor/components/runtime/NiotronChipView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChipView;->Clicked()V

    return-void
.end method
