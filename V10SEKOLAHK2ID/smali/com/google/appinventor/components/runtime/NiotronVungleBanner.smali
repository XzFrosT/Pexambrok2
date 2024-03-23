.class public final Lcom/google/appinventor/components/runtime/NiotronVungleBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Vungle ads banner component. <br> SDK Version: 6.12.0"
    iconName = "images/niotronVungleBanner.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/LinearLayout;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Ljava/lang/String;

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Landroid/content/Context;

    .line 40
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Landroid/app/Activity;

    .line 41
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Landroid/widget/LinearLayout;

    .line 42
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method


# virtual methods
.method public AdClicked(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdClicked"

    .line 141
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdEnded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdEnded"

    .line 165
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "AdFailedToLoad"

    .line 149
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "AdFailedToPlay"

    .line 153
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLeftApplication(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdLeftApplication"

    .line 137
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdLoaded"

    .line 157
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdStarted(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdStarted"

    .line 161
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdViewed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdViewed"

    .line 145
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CanPlayAd(I)Z
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VungleBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    if-nez p1, :cond_0

    .line 172
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 174
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_0

    .line 176
    :cond_1
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p1

    return p1
.end method

.method public LoadAd(I)V
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VungleBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    if-nez p1, :cond_0

    .line 56
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 58
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_0

    .line 60
    :cond_1
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Ljava/lang/String;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronVungleBanner;)V

    invoke-static {v0, p1, v1}, Lcom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method public PlacementId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Your Vungle Ads Placement Id"
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Ljava/lang/String;

    return-void
.end method

.method public PlayAd(I)V
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VungleBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    if-nez p1, :cond_0

    .line 79
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 81
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_0

    .line 83
    :cond_1
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Ljava/lang/String;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronVungleBanner;)V

    invoke-static {v0, p1, v1}, Lcom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
