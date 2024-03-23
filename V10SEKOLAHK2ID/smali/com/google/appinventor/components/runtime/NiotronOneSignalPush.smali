.class public final Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for receiving onesignal push nitification "
    iconName = "images/niotronOneSignalPush.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "one-signal.jar, one-signal.aar, play-services-tasks.jar, play-services-tasks.aar, play-services-basement.jar, play-services-basement.aar, play-services-base.aar, play-services-base.jar, browser-1.0.0.jar, browser-1.0.0.aar, play-services-location.jar, play-services-location.aar, concurrent-futures.jar, play-services-stats.aar, play-services-stats.jar, play-services-places-placereport.jar, play-services-places-placereport.aar, play-services-iid.jar, play-services-iid.aar, kotlin-stdlib.jar, kotlin-stdlib-common.jar, kotlin-android-extensions-runtime.jar, kotlin-stdlib-jdk7.jar, work-runtime.jar, work-runtime.aar, startup-runtime.aar, startup-runtime.jar, tracing.jar, listenablefuture-1.0.jar, room-runtime-2.2.5.aar, room-runtime-2.2.5.jar, sqlite-2.1.0.aar, sqlite-2.1.0.jar, sqlite-framework-2.1.0.aar, sqlite-framework-2.1.0.jar, firebase-messaging.jar, firebase-messaging.aar, room-common-2.2.5.jar, firebase-datatransport.jar, firebase-datatransport.aar, firebase-encoders.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-iid-interop.jar, firebase-iid-interop.aar, firebase-installations.aar, firebase-installations.jar, firebase-installations-interop.aar, firebase-installations-interop.jar, firebase-measurement-connector.aar, firebase-measurement-connector.jar, play-services-cloud-messaging.jar, play-services-cloud-messaging.aar, transport-api.jar, transport-api.aar, transport-backend-cct.jar, transport-backend-cct.aar, transport-runtime.jar, transport-runtime.aar, javax.inject.jar, firebase-components-16.0.0.aar, firebase-components-16.0.0.jar,  firebase-common-19.3.0.aar, firebase-common-19.3.0.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.POST_NOTIFICATIONS, android.permission.INTERNET, com.google.android.c2dm.permission.RECEIVE, android.permission.WAKE_LOCK, android.permission.VIBRATE, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED, com.sec.android.provider.badge.permission.READ, com.sec.android.provider.badge.permission.WRITE, com.htc.launcher.permission.READ_SETTINGS, com.htc.launcher.permission.UPDATE_SHORTCUT, com.sonyericsson.home.permission.BROADCAST_BADGE, com.sonymobile.home.permission.PROVIDER_INSERT_BADGE, com.anddoes.launcher.permission.UPDATE_COUNT, com.majeur.launcher.permission.UPDATE_BADGE, com.huawei.android.launcher.permission.CHANGE_BADGE, com.huawei.android.launcher.permission.READ_SETTINGS, com.huawei.android.launcher.permission.WRITE_SETTINGS, android.permission.READ_APP_BADGE, com.oppo.launcher.permission.READ_SETTINGS, com.oppo.launcher.permission.WRITE_SETTINGS, me.everything.badger.permission.BADGE_COUNT_READ, me.everything.badger.permission.BADGE_COUNT_WRITE, android.permission.FOREGROUND_SERVICE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 63
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AppId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns app id"
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->a:Ljava/lang/String;

    return-object v0
.end method

.method public AppId(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets app id"
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->a:Ljava/lang/String;

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/onesignal/OneSignal;->initWithContext(Landroid/content/Context;)V

    .line 74
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/onesignal/OneSignal;->setAppId(Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "App Id can not be blank"

    const-string v1, "Invalid Input"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public ClearAllNotifications()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear all notification"
    .end annotation

    .line 161
    invoke-static {}, Lcom/onesignal/OneSignal;->clearOneSignalNotifications()V

    return-void
.end method

.method public ClearNotification(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear notification by id"
    .end annotation

    .line 166
    invoke-static {p1}, Lcom/onesignal/OneSignal;->removeNotification(I)V

    return-void
.end method

.method public DeleteTags(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes one or more tags. Takes list of tags in parameter"
    .end annotation

    .line 197
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 200
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {v0}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public GetTags()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the tags"
    .end annotation

    .line 182
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getTags(Lcom/onesignal/OneSignal$OSGetTagsHandler;)V

    return-void
.end method

.method public GetUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the subscription id. Returns -1 if any error occurred"
    .end annotation

    .line 84
    invoke-static {}, Lcom/onesignal/OneSignal;->getDeviceState()Lcom/onesignal/OSDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSDeviceState;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    :cond_0
    return-object v0
.end method

.method public GotTags(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the tags."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotTags"

    .line 238
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnErrorSendingNotification(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when error sending notification"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnErrorSendingNotification"

    .line 248
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnNotificationFailed(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns if there was an error sending the message."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnFailure"

    .line 263
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnNotificationSend(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when sent notification successfully"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnNotificationSend"

    .line 243
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OpenedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Opened notification"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "OpenedNotification"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final PostNotification(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a notification."
    .end annotation

    .line 95
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ReceivedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Received notification"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "ReceivedNotification"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SendNotification(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends notification programatically from device"
    .end annotation

    .line 211
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$3;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SendTags(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send the tags."
    .end annotation

    .line 173
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SoundEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns if sound enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public SoundEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns ifsound enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public SubscriptionEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets subscription enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public SubscriptionEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns subscription enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public VirbrationEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets vibration enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public VirbrationEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "returns is vibration enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
