.class public final Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Cloud Messaging"
    iconName = "images/firebaseCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "reply.png"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "json-spreadsheet.jar, play-services-tasks.jar, play-services-tasks.aar, play-services-basement.jar, play-services-basement.aar, play-services-base.aar, play-services-base.jar, browser-1.0.0.jar, browser-1.0.0.aar, play-services-location.jar, play-services-location.aar, concurrent-futures.jar, play-services-stats.aar, play-services-stats.jar, play-services-places-placereport.jar, play-services-places-placereport.aar, play-services-iid.jar, play-services-iid.aar, firebase-messaging.jar, firebase-messaging.aar, room-common-2.2.5.jar, firebase-datatransport.jar, firebase-datatransport.aar, firebase-encoders.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-iid-interop.jar, firebase-iid-interop.aar, firebase-installations.aar, firebase-installations.jar, firebase-installations-interop.aar, firebase-installations-interop.jar, firebase-measurement-connector.aar, firebase-measurement-connector.jar, play-services-cloud-messaging.jar, play-services-cloud-messaging.aar, transport-api.jar, transport-api.aar, transport-backend-cct.jar, transport-backend-cct.aar, transport-runtime.jar, transport-runtime.aar, javax.inject.jar, firebase-components-16.0.0.aar, firebase-components-16.0.0.jar,  firebase-common-19.3.0.aar, firebase-common-19.3.0.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.c2dm.permission.RECEIVE, android.permission.WAKE_LOCK, android.permission.VIBRATE, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED, com.sec.android.provider.badge.permission.READ, com.sec.android.provider.badge.permission.WRITE, com.htc.launcher.permission.READ_SETTINGS, com.htc.launcher.permission.UPDATE_SHORTCUT, com.sonyericsson.home.permission.BROADCAST_BADGE, com.sonymobile.home.permission.PROVIDER_INSERT_BADGE, com.anddoes.launcher.permission.UPDATE_COUNT, com.majeur.launcher.permission.UPDATE_BADGE, com.huawei.android.launcher.permission.CHANGE_BADGE, com.huawei.android.launcher.permission.READ_SETTINGS, com.huawei.android.launcher.permission.WRITE_SETTINGS, android.permission.READ_APP_BADGE, com.oppo.launcher.permission.READ_SETTINGS, com.oppo.launcher.permission.WRITE_SETTINGS, me.everything.badger.permission.BADGE_COUNT_READ, me.everything.badger.permission.BADGE_COUNT_WRITE, android.permission.FOREGROUND_SERVICE"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesServices;
    services = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ServiceElement;
            intentFilters = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                    actionElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                            name = "com.google.firebase.MESSAGING_EVENT"
                        .end subannotation
                    }
                .end subannotation
            }
            name = "com.google.appinventor.components.runtime.fcm.MyFirebaseMessagingService"
        .end subannotation
    }
.end annotation


# static fields
.field private static a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 70
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/content/Context;

    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/app/Activity;

    .line 73
    sput-object p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    return-void
.end method

