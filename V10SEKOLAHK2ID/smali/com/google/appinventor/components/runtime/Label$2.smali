.class Lcom/google/appinventor/components/runtime/Label$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Label;->Clickable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Label;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Label;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label$2;->a:Lcom/google/appinventor/components/runtime/Label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 724
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label$2;->a:Lcom/google/appinventor/components/runtime/Label;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Label;->Click()V

    return-void
.end method
