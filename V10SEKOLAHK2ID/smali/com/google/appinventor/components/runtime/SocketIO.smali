.class public Lcom/google/appinventor/components/runtime/SocketIO;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/socket.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "socket-io.jar, engine-io.jar, json-20090211.jar, okhttp.jar, okio.jar"
.end annotation


# static fields
.field private static a:I

.field private static a:Lcom/google/appinventor/components/runtime/util/YailList;

.field private static b:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Lio/socket/client/Socket;

.field private a:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Landroid/content/Context;

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 28
    sget v0, Lcom/google/appinventor/components/runtime/SocketIO;->a:I

    return v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/SocketIO;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/appinventor/components/runtime/SocketIO;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/SocketIO;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/SocketIO;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 50
    :try_start_0
    invoke-static {p1}, Lio/socket/client/IO;->socket(Ljava/lang/String;)Lio/socket/client/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lio/socket/client/Socket;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public Connect()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lio/socket/client/Socket;

    invoke-virtual {v0}, Lio/socket/client/Socket;->connect()Lio/socket/client/Socket;

    return-void
.end method

.method public Disconnect()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lio/socket/client/Socket;

    invoke-virtual {v0}, Lio/socket/client/Socket;->disconnect()Lio/socket/client/Socket;

    return-void
.end method

.method public Emit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lio/socket/client/Socket;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-void
.end method

.method public EventReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = ""
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "EventReceived"

    .line 120
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ListenToEvent(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .line 80
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_0

    .line 81
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    sput-object p1, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 p1, 0x0

    .line 82
    :goto_0
    sget-object v0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 83
    sput p1, Lcom/google/appinventor/components/runtime/SocketIO;->a:I

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lio/socket/client/Socket;

    sget-object v1, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/SocketIO$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/SocketIO$1;-><init>(Lcom/google/appinventor/components/runtime/SocketIO;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/google/appinventor/components/runtime/SocketIO;->b:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Lio/socket/client/Socket;

    new-instance v1, Lcom/google/appinventor/components/runtime/SocketIO$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/SocketIO$2;-><init>(Lcom/google/appinventor/components/runtime/SocketIO;)V

    invoke-virtual {v0, p1, v1}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    :cond_1
    return-void
.end method

.method public URL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "set url of connection"
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->a:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/SocketIO;->a(Ljava/lang/String;)V

    return-void
.end method