.method public static ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 283
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "ErrorOccurred"

    invoke-static {v0, p0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static GotMessage(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 293
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "GotMessage"

    invoke-static {v0, p0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static GotUserToken(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 288
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "GotUserToken"

    invoke-static {v0, p0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static NotificationSentResult(ILjava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 298
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "NotificationSentResult"

    invoke-static {v0, p0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;)Landroid/app/Activity;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.niotron."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public ClearNotification(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->getInstance(Landroid/content/Context;)Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->clearNotification(I)V

    return-void
.end method

.method public FailedToInitialize(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Initialized FCM Component"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToInitialize"

    .line 138
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetUserToken()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;)V

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public GotReply(Ljava/lang/String;Ljava/lang/String;IJLcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 78
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/content/Context;

    const-string p2, "NiotronFCM"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "notificationData"

    const-string p4, ""

    .line 79
    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p5, ",,##,,split,,##,,"

    .line 80
    invoke-virtual {p2, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :try_start_0
    const-string p5, "GotReply"

    const/4 p6, 0x5

    new-array p6, p6, [Ljava/lang/Object;

    .line 82
    aget-object v0, p2, p3

    aput-object v0, p6, p3

    const/4 p3, 0x2

    aget-object v0, p2, p3

    const/4 v1, 0x1

    aput-object v0, p6, v1

    aget-object v0, p2, v1

    aput-object v0, p6, p3

    const/4 p3, 0x3

    const/4 v0, 0x4

    aget-object p2, p2, v0

    aput-object p2, p6, p3

    const-string p2, "notificationDict"

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p6, v0

    invoke-static {p0, p5, p6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public Initialize(Ljava/lang/Object;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the FCM Component"
    .end annotation

    .line 114
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    if-eqz v0, :cond_1

    .line 115
    check-cast p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseCore;->getFirebaseAppInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Firebase Core Component failed to Initialize"

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->FailedToInitialize(Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    goto :goto_0

    :cond_1
    const-string p1, "Invalid Firebase Core Component"

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->FailedToInitialize(Ljava/lang/String;)V

    .line 125
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getStartValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "reply_callback"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 128
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v7

    const-string v2, ""

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->GotReply(Ljava/lang/String;Ljava/lang/String;IJLcom/google/appinventor/components/runtime/util/YailDictionary;)V

    goto :goto_1

    :cond_2
    const-string v0, "notificationClick"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_3

    .line 130
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    invoke-virtual {p0, v2, v1, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->MessageNotificationClicked(Ljava/lang/String;ILcom/google/appinventor/components/runtime/util/YailDictionary;)V

    goto :goto_1

    :cond_3
    const-string v0, "pushNotificationClick"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 132
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v2, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->SimpleNotificationClicked(ILjava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public MessageNotificationClicked(Ljava/lang/String;ILcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/content/Context;

    const-string p2, "NiotronFCM"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "notificationData1"

    const-string v0, ""

    .line 91
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ",,##,,split,,##,,"

    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :try_start_0
    const-string v1, "MessageNotificationClicked"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 94
    aget-object v3, p2, p3

    aput-object v3, v2, p3

    const/4 p3, 0x1

    aget-object p2, p2, p3

    aput-object p2, v2, p3

    const/4 p2, 0x2

    const-string v3, "notificationDict"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SendMessage(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailDictionary;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 240
    invoke-virtual/range {p0 .. p5}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->sendData(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailDictionary;Ljava/lang/String;)V

    return-void
.end method

.method public SendMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 229
    invoke-virtual/range {v0 .. v12}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->sendMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)V

    return-void
.end method

.method public SendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailDictionary;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 224
    invoke-virtual/range {p0 .. p9}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailDictionary;Ljava/lang/String;)V

    return-void
.end method

.method public SendPushNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 235
    invoke-virtual/range {p0 .. p9}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->sendPushNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)V

    return-void
.end method

.method public SetScreenNameToStart(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/content/Context;

    const-string v1, "NiotronFCM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public SimpleNotificationClicked(ILjava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/content/Context;

    const-string p2, "NiotronFCM"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pushNotificationData"

    const-string p4, ""

    .line 103
    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ",,##,,split,,##,,"

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :try_start_0
    const-string v0, "SimpleNotificationClicked"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    aget-object v2, p2, p3

    aput-object v2, v1, p3

    const/4 p3, 0x1

    aget-object v2, p2, p3

    aput-object v2, v1, p3

    const/4 v2, 0x2

    aget-object p2, p2, v2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    const-string v2, "notificationDict"

    invoke-interface {p1, v2, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SmallIcon(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/content/Context;

    const-string v1, "NiotronFCM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "smallIcon"

    .line 179
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public Sound(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/content/Context;

    const-string v1, "NiotronFCM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sound"

    .line 159
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 165
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "FCMNotification"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 166
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 167
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 168
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 170
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public SubscribeToTopic(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SubscribeToTopicResult(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 268
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "SubscribedToTopic"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UnsubscribeFromTopic(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public UnsubscribeToTopicResult(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 273
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "UnsubscribeToTopicResult"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public createPostRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 442
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->start()V

    return-void
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailDictionary;Ljava/lang/String;)V
    .locals 7

    .line 413
    :try_start_0
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 414
    new-instance v1, Lorg/json/simple/JSONArray;

    invoke-direct {v1}, Lorg/json/simple/JSONArray;-><init>()V

    .line 415
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    if-ne v2, v4, :cond_0

    .line 416
    :try_start_1
    invoke-virtual {p3, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 418
    :cond_0
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    array-length v2, p3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    .line 419
    invoke-virtual {v1, v4}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object p3, v5

    .line 422
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 423
    invoke-virtual {p4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 424
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 426
    :cond_2
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "data"

    .line 427
    invoke-virtual {v0, v2, p4}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "priority"

    .line 428
    invoke-virtual {v0, p4, p2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "condition"

    .line 429
    invoke-virtual {v0, p2, p1}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p1, "to"

    .line 431
    invoke-virtual {v0, p1, p3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string p1, "registration_ids"

    .line 433
    invoke-virtual {v0, p1, v1}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :goto_3
    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->createPostRequest(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 437
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->ErrorOccurred(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public sendMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)V
    .locals 7

    .line 342
    :try_start_0
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 343
    new-instance v1, Lorg/json/simple/JSONArray;

    invoke-direct {v1}, Lorg/json/simple/JSONArray;-><init>()V

    .line 344
    invoke-virtual/range {p11 .. p11}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    if-ne v2, v4, :cond_0

    move-object/from16 v2, p11

    .line 345
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object/from16 v2, p11

    .line 347
    invoke-virtual/range {p11 .. p11}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v2, v3

    .line 348
    invoke-virtual {v1, v6}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 351
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "message-notification"

    const-string/jumbo v6, "true"

    .line 352
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "id"

    .line 353
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "group"

    move-object v6, p2

    .line 354
    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "timestamp"

    .line 355
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "message"

    move-object v6, p1

    .line 356
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "sender"

    move-object v6, p3

    .line 357
    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "color"

    move-object v6, p7

    .line 358
    invoke-virtual {v3, v4, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "largeIcon"

    move-object v6, p8

    .line 359
    invoke-virtual {v3, v4, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "data"

    .line 361
    invoke-virtual {v0, v3, v4}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "priority"

    move-object/from16 v4, p10

    .line 362
    invoke-virtual {v0, v3, v4}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "condition"

    move-object/from16 v4, p9

    .line 363
    invoke-virtual {v0, v3, v4}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v1, "to"

    .line 365
    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v2, "registration_ids"

    .line 367
    invoke-virtual {v0, v2, v1}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :goto_2
    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p0

    move-object/from16 v2, p12

    :try_start_2
    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->createPostRequest(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, p0

    .line 371
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->ErrorOccurred(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailDictionary;Ljava/lang/String;)V
    .locals 9

    .line 304
    :try_start_0
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 305
    new-instance v1, Lorg/json/simple/JSONArray;

    invoke-direct {v1}, Lorg/json/simple/JSONArray;-><init>()V

    .line 306
    invoke-virtual/range {p7 .. p7}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    if-ne v2, v4, :cond_0

    move-object/from16 v2, p7

    .line 307
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object/from16 v2, p7

    .line 309
    invoke-virtual/range {p7 .. p7}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v2, v3

    .line 310
    invoke-virtual {v1, v6}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 313
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 314
    invoke-virtual/range {p8 .. p8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 315
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p8

    invoke-virtual {v8, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 317
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 318
    new-instance v3, Lorg/json/simple/JSONObject;

    invoke-direct {v3}, Lorg/json/simple/JSONObject;-><init>()V

    const-string/jumbo v6, "title"

    move-object v7, p1

    .line 319
    invoke-virtual {v3, v6, p1}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "body"

    move-object v7, p2

    .line 320
    invoke-virtual {v3, v6, p2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "color"

    move-object v7, p3

    .line 321
    invoke-virtual {v3, v6, p3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "tag"

    move-object v7, p4

    .line 322
    invoke-virtual {v3, v6, p4}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "notification"

    .line 323
    invoke-virtual {v0, v6, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    .line 324
    invoke-virtual {v0, v3, v4}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "priority"

    move-object v4, p6

    .line 325
    invoke-virtual {v0, v3, p6}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "condition"

    move-object v4, p5

    .line 326
    invoke-virtual {v0, v3, p5}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v1, "to"

    .line 328
    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v2, "registration_ids"

    .line 330
    invoke-virtual {v0, v2, v1}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :goto_3
    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p0

    move-object/from16 v2, p9

    :try_start_2
    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->createPostRequest(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, p0

    .line 334
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->ErrorOccurred(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public sendPushNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)V
    .locals 6

    .line 379
    :try_start_0
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 380
    new-instance v1, Lorg/json/simple/JSONArray;

    invoke-direct {v1}, Lorg/json/simple/JSONArray;-><init>()V

    .line 381
    invoke-virtual {p8}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    if-ne v2, v4, :cond_0

    .line 382
    :try_start_1
    invoke-virtual {p8, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object p8

    goto :goto_1

    .line 384
    :cond_0
    invoke-virtual {p8}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p8

    array-length v2, p8

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p8, v3

    .line 385
    invoke-virtual {v1, v4}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object p8, v5

    .line 388
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "push-notification"

    const-string/jumbo v4, "true"

    .line 389
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "id"

    .line 390
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p3, "text"

    .line 391
    invoke-virtual {v2, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "title"

    .line 392
    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "color"

    .line 393
    invoke-virtual {v2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "largeIcon"

    .line 394
    invoke-virtual {v2, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p2, "data"

    .line 396
    invoke-virtual {v0, p2, p1}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "priority"

    .line 397
    invoke-virtual {v0, p1, p7}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "condition"

    .line 398
    invoke-virtual {v0, p1, p6}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {p8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "to"

    .line 400
    invoke-virtual {v0, p1, p8}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string p1, "registration_ids"

    .line 402
    invoke-virtual {v0, p1, v1}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :goto_2
    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p9}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->createPostRequest(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->ErrorOccurred(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
