.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:I

    .line 35
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->b:I

    .line 36
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->c:I

    .line 37
    iput p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->d:I

    .line 38
    iput-object p5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 39
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:Ljava/util/List;

    .line 40
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->b:Ljava/util/List;

    .line 42
    new-instance p1, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:Landroid/widget/Filter;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->c:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)Landroid/widget/Filter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:Landroid/widget/Filter;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:I

    return p0
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->b:I

    return p0
.end method


# virtual methods
.method public createAdapter()Landroid/widget/ArrayAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v6, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:Ljava/util/List;

    const v3, 0x1090004

    const v4, 0x1020014

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;Landroid/content/Context;IILjava/util/List;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->a:Landroid/widget/ArrayAdapter;

    return-object v6
.end method
