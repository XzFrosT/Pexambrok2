.class public final Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "App open ad view provided by Ad Manager"
    iconName = "images/niotronAdManagerAppOpen.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AppOpenAdManager"

.field private static final b:Ljava/lang/String; = "/6499/example/app-open"


# instance fields
.field private a:J

.field private a:Landroid/content/Context;

.field private a:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->b:Z

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:J

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-object p1
.end method

.method private a(J)Z
    .locals 4

    .line 168
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long p1, p1, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->b:Z

    return p1
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked triggers this event"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 143
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDismissedFullScreenContent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Dismissal of ad triggers this event"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDismissedFullScreenContent"

    .line 148
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToShowFullScreenContent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failure of showing full screen content triggers this event"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToShowFullScreenContent"

    .line 153
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad impression triggers this event"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    .line 158
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdShowedFullScreenContent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad showed full screen content triggers this event"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdShowedFullScreenContent"

    .line 163
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadAd(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load ad"
    .end annotation

    .line 66
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Z

    .line 71
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->c:Z

    if-eqz v3, :cond_1

    const-string p1, "/6499/example/app-open"

    :cond_1
    new-instance v3, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V

    invoke-static {v2, p1, v1, v0, v3}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the ad"
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->b:Z

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 134
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->c:Z

    return-void
.end method

.method public isAdAvailable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if Ad is available"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
