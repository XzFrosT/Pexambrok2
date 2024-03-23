.class public final Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Banner ad component for adcolony ads. <br> SDK Version: 4.8.0"
    iconName = "images/niotronAdcolonyBanner.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/LinearLayout;

.field private a:Lcom/adcolony/sdk/AdColonyAdOptions;

.field private a:Lcom/adcolony/sdk/AdColonyAdViewListener;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 31
    new-instance v0, Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAdOptions;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Lcom/adcolony/sdk/AdColonyAdOptions;

    .line 42
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Landroid/content/Context;

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Landroid/app/Activity;

    .line 45
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Landroid/widget/LinearLayout;

    .line 48
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 49
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Lcom/adcolony/sdk/AdColonyAdViewListener;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;)Landroid/widget/LinearLayout;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method public Clicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Clicked"

    .line 131
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Closed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Closed"

    .line 126
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LeftApplication()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad left application"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LeftApplication"

    .line 136
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadBannerAd(Ljava/lang/String;I)V
    .locals 2
    .param p2    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/AdcolonyBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the banner ad"
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 98
    sget-object p2, Lcom/adcolony/sdk/AdColonyAdSize;->BANNER:Lcom/adcolony/sdk/AdColonyAdSize;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 100
    sget-object p2, Lcom/adcolony/sdk/AdColonyAdSize;->MEDIUM_RECTANGLE:Lcom/adcolony/sdk/AdColonyAdSize;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 102
    sget-object p2, Lcom/adcolony/sdk/AdColonyAdSize;->LEADERBOARD:Lcom/adcolony/sdk/AdColonyAdSize;

    goto :goto_0

    .line 104
    :cond_2
    sget-object p2, Lcom/adcolony/sdk/AdColonyAdSize;->SKYSCRAPER:Lcom/adcolony/sdk/AdColonyAdSize;

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Lcom/adcolony/sdk/AdColonyAdViewListener;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-static {p1, v0, p2, v1}, Lcom/adcolony/sdk/AdColony;->requestAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    return-void
.end method

.method public Opened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad opened"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Opened"

    .line 121
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestFilled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Request filled"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RequestFilled"

    .line 111
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestNotFilled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Request not filled"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RequestNotFilled"

    .line 116
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
