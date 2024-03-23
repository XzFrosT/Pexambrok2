.class public Lcom/google/appinventor/components/runtime/FacebookLogin;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that allows the login with facebook"
    iconName = "images/facebook.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "facebook-login.jar, facebook-core.jar, facebook-common.jar, facebook-login.aar, facebook-core.aar, facebook-common.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/facebook/AccessToken;

.field private a:Lcom/facebook/CallbackManager;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 51
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookLogin;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookLogin;->a:Landroid/content/Context;

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookLogin;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FacebookLogin;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookLogin;->a:Lcom/facebook/AccessToken;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 103
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FacebookLogin;->a:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/google/appinventor/components/runtime/FacebookLogin$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/FacebookLogin$1;-><init>(Lcom/google/appinventor/components/runtime/FacebookLogin;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method private a(Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 2

    .line 137
    new-instance v0, Lcom/google/appinventor/components/runtime/FacebookLogin$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FacebookLogin$2;-><init>(Lcom/google/appinventor/components/runtime/FacebookLogin;)V

    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    .line 147
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    .line 94
    invoke-static {p2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookLogin;->a:Lcom/facebook/CallbackManager;

    return-void
.end method


# virtual methods
.method public ApplicationID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookLogin;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/FacebookLogin;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public LogIn(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Attempts a log in"
    .end annotation

    .line 64
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FacebookLogin;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method public LogOut()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Attempts a log out"
    .end annotation

    .line 69
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method

.method public OnCancel()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when login canceled"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnCancel"

    .line 89
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnGotUserData(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers When succesfully got user data"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnGotUserData"

    .line 79
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnLoginError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when error occured during login"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnLoginError"

    .line 84
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnLoginSuccess(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when login successful"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnLoginSuccess"

    .line 74
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookLogin;->a:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method
