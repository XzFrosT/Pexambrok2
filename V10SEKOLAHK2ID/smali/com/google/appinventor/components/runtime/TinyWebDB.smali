.class public Lcom/google/appinventor/components/runtime/TinyWebDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that communicates with a Web service to store and retrieve information."
    iconName = "images/tinyWebDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TinyWebDB"

.field private static final b:Ljava/lang/String; = "storeavalue"

.field private static final c:Ljava/lang/String; = "tag"

.field private static final d:Ljava/lang/String; = "value"

.field private static final e:Ljava/lang/String; = "getvalue"


# instance fields
.field private a:Landroid/os/Handler;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 88
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 94
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->a:Landroid/os/Handler;

    const-string p1, "http://tinywebdb.appinventor.mit.edu/"

    .line 97
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/TinyWebDB;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 273
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$4;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->f:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "tag"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    .line 331
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v3, "getvalue"

    .line 328
    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 187
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/TinyWebDB$2;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;)V

    .line 213
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->f:Ljava/lang/String;

    const-string/jumbo v3, "storeavalue"

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "tag"

    invoke-direct {v6, v7, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 p1, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "value"

    .line 218
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, p1

    .line 215
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 213
    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 221
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Value failed to convert to JSON."

    const-string v0, "JSON Creation Error."

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public GetValue(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends a request to the Web service to get the value stored under the given tag. The Web service must decide what to return if there is no value stored under the tag. This component accepts whatever is returned."
    .end annotation

    .line 267
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$3;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$3;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V

    .line 268
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a GetValue server request has succeeded."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotValue"

    .line 345
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL of the web service database."
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->f:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://tinywebdb.appinventor.mit.edu"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->f:Ljava/lang/String;

    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Asks the Web service to store the given value under the given tag"
    .end annotation

    .line 157
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/TinyWebDB$1;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ValueStored()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a StoreValue server request has succeeded."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ValueStored"

    .line 236
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WebServiceError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "WebServiceError"

    .line 357
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
