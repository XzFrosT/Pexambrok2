.class Lcom/google/appinventor/components/runtime/NiotronRecyclerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->AddLongClickListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerView;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$2;->a:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$2;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$2;->a:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$2;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->LongClick(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method
