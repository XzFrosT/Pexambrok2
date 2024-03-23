.class public final Lcom/google/appinventor/components/runtime/AdmobBannerAd;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x10
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Banner ads occupy a spot within an app\'s layout, either at the top or bottom of the device screen. They stay on screen while users are interacting with the app, and can refresh automatically after a certain period of time.If you\'re new to mobile advertising, they\'re a great place to start."
    iconName = "images/admob.png"
    nonVisible = false
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/widget/FrameLayout;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Landroid/app/Activity;

    .line 49
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Landroid/widget/FrameLayout;

    .line 52
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/google/android/gms/ads/AdSize;
    .locals 3

    const-string v0, "Wrong AdSize, Loading \"Banner\" size as default"

    .line 173
    :try_start_0
    instance-of v1, p1, Lcom/google/android/gms/ads/AdSize;

    if-eqz v1, :cond_0

    .line 174
    check-cast p1, Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 176
    :cond_0
    check-cast p1, Lcom/google/appinventor/components/common/AdmobAdSize;

    .line 177
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/AdmobAdSize;->Banner:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 179
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/AdmobAdSize;->LargeBanner:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 181
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/AdmobAdSize;->MediumRectangle:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 183
    :cond_3
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/AdmobAdSize;->FullBanner:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 185
    :cond_4
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/appinventor/components/common/AdmobAdSize;->LeaderBoard:Lcom/google/appinventor/components/common/AdmobAdSize;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 186
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 188
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdFailedToLoad(Ljava/lang/String;)V

    .line 189
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 193
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdFailedToLoad(Ljava/lang/String;)V

    .line 194
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 220
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    .line 210
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Failed To Load"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToLoad"

    .line 205
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Impression Logged"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    .line 225
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLeftApplication()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Left Application. Probaby User Clicked and Opened it"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLeftApplication"

    .line 231
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Loaded"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 200
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner Ad Opened"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdOpened"

    .line 215
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdSizeBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AdSize for LoadBanner Ad Function"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public AdSizeFullBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AdSize for LoadBanner Ad Function"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public AdSizeLargeBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AdSize for LoadBanner Ad Function"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public AdSizeLeaderBoard()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AdSize for LoadBanner Ad Function"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public AdSizeMediumRectangle()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AdSize for LoadBanner Ad Function"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public AdSizeSmartBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AdSize for LoadBanner Ad Function"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public Consent(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "User Consent for GDPR"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Consent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "User Consent for GDPR"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public CreateCustomAdSize(II)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "AdSize for LoadBanner Ad Function"
    .end annotation

    .line 122
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    return-object v0
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Height(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public LoadBannerAd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/AdmobAdSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a Admob Banner Ad"
    .end annotation

    .line 127
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a(Ljava/lang/Object;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    .line 129
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 131
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Z

    if-eqz p2, :cond_0

    const-string p1, "ca-app-pub-3940256099942544/6300978111"

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 133
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 135
    new-instance p1, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;-><init>(Lcom/google/appinventor/components/runtime/AdmobBannerAd;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 167
    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    .line 168
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Ads"
    .end annotation

    .line 63
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Ads"
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Z

    return v0
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Width(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method
