.class public final Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronFirebaseAnalytics.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase-analytics.aar, firebase-analytics.jar, play-services-measurement.aar, play-services-measurement.jar, play-services-measurement-base.aar, play-services-measurement-base.jar, play-services-measurement-impl.aar, play-services-measurement-impl.jar, play-services-stats.aar, play-services-stats.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-measurement-sdk.aar, play-services-measurement-sdk.jar, play-services-measurement-api.aar, play-services-measurement-api.jar, play-services-measurement-sdk-api.aar, play-services-measurement-sdk-api.jar, firebase-measurement-connector.aar, firebase-measurement-connector.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.WAKE_LOCK, com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field a:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->a:Landroid/app/Activity;

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->a:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method


# virtual methods
.method public FailedToLogEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to LOG event"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToLogEvent"

    .line 81
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Log a single Event to Firebase"
    .end annotation

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public LogEvents(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Log multiple Events to Firebase"
    .end annotation

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 61
    :goto_0
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 62
    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    :goto_1
    invoke-virtual {p3, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p3, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public SetUserId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a custom user id for the user to identify the individual user"
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public SetUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set Properties for the Individual User"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
