.class Lcom/google/appinventor/components/runtime/ListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/ListView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListView;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$1;->a:Lcom/google/appinventor/components/runtime/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 152
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 153
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ListView$1;->a:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/ListView;->a(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->hasVisibleItems()Z

    move-result p2

    if-nez p2, :cond_0

    .line 154
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ListView$1;->a:Lcom/google/appinventor/components/runtime/ListView;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 156
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ListView$1;->a:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/ListView;->a(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$1;->a:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->a(Lcom/google/appinventor/components/runtime/ListView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ListView$1;->a:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/ListView;->a(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$1;->a:Lcom/google/appinventor/components/runtime/ListView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    :goto_0
    return-void
.end method
