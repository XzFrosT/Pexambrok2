.class public Lcom/google/appinventor/components/runtime/Voting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    designerHelpDescription = "<p>The Voting component enables users to vote on a question by communicating with a Web service to retrieve a ballot and later sending back users\' votes.</p>"
    iconName = "images/voting.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Voting"

.field private static final b:Ljava/lang/String; = "requestballot"

.field private static final c:Ljava/lang/String; = "sendballot"

.field private static final d:Ljava/lang/String; = "isPolling"

.field private static final e:Ljava/lang/String; = "idRequested"

.field private static final f:Ljava/lang/String; = "question"

.field private static final g:Ljava/lang/String; = "options"

.field private static final h:Ljava/lang/String; = "userchoice"

.field private static final i:Ljava/lang/String; = "userid"


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Ljava/lang/Boolean;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 111
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "http://androvote.appspot.com"

    .line 112
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->k:Ljava/lang/String;

    const-string v1, ""

    .line 113
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Voting;->j:Ljava/lang/String;

    const/4 v2, 0x0

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->b:Ljava/lang/Boolean;

    .line 115
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->a:Ljava/lang/Boolean;

    .line 116
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Voting;->l:Ljava/lang/String;

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->a:Ljava/util/ArrayList;

    .line 118
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Voting;->n:Ljava/lang/String;

    .line 120
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Voting;->a:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 122
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->a:Landroid/app/Activity;

    .line 126
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/Boolean;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->b:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Voting;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->a:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Voting;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Voting;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 343
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 344
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 5

    .line 268
    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$2;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    .line 333
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->k:Ljava/lang/String;

    const-string v3, "requestballot"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Voting;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Voting;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Voting;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 387
    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$4;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    .line 409
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->k:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "userchoice"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "userid"

    invoke-direct {p1, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    aput-object p1, v3, p2

    .line 411
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string/jumbo p2, "sendballot"

    .line 409
    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public BallotOptions()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The list of ballot options."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public BallotQuestion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The question to be voted on."
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->l:Ljava/lang/String;

    return-object v0
.end method

.method public GotBallot()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a ballot was retrieved from the Web service and that the properties <code>BallotQuestion</code> and <code>BallotOptions</code> have been set.  This is always preceded by a call to the method <code>RequestBallot</code>."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotBallot"

    .line 360
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotBallotConfirmation()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotBallotConfirmation"

    .line 423
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public NoOpenPoll()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NoOpenPoll"

    .line 368
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestBallot()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a request for a ballot to the Web service specified by the property <code>ServiceURL</code>.  When the completes, one of the following events will be raised: <code>GotBallot</code>, <code>NoOpenPoll</code>, or <code>WebServiceError</code>."
    .end annotation

    .line 262
    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$1;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    .line 264
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SendBallot()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a completed ballot to the Web service.  This should not be called until the properties <code>UserId</code> and <code>UserChoice</code> have been set by the application."
    .end annotation

    .line 381
    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$3;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    .line 383
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL of the Voting service"
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->k:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://androvote.appspot.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->k:Ljava/lang/String;

    return-void
.end method

.method public UserChoice()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The ballot choice to send to the server, which must be set before <code>SendBallot</code> is called.  This must be one of <code>BallotOptions</code>."
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->n:Ljava/lang/String;

    return-object v0
.end method

.method public UserChoice(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->n:Ljava/lang/String;

    return-void
.end method

.method public UserEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The email address associated with this device. This property has been deprecated and always returns the empty text value."
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public UserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A text identifying the voter that is sent to the Voting server along with the vote.  This must be set before <code>SendBallot</code> is called."
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->j:Ljava/lang/String;

    return-object v0
.end method

.method public UserId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->j:Ljava/lang/String;

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

    .line 436
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
