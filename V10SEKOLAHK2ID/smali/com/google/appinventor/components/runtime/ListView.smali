.class public final Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text and image elements.</p> <p>Simple lists of strings may be set using the ElementsFromString property. More complex lists of elements containing multiple strings and/or images can be created using the ListData and ListViewLayout properties. </p>"
    iconName = "images/listView.png"
    nonVisible = false
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "recyclerview.jar, recyclerview.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ListView"

.field private static final b:Z = false

.field private static final d:I = -0x1000000

.field private static final j:I = 0x16

.field private static final m:I = 0xc8


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/widget/EditText;

.field private final a:Landroid/widget/LinearLayout;

.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

.field private a:Lcom/google/appinventor/components/runtime/util/YailList;

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

.field private b:F

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private c:Ljava/lang/String;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private k:I

.field private l:I

.field private n:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 123
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Z

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 125
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    .line 128
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->b:I

    .line 131
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->n:I

    .line 133
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 135
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v1, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 139
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setWidth(I)V

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 141
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    const-string v4, "Search list..."

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v1

    const/high16 v4, -0x1000000

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    new-instance v5, Lcom/google/appinventor/components/runtime/ListView$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Z

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 185
    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    const v1, -0x333334

    .line 186
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->SelectionColor(I)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 188
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->TextColorDetail(I)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 189
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 190
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->FontSizeDetail(F)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->FontTypeface(I)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->FontTypefaceDetail(I)V

    const/16 v1, 0xc8

    .line 194
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ImageWidth(I)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ImageHeight(I)V

    const-string v1, ""

    .line 196
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ListData(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 202
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 203
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->ListViewLayout(I)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/ListView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    return-object p0
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterPicking"

    .line 488
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .line 506
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->c:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 522
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->c:I

    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 524
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a ListView entry. MainText is required. DetailText and ImageName are optional."
    .end annotation

    .line 935
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    const-string v1, "Text1"

    .line 936
    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Text2"

    .line 937
    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Image"

    .line 938
    invoke-virtual {v0, p1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "List of elements to show in the ListView. Depending on the ListView, this may be a list of strings or a list of 3-element sub-lists containing Text, Description, and Image file name."
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 285
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 288
    instance-of v1, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v1, :cond_1

    .line 291
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 292
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 293
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v2, :cond_0

    .line 294
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 295
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 298
    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 299
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Text1"

    invoke-virtual {v2, v3, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Listview"

    .line 305
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The TextView elements specified as a string with the stringItems separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .line 338
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 339
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
        userVisible = false
    .end annotation

    .line 661
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:F

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:F

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x4479c000    # 999.0f

    .line 676
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:F

    .line 679
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public FontSizeDetail()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
    .end annotation

    .line 690
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->b:F

    return v0
.end method

.method public FontSizeDetail(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->b:F

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x4479c000    # 999.0f

    .line 704
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->b:F

    .line 707
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 723
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->h:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 740
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->h:I

    .line 741
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public FontTypefaceDetail()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 757
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->i:I

    return v0
.end method

.method public FontTypefaceDetail(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 774
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->i:I

    .line 775
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public GetDetailText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Detail Text of a ListView element."
    .end annotation

    const-string v0, "Text2"

    .line 949
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetImageName(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the filename of the image of a ListView element that has been uploaded to Media."
    .end annotation

    const-string v0, "Image"

    .line 954
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetMainText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Main Text of a ListView element."
    .end annotation

    const-string v0, "Text1"

    .line 944
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public ImageHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image height of the listview image stringItems."
    .end annotation

    .line 811
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->l:I

    return v0
.end method

.method public ImageHeight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 823
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->l:I

    .line 824
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public ImageWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image width of the listview image."
    .end annotation

    .line 786
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->k:I

    return v0
.end method

.method public ImageWidth(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 798
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->k:I

    .line 799
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public ListData()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 886
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public ListData(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "ListViewAddData"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    const-string v0, "Image"

    const-string v1, "Text2"

    const-string v2, "Text1"

    .line 901
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->d:Ljava/lang/String;

    .line 902
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_3

    const-string v3, ""

    if-eq p1, v3, :cond_3

    const/4 v4, 0x0

    .line 905
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 907
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge p1, v6, :cond_3

    .line 908
    invoke-virtual {v5, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 909
    new-instance v7, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 910
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 911
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    move-object v8, v3

    :goto_1
    invoke-virtual {v7, v1, v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    move-object v6, v3

    :goto_2
    invoke-virtual {v7, v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ListView"

    const-string v1, "Malformed JSON in ListView.ListData"

    .line 918
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "ListView.ListData"

    invoke-virtual {v0, p0, p1, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 922
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public ListViewLayout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 834
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->n:I

    return v0
.end method

.method public ListViewLayout(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "ListViewLayout"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 846
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->n:I

    .line 847
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public Orientation()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 859
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->b:I

    return v0
.end method

.method public Orientation(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "recyclerview_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the layout\'s orientation (vertical, horizontal). "
    .end annotation

    .line 875
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->b:I

    .line 876
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public Refresh()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reload the ListView to reflect any changes in the data."
    .end annotation

    .line 959
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text last selected in the ListView."
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 440
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->b:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 443
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 444
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v3, "Text1"

    .line 445
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 446
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    const-string p1, "Text2"

    .line 447
    invoke-virtual {v2, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->c:Ljava/lang/String;

    goto :goto_1

    .line 451
    :cond_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    .line 456
    :cond_2
    :goto_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    return-void
.end method

.method public SelectionColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the item when it is selected."
    .end annotation

    .line 540
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->g:I

    return v0
.end method

.method public SelectionColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 557
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->g:I

    .line 558
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public SelectionDetailText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the secondary text of the selected row in the ListView."
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->c:Ljava/lang/String;

    return-object v0
.end method

.method public SelectionIndex()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .line 388
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the one-indexed position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v0, "Text1"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->b:Ljava/lang/String;

    .line 409
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v0, "Text2"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->c:Ljava/lang/String;

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->b:Ljava/lang/String;

    const-string p1, ""

    .line 414
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->c:Ljava/lang/String;

    .line 416
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    if-eqz p1, :cond_1

    .line 417
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->toggleSelection(I)V

    :cond_1
    return-void
.end method

.method public ShowFilterBar(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it."
    .end annotation

    .line 255
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Z

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/EditText;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public ShowFilterBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar for visibility."
    .end annotation

    .line 272
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Z

    return v0
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of the listview stringItems."
    .end annotation

    .line 574
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->e:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 590
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->e:I

    .line 591
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public TextColorDetail()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of DetailText of listview stringItems. "
    .end annotation

    .line 603
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->f:I

    return v0
.end method

.method public TextColorDetail(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 616
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->f:I

    .line 617
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public TextSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview items."
    .end annotation

    .line 633
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public TextSize(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "22"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    const/16 p1, 0x3e7

    :cond_0
    int-to-float p1, p1

    .line 648
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 241
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 474
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string p2, "Text1"

    .line 475
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListView;->b:Ljava/lang/String;

    const-string p2, "Text2"

    .line 476
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->c:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    .line 477
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListView;->a:I

    .line 478
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    return-void
.end method

.method public setAdapterData()V
    .locals 19

    move-object/from16 v0, p0

    .line 347
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 349
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->a:Ljava/util/List;

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->e:I

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->f:I

    iget v9, v0, Lcom/google/appinventor/components/runtime/ListView;->a:F

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->b:F

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->h:I

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->i:I

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->n:I

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->c:I

    iget v15, v0, Lcom/google/appinventor/components/runtime/ListView;->g:I

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->k:I

    iget v3, v0, Lcom/google/appinventor/components/runtime/ListView;->l:I

    const/16 v18, 0x0

    move/from16 v16, v4

    move-object v4, v1

    move/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFIIIIIIIZ)V

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 351
    iget v1, v0, Lcom/google/appinventor/components/runtime/ListView;->b:I

    if-ne v1, v2, :cond_0

    .line 352
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 354
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 358
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v7, v0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->e:I

    iget v9, v0, Lcom/google/appinventor/components/runtime/ListView;->a:F

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->h:I

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->c:I

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->g:I

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/YailList;IFIII)V

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 360
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 362
    :goto_0
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    new-instance v3, Lcom/google/appinventor/components/runtime/ListView$2;

    invoke-direct {v3, v0}, Lcom/google/appinventor/components/runtime/ListView$2;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V

    .line 370
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 371
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->a:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
