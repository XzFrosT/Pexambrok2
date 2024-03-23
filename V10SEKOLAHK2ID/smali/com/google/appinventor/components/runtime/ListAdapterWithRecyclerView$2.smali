.class Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;

.field final synthetic a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->onClick(Landroid/view/View;)V

    return-void
.end method
