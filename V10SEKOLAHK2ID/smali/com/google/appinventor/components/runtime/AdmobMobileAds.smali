.class public final Lcom/google/appinventor/components/runtime/AdmobMobileAds;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Sdk Support for Admob. Required for Using any Admob Component. SDK Version: 20.2.0"
    iconName = "images/admob.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-services-ads.aar, play-services-ads.jar, browser-1.0.0.aar, browser-1.0.0.jar, play-services-ads-base.aar, play-services-ads-base.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar, play-services-base.jar, play-services-base.aar, play-services-ads-lite.aar, play-services-ads-lite.jar, play-services-measurement-sdk-api.aar, play-services-measurement-sdk-api.jar, play-services-measurement-base.aar, play-services-measurement-base.jar, work-runtime.aar, work-runtime.jar, user-messaging-platform.aar, user-messaging-platform.jar, play-services-tasks.jar, play-services-tasks.aar, play-services-appset.jar, play-services-appset.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID"
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:I

    .line 41
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:Z

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AdInspectorClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Inspector Closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdInspectorClosed"

    .line 157
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DirectedForChildren(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Targeting for Children"
    .end annotation

    .line 87
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:Z

    .line 88
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 100
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method

.method public DirectedForChildren()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Targeting for Children"
    .end annotation

    .line 105
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:Z

    return v0
.end method

.method public GetInitializationStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Initialization Status of Any Ad Adapter in Admob"
    .end annotation

    const-string v0, "Not Ready"

    .line 125
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/initialization/AdapterStatus;

    invoke-interface {p1}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    if-ne p1, v1, :cond_0

    const-string p1, "Ready"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public InitializeMobileAds(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize Mobile Ads SDK for Admob. This function should be called in Screen Initialize. \'disableMediationAdapter\' can be true of false depending on if you want to use mediation adapter."
    .end annotation

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->disableMediationAdapterInitialization(Landroid/content/Context;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:Landroid/content/Context;

    new-instance v0, Lcom/google/appinventor/components/runtime/AdmobMobileAds$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AdmobMobileAds$1;-><init>(Lcom/google/appinventor/components/runtime/AdmobMobileAds;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public OpenAdInspector()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Open Ad Inspector. Ad inspector is an in-app overlay that enables authorized devices to perform real-time analysis of test ad requests directly within a mobile app"
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/appinventor/components/runtime/AdmobMobileAds$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AdmobMobileAds$2;-><init>(Lcom/google/appinventor/components/runtime/AdmobMobileAds;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->openAdInspector(Landroid/content/Context;Lcom/google/android/gms/ads/OnAdInspectorClosedListener;)V

    return-void
.end method

.method public OpenDebugMenu(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Open Debug Menu for an Ad Unit"
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/MobileAds;->openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public SdkInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "SDK Initialized"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SdkInitialized"

    .line 152
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TargetAge()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Users Targeted Age"
    .end annotation

    .line 81
    iget v0, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:I

    return v0
.end method

.method public TargetAge(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Users Age"
    .end annotation

    .line 57
    iput p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->a:I

    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    const/4 v1, 0x7

    if-lez p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const-string v1, "G"

    .line 61
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const-string v1, "PG"

    .line 65
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const-string v1, "T"

    .line 69
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    goto :goto_0

    :cond_2
    if-lt p1, v1, :cond_3

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    const-string v1, "MA"

    .line 73
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 76
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method
