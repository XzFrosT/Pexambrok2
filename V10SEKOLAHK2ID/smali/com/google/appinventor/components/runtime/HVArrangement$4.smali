.class Lcom/google/appinventor/components/runtime/HVArrangement$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/HVArrangement;->Clickable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/HVArrangement;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$4;->a:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 485
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$4;->a:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->Click()V

    return-void
.end method
