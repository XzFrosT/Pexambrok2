.class Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$1;->a:Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 759
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$1;->a:Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->OnFocusChange(Z)V

    return-void
.end method
