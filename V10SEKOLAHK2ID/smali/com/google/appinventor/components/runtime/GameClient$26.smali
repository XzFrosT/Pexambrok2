.class Lcom/google/appinventor/components/runtime/GameClient$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/util/List;

.field final synthetic a:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;ZLjava/util/List;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Z

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting to server failed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with arguments "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Failure message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1135
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$26;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, ""

    .line 1137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received response for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "e"

    .line 1140
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "response"

    if-eqz v1, :cond_0

    .line 1141
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v1, "gid"

    .line 1143
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "."

    if-nez v4, :cond_1

    .line 1145
    :try_start_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect game id in response: + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "iid"

    .line 1148
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 1154
    :cond_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->b(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1157
    :cond_3
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1162
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored server response to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for incorrect instance "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    return-void

    .line 1158
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v4, Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-direct {v4, v1}, Lcom/google/appinventor/components/runtime/util/GameInstance;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/GameClient;->a(Lcom/google/appinventor/components/runtime/GameClient;Lcom/google/appinventor/components/runtime/util/GameInstance;)Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 1159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->b(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V

    .line 1160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceIdChanged(Ljava/lang/String;)V

    .line 1167
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1170
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse JSON response to command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$26;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
