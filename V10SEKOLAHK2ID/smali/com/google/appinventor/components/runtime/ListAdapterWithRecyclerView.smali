.class public Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;,
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ListAdapterRecyclerView"


# instance fields
.field private a:F

.field private a:I

.field private a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private a:[Landroidx/cardview/widget/CardView;

.field private b:F

.field private b:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private d:I

.field private e:I

.field private f:I

.field protected final filter:Landroid/widget/Filter;

.field private g:I

.field private h:I

.field private i:I

.field public isSelected:Z

.field public isVisible:[Ljava/lang/Boolean;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field public selection:[Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/YailList;IFIII)V
    .locals 2

    .line 145
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    const/4 v1, -0x1

    .line 117
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->j:I

    .line 118
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->k:I

    .line 119
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->l:I

    const/4 v1, 0x1

    .line 120
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->m:I

    .line 147
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 148
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:F

    .line 149
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:I

    .line 150
    iput p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->c:I

    .line 151
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b:I

    const/4 p1, 0x0

    .line 152
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b:F

    .line 153
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->d:I

    .line 154
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->e:I

    .line 155
    iput p6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->f:I

    .line 156
    iput p7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g:I

    .line 157
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->h:I

    .line 158
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->i:I

    .line 159
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Z

    .line 160
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    .line 161
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 162
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 164
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Ljava/util/List;

    .line 169
    :goto_0
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p1

    if-gt v1, p1, :cond_0

    .line 170
    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance p3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    const-string p4, "Text1"

    .line 172
    invoke-virtual {p3, p4, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFIIIIIIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;IIFFIIIIIIIZ)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->j:I

    .line 118
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->k:I

    .line 119
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->l:I

    const/4 v0, 0x1

    .line 120
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->m:I

    .line 123
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Ljava/util/List;

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 125
    iput p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:F

    .line 126
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:I

    .line 127
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b:I

    .line 128
    iput p6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b:F

    .line 129
    iput p7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->c:I

    .line 130
    iput p8, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->d:I

    .line 131
    iput p9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->e:I

    .line 132
    iput p10, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->f:I

    .line 133
    iput p11, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g:I

    .line 134
    iput p13, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->h:I

    .line 135
    iput p12, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->i:I

    .line 136
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    .line 137
    iput-boolean p14, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Z

    .line 139
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 140
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 142
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->m:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->j:I

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->k:I

    return p0
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->l:I

    return p0
.end method


# virtual methods
.method public changeSelections(I)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    aget-object p1, v0, p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g:I

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    aget-object p1, v0, p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->f:I

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public clearSelections()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 180
    aget-object v1, v1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->f:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    array-length v0, v0

    return v0
.end method

.method public getSelectedItems()Ljava/lang/String;
    .locals 5

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    .line 416
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 417
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Text1"

    .line 420
    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;I)V
    .locals 9

    .line 302
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "Text1"

    .line 310
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Text2"

    .line 312
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 315
    :goto_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->e:I

    if-nez v3, :cond_1

    .line 316
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 318
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 321
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_3
    const/4 v4, 0x3

    const-string v5, ": "

    const-string v6, "onBindViewHolder Unable to load image "

    const-string v7, "Image"

    const-string v8, "ListAdapterRecyclerView"

    if-ne v3, v4, :cond_4

    .line 324
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 327
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_1
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 334
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 337
    :try_start_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_2
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 345
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder Layout not recognized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 348
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroidx/cardview/widget/CardView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto :goto_4

    .line 350
    :cond_6
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroidx/cardview/widget/CardView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->f:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 352
    :goto_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 354
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroidx/cardview/widget/CardView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 355
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 357
    :cond_7
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 358
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 360
    :goto_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;->a:Landroidx/cardview/widget/CardView;

    aput-object p1, v0, p2

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;
    .locals 12

    .line 215
    new-instance p1, Landroidx/cardview/widget/CardView;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 216
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    const/16 v0, 0xa

    .line 217
    invoke-virtual {p1, v0, v0, v0, v0}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 218
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    const v1, 0x40066666    # 2.1f

    .line 219
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 221
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 222
    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->f:I

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 223
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 224
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->m:I

    .line 225
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setId(I)V

    .line 227
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    .line 228
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 230
    invoke-static {p1, v5}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 233
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v6

    iput v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->j:I

    .line 235
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    .line 236
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 238
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 240
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->c:I

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    invoke-static {v5, v6, v4, v4, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    .line 242
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 243
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 247
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->e:I

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v2, v8, :cond_0

    if-ne v2, v7, :cond_1

    .line 249
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v9}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v9

    iput v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->l:I

    .line 251
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 252
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->i:I

    iget v11, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->h:I

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    :cond_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->e:I

    if-eqz v2, :cond_5

    if-ne v2, v7, :cond_2

    goto/16 :goto_1

    .line 262
    :cond_2
    new-instance v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v7

    iput v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->k:I

    .line 264
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setId(I)V

    .line 265
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    iget v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b:F

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 267
    iget v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->d:I

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v10}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    invoke-static {v2, v9, v4, v4, v10}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZLcom/google/appinventor/components/runtime/Form;)V

    .line 268
    iget v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b:I

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->e:I

    if-eq v9, p2, :cond_4

    if-ne v9, v8, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v9, v3, :cond_6

    const/16 v3, 0x32

    .line 284
    invoke-virtual {v7, v3, v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 285
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p2, 0x0

    .line 287
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 289
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 270
    :cond_4
    :goto_0
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 271
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 274
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v4, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 275
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 259
    :cond_5
    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    :cond_6
    :goto_2
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {p1, v6}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 296
    new-instance p2, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$a;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    return-void
.end method

.method public toggleSelection(I)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 189
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 190
    aget-object v1, v1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->f:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a:[Landroidx/cardview/widget/CardView;

    aget-object p1, v0, p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g:I

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method
