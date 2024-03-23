.class Lcom/google/appinventor/components/runtime/Texting$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0

    .line 1144
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$b;->a:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1144
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$b;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "="

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    .line 1155
    aget-object v2, p1, v2

    const/4 v3, 0x1

    .line 1156
    aget-object p1, p1, v3

    const-string v3, ""

    .line 1160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Async sending phoneNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Texting Component"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneNumber"

    .line 1166
    invoke-static {v6, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "text"

    .line 1167
    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$b;->a:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->a(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$b;->a:Lcom/google/appinventor/components/runtime/Texting;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$c;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting$b;->a:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting$b;->a:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Texting;->b(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/google/appinventor/components/runtime/Texting$c;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Texting;->a(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$c;)Lcom/google/appinventor/components/runtime/Texting$c;

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$b;->a:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->a(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Texting$c;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$b;->a:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->a(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Texting$c;->a(Lcom/google/appinventor/components/runtime/Texting$c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sent SMS, response = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "IO Error: unable to create GvHelper"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1144
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$b;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 1186
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1192
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ok"

    .line 1193
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "data"

    .line 1194
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    .line 1197
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 1200
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->a()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "Message sent"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_0
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1

    .line 1202
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->a()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "Errcode 58: SMS limit reached"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_1
    const-string v1, "IO Error"

    .line 1203
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1204
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_2
    return-void
.end method
