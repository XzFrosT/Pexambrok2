.class public final Lcom/google/appinventor/components/runtime/AppLovinBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x10
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Banner Ad is a Small Rectangle Ad either on the top or bottom of the screen. It is a perfect Ad Type for beginners to earn money without disturbing the users. <br> SDK Version: 11.9.0"
    iconName = "images/appLovinBanner.png"
    nonVisible = false
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "applovin-sdk.aar, applovin-sdk.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-base.aar, play-services-base.jar, play-services-basement.aar, play-services-basement.jar, play-services-tasks.aar, play-services-tasks.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, com.google.android.gms.permission.AD_ID, android.permission.ACCESS_WIFI_STATE, com.applovin.array.apphub.permission.BIND_APPHUB_SERVICE"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/widget/FrameLayout;

.field private a:Lcom/applovin/sdk/AppLovinSdk;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->c:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->d:Z

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/app/Activity;

    .line 62
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/widget/FrameLayout;

    .line 65
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/applovin/mediation/MaxAdFormat;
    .locals 3

    const-string v0, "Wrong AdSize, Loading \"Banner\" size as default"

    .line 300
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/ApplovinBannerSize;->StandardBanner:Lcom/google/appinventor/components/common/ApplovinBannerSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ApplovinBannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    return-object p1

    .line 302
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/ApplovinBannerSize;->LeaderBanner:Lcom/google/appinventor/components/common/ApplovinBannerSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ApplovinBannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    return-object p1

    .line 304
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/appinventor/components/common/ApplovinBannerSize;->MRECBanner:Lcom/google/appinventor/components/common/ApplovinBannerSize;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ApplovinBannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 305
    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    return-object p1

    .line 307
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdFailedToDisplay(Ljava/lang/String;)V

    .line 308
    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 311
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdFailedToDisplay(Ljava/lang/String;)V

    .line 312
    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    return-object p1
.end method

