.class public Lcom/google/appinventor/components/runtime/GameClient;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Provides a way for applications to communicate with online game servers"
    iconName = "images/gameClient.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.googleapps.permission.GOOGLE_AUTH"
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "leaveinstance"

.field private static final B:Ljava/lang/String; = "newinstance"

.field private static final C:Ljava/lang/String; = "newmessage"

.field private static final D:Ljava/lang/String; = "servercommand"

.field private static final E:Ljava/lang/String; = "setleader"

.field private static final a:Ljava/lang/String; = "GameClient"

.field private static final b:Ljava/lang/String; = "gid"

.field private static final c:Ljava/lang/String; = "iid"

.field private static final d:Ljava/lang/String; = "pid"

.field private static final e:Ljava/lang/String; = "inv"

.field private static final f:Ljava/lang/String; = "leader"

.field private static final g:Ljava/lang/String; = "count"

.field private static final h:Ljava/lang/String; = "type"

.field private static final i:Ljava/lang/String; = "makepublic"

.field private static final j:Ljava/lang/String; = "mrec"

.field private static final k:Ljava/lang/String; = "contents"

.field private static final l:Ljava/lang/String; = "mtime"

.field private static final m:Ljava/lang/String; = "msender"

.field private static final n:Ljava/lang/String; = "command"

.field private static final o:Ljava/lang/String; = "args"

.field private static final p:Ljava/lang/String; = "response"

.field private static final q:Ljava/lang/String; = "messages"

.field private static final r:Ljava/lang/String; = "e"

.field private static final s:Ljava/lang/String; = "public"

.field private static final t:Ljava/lang/String; = "joined"

.field private static final u:Ljava/lang/String; = "invited"

.field private static final v:Ljava/lang/String; = "players"

.field private static final w:Ljava/lang/String; = "getinstancelists"

.field private static final x:Ljava/lang/String; = "messages"

.field private static final y:Ljava/lang/String; = "invite"

.field private static final z:Ljava/lang/String; = "joininstance"


# instance fields
.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private a:Landroid/app/Activity;

.field private a:Landroid/os/Handler;

