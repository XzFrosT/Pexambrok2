.class public final Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Core component for adcolony ads <br> SDK Version: 4.8.0"
    iconName = "images/niotronAdcolonyCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "adcolony-ads.aar, adcolony-ads.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar,        play-services-basement.aar, play-services-basement.jar, play-services-appset.aar, play-services-appset.jar, play-services-ads-base.aar, play-services-ads-base.jar, play-services-tasks.aar, play-services-tasks.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.VIBRATE"
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field private a:Lcom/adcolony/sdk/AdColonyAppOptions;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 30
    new-instance v0, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;->a:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public GotReward(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got reward"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "GotReward"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitSDK(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes the sdk"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;->a:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 45
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;)V

    invoke-static {p1}, Lcom/adcolony/sdk/AdColony;->setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z

    return-void
.end method
