.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/appinventor/components/runtime/ComponentContainer;


# instance fields
.field private a:I

.field private a:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Landroid/widget/Filter;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

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

.field private d:I


# direct methods
.method public constructor <init>(IIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:I

    .line 36
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->b:I

    .line 37
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->c:I

    .line 38
    iput p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->d:I

    .line 39
    sput-object p5, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 40
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Ljava/util/List;

    .line 41
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->b:Ljava/util/List;

    .line 43
    new-instance p1, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Landroid/widget/Filter;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->c:I

    return p0
.end method

.method private a()Landroid/view/View;
    .locals 9

    .line 82
    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xf

    .line 87
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    new-instance v1, Landroid/widget/TextView;

    sget-object v4, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xa

    .line 89
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x3

    .line 90
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    .line 93
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setId(I)V

    .line 94
    new-instance v6, Landroid/widget/TextView;

    sget-object v8, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v8}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, 0x5

    .line 96
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setId(I)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/view/View;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/Filter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Landroid/widget/Filter;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:I

    return p0
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->b:I

    return p0
.end method


# virtual methods
.method public createAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a:Landroid/widget/ArrayAdapter;

    return-object v0
.end method
