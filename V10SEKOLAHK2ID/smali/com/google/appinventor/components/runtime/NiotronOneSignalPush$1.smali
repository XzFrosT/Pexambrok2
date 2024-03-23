.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/OneSignal$PostNotificationResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->PostNotification(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;->a:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/json/JSONObject;)V
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;->a:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$a;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;->a:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$a;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->OnNotificationFailed(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;->a:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$a;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;->a:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$a;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->OnNotificationSend(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
