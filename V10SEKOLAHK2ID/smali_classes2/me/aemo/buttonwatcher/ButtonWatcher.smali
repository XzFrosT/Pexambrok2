.class public Lme/aemo/buttonwatcher/ButtonWatcher;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ButtonWatcher.java"


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private hw:Lcom/evanjmg/HomeWatcher;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 19
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 20
    iput-object p1, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 25
    new-instance v0, Lcom/evanjmg/HomeWatcher;

    iget-object v1, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/evanjmg/HomeWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->hw:Lcom/evanjmg/HomeWatcher;

    .line 26
    new-instance v1, Lme/aemo/buttonwatcher/ButtonWatcher$1;

    invoke-direct {v1, p0}, Lme/aemo/buttonwatcher/ButtonWatcher$1;-><init>(Lme/aemo/buttonwatcher/ButtonWatcher;)V

    invoke-virtual {v0, v1}, Lcom/evanjmg/HomeWatcher;->setOnHomePressedListener(Lcom/evanjmg/OnHomePressedListener;)V

    return-void
.end method

.method public OnHomePressed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnHomePressed"

    .line 41
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnRecentAppPressed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnRecentAppPressed"

    .line 46
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Start()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 51
    iget-object v0, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->hw:Lcom/evanjmg/HomeWatcher;

    invoke-virtual {v0}, Lcom/evanjmg/HomeWatcher;->startWatch()V

    return-void
.end method

.method public Stop()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 55
    iget-object v0, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->hw:Lcom/evanjmg/HomeWatcher;

    invoke-virtual {v0}, Lcom/evanjmg/HomeWatcher;->stopWatch()V

    return-void
.end method