.field private a:Lcom/google/appinventor/components/runtime/util/GameInstance;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 148
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 133
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->H:Ljava/lang/String;

    .line 152
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    .line 153
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/app/Activity;

    .line 154
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 155
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 156
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->G:Ljava/lang/String;

    .line 157
    new-instance p1, Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-direct {p1, v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 158
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Ljava/util/List;

    .line 159
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->b:Ljava/util/List;

    .line 160
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->c:Ljava/util/List;

    const-string p1, "http://appinvgameserver.appspot.com"

    .line 161
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->F:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GameClient;)Lcom/google/appinventor/components/runtime/util/GameInstance;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GameClient;Lcom/google/appinventor/components/runtime/util/GameInstance;)Lcom/google/appinventor/components/runtime/util/GameInstance;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 629
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$7;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$7;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    .line 639
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 641
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 642
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 643
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 640
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "getinstancelists"

    .line 639
    invoke-direct {p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GameClient;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 782
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$11;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$11;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 803
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "You must have joined an instance before you can invite new players."

    .line 804
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 808
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 810
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 811
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 812
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "inv"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 809
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "invite"

    .line 808
    invoke-direct {p0, v1, p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    .line 713
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$9;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$9;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "You must join an instance before attempting to fetch messages."

    .line 746
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 750
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 752
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 754
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 755
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v4, "count"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 p2, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 756
    invoke-virtual {v3, p1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mtime"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, p2

    const/4 p2, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, p2

    .line 751
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "messages"

    .line 750
    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5

    .line 984
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$20;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Going to post "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with args "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    .line 1003
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1005
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1006
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1007
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "command"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    aput-object v2, v1, p1

    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    .line 1009
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "args"

    invoke-direct {p1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 1004
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string/jumbo p2, "servercommand"

    .line 1003
    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 6

    .line 936
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$18;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$18;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 945
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "You must have joined an instance before you can send messages."

    .line 946
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 950
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 952
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 953
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 954
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "type"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 956
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "mrec"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 p2, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 957
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "contents"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, p2

    const/4 p2, 0x6

    new-instance p3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 958
    invoke-virtual {v2, p1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mtime"

    invoke-direct {p3, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object p3, v1, p2

    .line 951
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "newmessage"

    .line 950
    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5

    .line 889
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$16;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$16;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    .line 900
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 902
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 903
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "iid"

    invoke-direct {v2, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    aput-object v2, v1, p1

    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    .line 905
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "makepublic"

    invoke-direct {p1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 901
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "newinstance"

    .line 900
    invoke-direct {p0, p2, p1, v0, v3}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1129
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    .line 1135
    new-instance v6, Lcom/google/appinventor/components/runtime/GameClient$26;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GameClient$26;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;ZLjava/util/List;)V

    .line 1181
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->ServiceUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "joined"

    .line 650
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 649
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Ljava/util/List;

    const-string v0, "public"

    .line 653
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 652
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->c:Ljava/util/List;

    const-string v0, "invited"

    .line 656
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 655
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 658
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InvitedInstances()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->b:Ljava/util/List;

    .line 660
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->b:Ljava/util/List;

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 662
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 664
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 665
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Invited(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GameClient"

    .line 670
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Instance lists failed to parse."

    .line 671
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .line 841
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$14;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$14;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    .line 852
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 854
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 855
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 856
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 853
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "leaveinstance"

    .line 852
    invoke-direct {p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GameClient;->b()V

    return-void
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .line 1039
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$22;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$22;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    .line 1049
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1051
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "iid"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    aput-object v2, v1, p1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1053
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1050
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "joininstance"

    .line 1049
    invoke-direct {p0, v2, v1, v0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "leader"

    .line 1187
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "players"

    .line 1189
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1188
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 1191
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->Leader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->setLeader(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1196
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->setPlayers(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    move-result-object p1

    .line 1197
    sget-object v1, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    if-eq p1, v1, :cond_2

    .line 1198
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->getPlayersRemoved()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1199
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/GameClient;->PlayerLeft(Ljava/lang/String;)V

    goto :goto_1

    .line 1201
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->getPlayersAdded()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1202
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->PlayerJoined(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 1207
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->Leader()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->NewLeader(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .line 1080
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$25;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$25;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 1089
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "You must join an instance before attempting to set a leader."

    .line 1090
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 1094
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 1096
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 1097
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 1098
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "leader"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 1095
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string/jumbo v1, "setleader"

    .line 1094
    invoke-direct {p0, v1, p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method


# virtual methods
.method public FunctionCompleted(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a function call completed."
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$1;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public GameId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game name for this application. The same game ID can have one or more game instances."
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->G:Ljava/lang/String;

    return-object v0
.end method

.method public GameId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->G:Ljava/lang/String;

    return-void
.end method

.method public GetInstanceLists()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Updates the InstancesJoined and InstancesInvited lists. This procedure can be called before setting the InstanceId."
    .end annotation

    .line 624
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$6;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$6;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetMessages(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves messages of the specified type."
    .end annotation

    .line 708
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$8;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GotMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new message has been received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got message of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient$12;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Info(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that something has occurred which the player should know about."
    .end annotation

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$4;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Initialize()V
    .locals 3

    const-string v0, "GameClient"

    const-string v1, "Initialize"

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->G:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "Game Id must not be empty."

    const-string v2, "GameClient Configuration Error."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public InstanceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game instance id.  Taken together,the game ID and the instance ID uniquely identify the game."
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InstanceIdChanged(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the InstanceId property has changed as a result of calling MakeNewInstance or SetInstance."
    .end annotation

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instance id changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$23;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$23;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Invite(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Invites a player to this game instance."
    .end annotation

    .line 777
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$10;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$10;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Invited(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a user has been invited to this game instance."
    .end annotation

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player invited to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$27;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$27;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public InvitedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances to which this player has been invited but has not yet joined.  To ensure current values are returned, first invoke GetInstanceLists."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->b:Ljava/util/List;

    return-object v0
.end method

.method public JoinedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances in which this player is participating.  To ensure current values are returned, first invoke GetInstanceLists."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Ljava/util/List;

    return-object v0
.end method

.method public Leader()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game\'s leader. At any time, each game instance has only one leader, but the leader may change with time.  Initially, the leader is the game instance creator. Application writers determine special properties of the leader. The leader value is updated each time a successful communication is made with the server."
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getLeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LeaveInstance()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Leaves the current instance."
    .end annotation

    .line 833
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$13;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$13;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public MakeNewInstance(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Asks the server to create a new instance of this game."
    .end annotation

    .line 884
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$15;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public NewInstanceMade(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new instance was successfully created after calling MakeNewInstance."
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$29;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$29;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public NewLeader(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that this game has a new leader as specified through SetLeader"
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$28;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$28;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public PlayerJoined(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new player has joined this game instance."
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$30;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$30;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public PlayerLeft(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a player has left this game instance."
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$31;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$31;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Players()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The current set of players for this game instance. Each player is designated by an email address, which is a string. The list of players is updated each time a successful communication is made with the game server."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getPlayers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public PublicInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances that have been marked public. To ensure current values are returned, first invoke {@link #GetInstanceLists}. "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->c:Ljava/util/List;

    return-object v0
.end method

.method public SendMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends a keyed message to all recipients in the recipients list. The message will consist of the contents list."
    .end annotation

    .line 931
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient$17;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends the specified command to the game server."
    .end annotation

    .line 979
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$19;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ServerCommandFailure(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a server command failed."
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$32;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ServerCommandSuccess(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a server command returned successfully."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " server command returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$2;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://appinvgameserver.appspot.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const-string v0, "/"

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->F:Ljava/lang/String;

    goto :goto_0

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->F:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public ServiceUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL of the game server."
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->F:Ljava/lang/String;

    return-object v0
.end method

.method public SetInstance(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets InstanceId and joins the specified instance."
    .end annotation

    .line 1022
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$21;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$21;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetLeader(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Tells the server to set the leader to playerId. Only the current leader may successfully set a new leader."
    .end annotation

    .line 1075
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$24;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$24;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public UserEmailAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The email address that is being used as the player id for this game client.   At present, users must set this manually in oder to join a game.  But this property will change in the future so that is set automatically, and users will not be able to change it."
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->H:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "User email address is empty."

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->H:Ljava/lang/String;

    return-object v0
.end method

.method public UserEmailAddress(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->H:Ljava/lang/String;

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddressSet(Ljava/lang/String;)V

    return-void
.end method

.method public UserEmailAddressSet(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the user email address has been set."
    .end annotation

    const-string v0, "GameClient"

    const-string v1, "Email address set."

    .line 566
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$3;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public WebServiceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an error occurred while communicating with the web server."
    .end annotation

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebServiceError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$5;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "GameClient"

    const-string v1, "Activity Resumed."

    .line 1112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "GameClient"

    const-string v1, "Activity Stopped."

    .line 1121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
