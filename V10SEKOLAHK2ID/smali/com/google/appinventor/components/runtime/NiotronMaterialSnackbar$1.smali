.class Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->ShowWithAction(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar$1;->a:Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar$1;->a:Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronMaterialSnackbar;->ActionClick(Ljava/lang/String;)V

    return-void
.end method
