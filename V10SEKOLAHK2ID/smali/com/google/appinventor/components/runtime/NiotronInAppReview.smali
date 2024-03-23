.class public final Lcom/google/appinventor/components/runtime/NiotronInAppReview;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronInAppReview.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-core.aar, play-core.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.FOREGROUND_SERVICE"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/google/android/play/core/review/ReviewInfo;

.field private a:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a:Landroid/content/Context;

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a:Landroid/app/Activity;

    .line 57
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/play/core/review/testing/FakeReviewManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/google/android/play/core/review/testing/FakeReviewManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a:Lcom/google/android/play/core/review/ReviewManager;

    .line 58
    invoke-interface {p1}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronInAppReview;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronInAppReview;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/review/ReviewInfo;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a:Lcom/google/android/play/core/review/ReviewInfo;

    return-object p1
.end method


# virtual methods
.method public ErrorInitializing()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error initializing the SDK"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ErrorInitializing"

    .line 95
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "SDK initialized"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Initialized"

    .line 90
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OpenReviewForm()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request for opening review form"
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a:Lcom/google/android/play/core/review/ReviewManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a:Lcom/google/android/play/core/review/ReviewInfo;

    invoke-interface {v0, v1, v2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronInAppReview;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public ReviewCompleted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Review completed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ReviewCompleted"

    .line 100
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
