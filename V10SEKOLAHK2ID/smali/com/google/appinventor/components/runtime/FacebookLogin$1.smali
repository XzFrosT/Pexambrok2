.class Lcom/google/appinventor/components/runtime/FacebookLogin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FacebookLogin;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/FacebookLogin;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FacebookLogin;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookLogin$1;->a:Lcom/google/appinventor/components/runtime/FacebookLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookLogin$1;->a:Lcom/google/appinventor/components/runtime/FacebookLogin;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/FacebookLogin;->OnCancel()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookLogin$1;->a:Lcom/google/appinventor/components/runtime/FacebookLogin;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FacebookLogin;->OnLoginError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FacebookLogin$1;->a:Lcom/google/appinventor/components/runtime/FacebookLogin;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FacebookLogin;->a(Lcom/google/appinventor/components/runtime/FacebookLogin;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;

    .line 108
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getRecentlyDeniedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object p1

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookLogin$1;->a:Lcom/google/appinventor/components/runtime/FacebookLogin;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/appinventor/components/runtime/FacebookLogin;->OnLoginSuccess(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FacebookLogin$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
