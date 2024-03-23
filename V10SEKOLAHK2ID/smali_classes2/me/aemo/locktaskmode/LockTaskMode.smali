.class public Lme/aemo/locktaskmode/LockTaskMode;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "LockTaskMode.java"


# instance fields
.field private final am:Landroid/app/ActivityManager;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 20
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 21
    iput-object p1, p0, Lme/aemo/locktaskmode/LockTaskMode;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 22
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lme/aemo/locktaskmode/LockTaskMode;->am:Landroid/app/ActivityManager;

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lme/aemo/locktaskmode/LockTaskMode;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public GetLockTaskState()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lme/aemo/locktaskmode/LockTaskMode;->am:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v0, "Unknown"

    goto :goto_1

    :cond_1
    const-string v0, "Pinned"

    goto :goto_1

    :cond_2
    const-string v0, "Locked"

    goto :goto_1

    :cond_3
    const-string v0, "None"

    .line 78
    :goto_1
    new-instance v1, Lme/aemo/locktaskmode/LockTaskMode$1;

    invoke-direct {v1, p0, v0}, Lme/aemo/locktaskmode/LockTaskMode$1;-><init>(Lme/aemo/locktaskmode/LockTaskMode;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lme/aemo/locktaskmode/LockTaskMode;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public IsInLockTaskMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 32
    iget-object v0, p0, Lme/aemo/locktaskmode/LockTaskMode;->am:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    return v0
.end method

.method public OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnErrorOccurred"

    .line 27
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnGotLockTaskState(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnGotLockTaskState"

    .line 88
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public StartLockTask()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 38
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lme/aemo/locktaskmode/LockTaskMode;->am:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    iget-object v0, p0, Lme/aemo/locktaskmode/LockTaskMode;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->startLockTask()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start Lock Task"

    invoke-virtual {p0, v0, v1}, Lme/aemo/locktaskmode/LockTaskMode;->OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public StopLockTask()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lme/aemo/locktaskmode/LockTaskMode;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->stopLockTask()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop Lock Task"

    invoke-virtual {p0, v0, v1}, Lme/aemo/locktaskmode/LockTaskMode;->OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
