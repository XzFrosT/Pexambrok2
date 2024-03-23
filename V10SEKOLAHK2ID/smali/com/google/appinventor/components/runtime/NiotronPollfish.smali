.class public Lcom/google/appinventor/components/runtime/NiotronPollfish;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/pollfish/callback/PollfishClosedListener;
.implements Lcom/pollfish/callback/PollfishOpenedListener;
.implements Lcom/pollfish/callback/PollfishSurveyCompletedListener;
.implements Lcom/pollfish/callback/PollfishSurveyNotAvailableListener;
.implements Lcom/pollfish/callback/PollfishSurveyReceivedListener;
.implements Lcom/pollfish/callback/PollfishUserNotEligibleListener;
.implements Lcom/pollfish/callback/PollfishUserRejectedSurveyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Pollfish ad component for surveys provided by pollfish. <br> SDK Version: 6.4.0"
    iconName = "images/niotronPollfish.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "pollfish.aar,pollfish.jar,kotlin-stdlib.jar, kotlin-stdlib-common.jar, kotlin-android-extensions-runtime.jar, kotlin-stdlib-jdk7.jar, jetbrains-annotations.jar,play-services-ads.aar, play-services-ads.jar, browser-1.0.0.aar, browser-1.0.0.jar, play-services-ads-base.aar, play-services-ads-base.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar, play-services-ads-lite.aar, play-services-ads-lite.jar, play-services-measurement-sdk-api.aar, play-services-measurement-sdk-api.jar, play-services-measurement-base.aar, play-services-measurement-base.jar, work-runtime.aar, work-runtime.jar, user-messaging-platform.aar, user-messaging-platform.jar, play-services-tasks.jar, play-services-tasks.aar, play-services-appset.jar, play-services-appset.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.gms.permission.AD_ID"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/pollfish/builder/Params;

.field private a:Lcom/pollfish/builder/Position;

.field private a:Ljava/lang/String;

.field private a:Z

.field private final b:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 51
    sget-object v0, Lcom/pollfish/builder/Position;->BOTTOM_RIGHT:Lcom/pollfish/builder/Position;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Position;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Z

    .line 56
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->b:Z

    .line 57
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->c:Z

    const-string v1, "f60355d8-94c2-4b21-a6ac-3d4479b867fc"

    .line 58
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->b:Ljava/lang/String;

    .line 68
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Landroid/content/Context;

    .line 69
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Landroid/app/Activity;

    .line 71
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    .line 72
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Ljava/lang/String;

    .line 73
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Z

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "pollfish-default-api-key"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 77
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Put your pollfish api key in settings menu"

    const-string v1, "Pollfish API Key Error"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 256
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "pollfishapikey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the api key here"
        userVisible = false
    .end annotation

    return-void
.end method

.method public Closed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Closed"

    .line 152
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Hide()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the survey"
    .end annotation

    .line 147
    invoke-static {}, Lcom/pollfish/Pollfish;->hide()V

    return-void
.end method

