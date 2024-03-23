.class public final Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides access to the Google spreadsheet storage "
    iconName = "images/niotronSpreadsheet.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "json-spreadsheet.jar, json.jar"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field public mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "Sheet1"

    .line 40
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->c:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Z

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->mainHandler:Landroid/os/Handler;

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Landroid/content/Context;

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 541
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 542
    invoke-virtual {v0, p1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 543
    check-cast p1, Lorg/json/simple/JSONObject;

    const-string v0, "code"

    .line 544
    invoke-virtual {p1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/app/Activity;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 548
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 549
    invoke-virtual {v0, p1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 550
    check-cast p1, Lorg/json/simple/JSONObject;

    const-string v0, "msg"

    .line 551
    invoke-virtual {p1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public APIEndpoint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->c:Ljava/lang/String;

    return-object v0
.end method

.method public APIEndpoint(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API endpoint is the access key that you\'ll get from us to read/write data on your Spreadsheet."
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->c:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d:Ljava/lang/String;

    return-void
.end method

.method public DataChange(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a request has finished. Here function name return the last function that you call.\n\nExmaple:\n 1. UPDATE : Update Data\n 2. UPLOAD : Upload data\n 3. DELETE : Delete Data"
    .end annotation

    .line 563
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "DataChange"

    .line 564
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Delete(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a row by number"
    .end annotation

    const-string v0, "DELETE"

    .line 241
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b:Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method=Delete&sheetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCall(Ljava/lang/String;)V

    return-void
.end method

.method public ErrorOccured(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event for error occured"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 575
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "ErrorOccured"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetCell(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Cell Value"
    .end annotation

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&column="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sheetName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&method=getCell"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 704
    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->start()V

    return-void
.end method

.method public GetCellValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue2()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue3()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 141
    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/simple/JSONArray;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 143
    invoke-virtual {v0, p2}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/simple/JSONArray;

    .line 144
    invoke-virtual {p2, p1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public GetColumn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Column"
    .end annotation

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sheetName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&method=getColumn"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 644
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;->start()V

    return-void
.end method

.method public GetColumnList(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue2()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Z

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue3()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 158
    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/simple/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/simple/JSONArray;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 164
    check-cast v3, Lorg/json/simple/JSONArray;

    .line 165
    invoke-virtual {v3, p1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 170
    :cond_2
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 172
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object p1
.end method

.method public GetRow(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Row"
    .end annotation

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&sheetName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&method=getRow"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 583
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;->start()V

    return-void
.end method

.method public GetRowList(I)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue2()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Z

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue3()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 184
    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    .line 185
    invoke-virtual {v0, p1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/simple/JSONArray;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 187
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object p1
.end method

.method public GetSheet(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v0, "[]"

    .line 116
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 118
    :try_start_0
    new-instance v2, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v2}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 119
    invoke-virtual {v2, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    check-cast v1, Lorg/json/simple/JSONArray;

    const/4 v2, 0x0

    .line 121
    :goto_0
    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 122
    invoke-virtual {v1, v2}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/simple/JSONObject;

    .line 123
    invoke-virtual {v3, p1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v3, p1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public GetSheet()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTPS POST request to read/get data from your spreadsheet"
    .end annotation

    const-string v0, "READ"

    .line 275
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b:Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method=GETSHEET&sheetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCallSheet(Ljava/lang/String;)V

    return-void
.end method

.method public GetSheetList()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Landroid/content/Context;

    const-string v1, "MySpreadsheet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "allsheets"

    const-string v3, "[]"

    .line 194
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    :try_start_0
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 198
    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    .line 199
    invoke-virtual {v0, v2}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 201
    :catch_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object v0
.end method

.method public GetSpreadsheet()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTPS POST request to read/get data from your spreadsheet"
    .end annotation

    const-string v0, "READ"

    .line 267
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b:Ljava/lang/String;

    const-string v0, "method=Read"

    .line 269
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCallREAD(Ljava/lang/String;)V

    return-void
.end method

.method public GotCell(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when Get Cell value. Data Type = String"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 756
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "GotCell"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotColumn(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got column values as list"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 697
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "GotColumn"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotRow(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got row values as list"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 636
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "GotRow"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotSheet(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got sheet data. Data type = JSON"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "GotSheet"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotSpreadsheet(ILjava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got spreadsheet data"
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "GotSpreadsheet"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SheetName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    return-object v0
.end method

.method public SheetName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Sheet1"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sheet Name."
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    return-void
.end method

.method public UpdateData(ILcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update Row by number and columns."
    .end annotation

    .line 249
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 252
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 253
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    new-instance p2, Lorg/json/simple/JSONArray;

    invoke-direct {p2}, Lorg/json/simple/JSONArray;-><init>()V

    .line 257
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, p3}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p2}, Lorg/json/simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UPDATE"

    .line 260
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b:Ljava/lang/String;

    .line 261
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method=Update&sheetName="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&row="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&content="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCall(Ljava/lang/String;)V

    return-void
.end method

.method public UploadData(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append row in your sheet"
    .end annotation

    const-string v0, "UPLOAD"

    .line 207
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 211
    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 212
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 213
    aget-object v3, p1, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 214
    new-instance v4, Lorg/json/simple/JSONArray;

    invoke-direct {v4}, Lorg/json/simple/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 215
    :goto_1
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 216
    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 218
    :cond_0
    invoke-virtual {v0, v4}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 223
    :cond_2
    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    .line 225
    :goto_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 226
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 228
    :cond_3
    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method=Append&sheetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->makeServerCall(Ljava/lang/String;)V

    return-void
.end method

.method public UseSheetData(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Use sheet data, if true then it\'ll include return value of sheet when you use offline get data blocks. else include spreadsheet data."
    .end annotation

    .line 85
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Z

    return-void
.end method

.method public UseSheetData()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 90
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Landroid/content/Context;

    const-string v1, "MySpreadsheet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "alldata"

    const-string v2, "[]"

    .line 95
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue2()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GetSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue3()Ljava/lang/String;
    .locals 4

    const-string v0, "[]"

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->a:Landroid/content/Context;

    const-string v2, "MySpreadsheet"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "sheetdata"

    .line 106
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public makeServerCall(Ljava/lang/String;)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d:Ljava/lang/String;

    .line 461
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public makeServerCallREAD(Ljava/lang/String;)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d:Ljava/lang/String;

    .line 371
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public makeServerCallSheet(Ljava/lang/String;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->d:Ljava/lang/String;

    .line 283
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