.method private a(Ljava/lang/Object;)Lcom/applovin/sdk/AppLovinAdSize;
    .locals 3

    const-string v0, "Wrong AdSize, Loading \"Banner\" size as default"

    .line 280
    :try_start_0
    instance-of v1, p1, Lcom/applovin/sdk/AppLovinAdSize;

    if-eqz v1, :cond_0

    .line 281
    check-cast p1, Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 282
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/ApplovinBannerSize;->StandardBanner:Lcom/google/appinventor/components/common/ApplovinBannerSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ApplovinBannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 284
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/ApplovinBannerSize;->LeaderBanner:Lcom/google/appinventor/components/common/ApplovinBannerSize;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ApplovinBannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 286
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/appinventor/components/common/ApplovinBannerSize;->MRECBanner:Lcom/google/appinventor/components/common/ApplovinBannerSize;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ApplovinBannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 287
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 289
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdFailedToDisplay(Ljava/lang/String;)V

    .line 290
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 293
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdFailedToDisplay(Ljava/lang/String;)V

    .line 294
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinBanner;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Lcom/applovin/sdk/AppLovinSdk;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AppLovinBanner;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->c:Z

    return p0
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 343
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Closed Full Screen"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    .line 353
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDisplayed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Displayed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDisplayed"

    .line 333
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToDisplay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Display"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToDisplay"

    .line 363
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Failed to Load"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 328
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToLoad"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdHidden()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Hidden"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdHidden"

    .line 338
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLeftApplication()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Left Application due to users Click"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLeftApplication"

    .line 358
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Loaded"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 323
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad Opened Full Screen"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdOpened"

    .line 348
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AgeRestricted(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Age Restricted. For Younger Audience"
    .end annotation

    .line 114
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->b:Z

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setIsAgeRestrictedUser(ZLandroid/content/Context;)V

    return-void
.end method

.method public AgeRestricted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Age Restricted. For Younger Audience"
    .end annotation

    .line 120
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->b:Z

    return v0
.end method

.method public Consent(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "GDPR. Consent of the User"
    .end annotation

    .line 102
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Z

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    return-void
.end method

.method public Consent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Consent of the User"
    .end annotation

    .line 108
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Z

    return v0
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

.method public LeaderBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AdSize for the BannerAd"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public LoadBannerAd(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ApplovinBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a BannerAd"
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a(Ljava/lang/Object;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p1

    .line 158
    instance-of v0, p1, Lcom/applovin/sdk/AppLovinAdSize;

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, v2}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    .line 160
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 161
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 162
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance p1, Lcom/google/appinventor/components/runtime/AppLovinBanner$2;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AppLovinBanner$2;-><init>(Lcom/google/appinventor/components/runtime/AppLovinBanner;)V

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 175
    new-instance p1, Lcom/google/appinventor/components/runtime/AppLovinBanner$3;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AppLovinBanner$3;-><init>(Lcom/google/appinventor/components/runtime/AppLovinBanner;)V

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 186
    new-instance p1, Lcom/google/appinventor/components/runtime/AppLovinBanner$4;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AppLovinBanner$4;-><init>(Lcom/google/appinventor/components/runtime/AppLovinBanner;)V

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 192
    new-instance p1, Lcom/google/appinventor/components/runtime/AppLovinBanner$5;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AppLovinBanner$5;-><init>(Lcom/google/appinventor/components/runtime/AppLovinBanner;)V

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V

    .line 214
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    goto :goto_0

    :cond_0
    const-string p1, "Wrong AdSize"

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdFailedToDisplay(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public LoadMaxAd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ApplovinBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load Max Banner Ad"
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->enableMax()V

    .line 223
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a(Ljava/lang/Object;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    .line 224
    instance-of v0, p2, Lcom/applovin/mediation/MaxAdFormat;

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Lcom/applovin/mediation/ads/MaxAdView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/app/Activity;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    .line 226
    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object p1

    .line 227
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->px(I)I

    move-result p1

    const/4 v1, -0x1

    invoke-direct {p2, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 228
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 229
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/ads/MaxAdView;->setBackgroundColor(I)V

    .line 231
    new-instance p1, Lcom/google/appinventor/components/runtime/AppLovinBanner$6;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AppLovinBanner$6;-><init>(Lcom/google/appinventor/components/runtime/AppLovinBanner;)V

    invoke-virtual {v0, p1}, Lcom/applovin/mediation/ads/MaxAdView;->setListener(Lcom/applovin/mediation/MaxAdViewAdListener;)V

    .line 272
    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->loadAd()V

    goto :goto_0

    :cond_0
    const-string p1, "Wrong AdSize"

    .line 274
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdFailedToDisplay(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public MRECBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AdSize for the BannerAd"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public Muted(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Start Ads Muted"
    .end annotation

    .line 126
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->c:Z

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Lcom/applovin/sdk/AppLovinSdk;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setMuted(Z)V

    :cond_0
    return-void
.end method

.method public Muted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Start Ads Muted"
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->c:Z

    return v0
.end method

.method public SdkInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sdk Initialized"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SdkInitialized"

    .line 318
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SdkKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AppLovin Sdk Key"
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Ljava/lang/String;

    return-object v0
.end method

.method public SdkKey(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AppLovin Sdk Key"
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Lcom/applovin/sdk/AppLovinSdk;

    .line 85
    new-instance v0, Lcom/google/appinventor/components/runtime/AppLovinBanner$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AppLovinBanner$1;-><init>(Lcom/google/appinventor/components/runtime/AppLovinBanner;)V

    invoke-virtual {p1, v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    return-void
.end method

.method public StandardBanner()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "AdSize for the BannerAd"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
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

.method public enableMax()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->d:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Lcom/applovin/sdk/AppLovinSdk;

    const-string v1, "max"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->setMediationProvider(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->d:Z

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method
