.class public final Lcom/google/appinventor/components/runtime/GPlayAppUpdater;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "GPlay updates is a Play Core library feature that introduces a new request flow to prompt active users to update your app.Works only with devices running Android 5.0 (API level 21) or higher,"
    iconName = "images/gPlayAppUpdater.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-core.aar, play-core.jar"
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private a:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

.field private a:Lcom/google/android/play/core/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Landroid/app/Activity;

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Landroid/content/Context;

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 65
    invoke-interface {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Lcom/google/android/play/core/tasks/Task;

    .line 67
    new-instance p1, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$1;-><init>(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 78
    iget p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:I

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:I

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Lcom/google/android/play/core/tasks/Task;

    new-instance v0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;-><init>(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:I

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Landroid/app/Activity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Lcom/google/android/play/core/appupdate/AppUpdateManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->b:Z

    return p0
.end method


# virtual methods
.method public AutoUpdate(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Automatically Check and Show Updates"
    .end annotation

    .line 136
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->b:Z

    return-void
.end method

.method public CompleteUpdate()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Complete Update in Case of a Flexible Update. This Function will restart the App and Complete the Update"
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/play/core/tasks/Task;

    :cond_0
    return-void
.end method

.method public Flexible(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If Enabled Update will happen in the background"
    .end annotation

    .line 130
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Z

    return-void
.end method

.method public StartUpdate(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Call this Function if Auto Update is not enabled"
    .end annotation

    .line 141
    instance-of v0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    if-eqz v0, :cond_1

    .line 142
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Z

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Invalid AppUpdate Info"

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public UpdateAvailable(ZLjava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Update available"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 174
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "UpdateAvailable"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateCancelled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Update cancelled"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UpdateCancelled"

    .line 184
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateDownloaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Update Was Downloaded"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UpdateDownloaded"

    .line 169
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Update failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "UpdateFailed"

    .line 179
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    .line 120
    iget p3, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a:I

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateCancelled()V

    :cond_0
    return-void
.end method