.method public IconPosition(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/PollfishIconPosition;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set pollfish icon position"
    .end annotation

    .line 128
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->BottomLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 129
    sget-object p1, Lcom/pollfish/builder/Position;->BOTTOM_LEFT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Position;

    goto :goto_0

    .line 130
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->BottomRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 131
    sget-object p1, Lcom/pollfish/builder/Position;->BOTTOM_RIGHT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Position;

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->TopLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 133
    sget-object p1, Lcom/pollfish/builder/Position;->TOP_LEFT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Position;

    goto :goto_0

    .line 134
    :cond_2
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->TopRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 135
    sget-object p1, Lcom/pollfish/builder/Position;->TOP_RIGHT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Position;

    goto :goto_0

    .line 136
    :cond_3
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->MiddleLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 137
    sget-object p1, Lcom/pollfish/builder/Position;->MIDDLE_LEFT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Position;

    goto :goto_0

    .line 138
    :cond_4
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->MiddleRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 139
    sget-object p1, Lcom/pollfish/builder/Position;->MIDDLE_RIGHT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Position;

    :goto_0
    return-void

    .line 141
    :cond_5
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Not valid icon position in pollfish"

    const-string v1, "Invalid Input"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public InitializePollfish()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized with API : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    new-instance v0, Lcom/pollfish/builder/Params$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pollfish/builder/Params$Builder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Z

    xor-int/lit8 v1, v1, 0x1

    .line 237
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->releaseMode(Z)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->c:Z

    .line 238
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->rewardMode(Z)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->b:Z

    .line 239
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->offerwallMode(Z)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Position;

    .line 240
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->indicatorPosition(Lcom/pollfish/builder/Position;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p0}, Lcom/pollfish/builder/Params$Builder;->pollfishClosedListener(Lcom/pollfish/callback/PollfishClosedListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p0}, Lcom/pollfish/builder/Params$Builder;->pollfishOpenedListener(Lcom/pollfish/callback/PollfishOpenedListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p0}, Lcom/pollfish/builder/Params$Builder;->pollfishSurveyCompletedListener(Lcom/pollfish/callback/PollfishSurveyCompletedListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, p0}, Lcom/pollfish/builder/Params$Builder;->pollfishSurveyNotAvailableListener(Lcom/pollfish/callback/PollfishSurveyNotAvailableListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p0}, Lcom/pollfish/builder/Params$Builder;->pollfishUserNotEligibleListener(Lcom/pollfish/callback/PollfishUserNotEligibleListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p0}, Lcom/pollfish/builder/Params$Builder;->pollfishUserRejectedSurveyListener(Lcom/pollfish/callback/PollfishUserRejectedSurveyListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/pollfish/builder/Params$Builder;->build()Lcom/pollfish/builder/Params;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Params;

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Lcom/pollfish/builder/Params;

    invoke-static {v0, v1}, Lcom/pollfish/Pollfish;->initWith(Landroid/app/Activity;Lcom/pollfish/builder/Params;)V

    return-void
.end method

.method public OfferWallMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set to true if \"offerwall mode\" needed, set to false for \"single survey\""
    .end annotation

    .line 107
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->b:Z

    return-void
.end method

.method public OfferWallMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "returns true if \"offerwall mode\", false for \"single survey\""
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->b:Z

    return v0
.end method

.method public Opened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish opened"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Opened"

    .line 162
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RewardedMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set rewarded mode"
    .end annotation

    .line 96
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->c:Z

    return-void
.end method

.method public RewardedMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 101
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->b:Z

    return v0
.end method

.method public Show()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the survey"
    .end annotation

    .line 90
    invoke-static {}, Lcom/pollfish/Pollfish;->show()V

    return-void
.end method

.method public SurveyCompleted(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish survey completed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SurveyCompleted"

    .line 157
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SurveyNotAvailable()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish survey not available"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurveyNotAvailable"

    .line 172
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SurveyReceived(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish survey received"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SurveyReceived"

    .line 167
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TestMode(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the test mode"
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 123
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->a:Z

    return v0
.end method

.method public UserNotEligible()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when user not eligible"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UserNotEligible"

    .line 177
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UserRejectedSurvey()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when user rejected pollfish survey"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UserRejectedSurvey"

    .line 182
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onPollfishClosed()V
    .locals 0

    .line 187
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->Closed()V

    return-void
.end method

.method public onPollfishOpened()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->Opened()V

    return-void
.end method

.method public onPollfishSurveyCompleted(Lcom/pollfish/callback/SurveyInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Reward Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Reward Value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getRewardValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",CPA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getSurveyCPA()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",IR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getSurveyIR()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",LOI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getSurveyLOI()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->SurveyCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onPollfishSurveyNotAvailable()V
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->SurveyNotAvailable()V

    return-void
.end method

.method public onPollfishSurveyReceived(Lcom/pollfish/callback/SurveyInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Reward Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Reward Value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getRewardValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",CPA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getSurveyCPA()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",IR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getSurveyIR()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",LOI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getSurveyLOI()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->SurveyReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onUserNotEligible()V
    .locals 0

    .line 224
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->UserNotEligible()V

    return-void
.end method

.method public onUserRejectedSurvey()V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->UserRejectedSurvey()V

    return-void
.end method
