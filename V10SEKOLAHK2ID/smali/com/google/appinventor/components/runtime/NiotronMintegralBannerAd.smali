.class public final Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronMintegralBannerAd.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "mbridge_mbbanner.aar,mbridge_videocommon.aar,mbridge_mbbanner.jar,mbridge_videocommon.jar"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Lcom/mbridge/msdk/out/MBBannerView;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->b:Ljava/lang/String;

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Landroid/app/Activity;

    .line 43
    new-instance v0, Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/out/MBBannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Lcom/mbridge/msdk/out/MBBannerView;

    .line 44
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 126
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad failed to load"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToLoad"

    .line 116
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFullScreenClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Full screen ad closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdFullScreenClosed"

    .line 141
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFullScreenShown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Shown full screen ad"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdFullScreenShown"

    .line 136
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpressionLogged()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad impression logged"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpressionLogged"

    .line 146
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad loaded"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 121
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdUnitId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets ad unit id"
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Ljava/lang/String;

    return-void
.end method

.method public BannerAdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner ad closed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BannerAdClosed"

    .line 151
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BannerAdLeaveApp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Banner ad left app"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BannerAdLeaveApp"

    .line 131
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CreateBannerSize(III)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create BannerSize from height,width,sizeType(1-5)"
    .end annotation

    .line 111
    new-instance v0, Lcom/mbridge/msdk/out/BannerSize;

    invoke-direct {v0, p3, p2, p1}, Lcom/mbridge/msdk/out/BannerSize;-><init>(III)V

    return-object v0
.end method

.method public LoadBannerAd(Ljava/lang/Object;IZ)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load banner ad"
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Lcom/mbridge/msdk/out/MBBannerView;

    check-cast p1, Lcom/mbridge/msdk/out/BannerSize;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mbridge/msdk/out/MBBannerView;->init(Lcom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/out/MBBannerView;->setAllowShowCloseBtn(Z)V

    .line 63
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/out/MBBannerView;->setRefreshTime(I)V

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Lcom/mbridge/msdk/out/MBBannerView;

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;)V

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/out/MBBannerView;->setBannerAdListener(Lcom/mbridge/msdk/out/BannerAdListener;)V

    .line 106
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/MBBannerView;->load()V

    return-void
.end method

.method public PlacementId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Placement id"
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->b:Ljava/lang/String;

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralBannerAd;->a:Lcom/mbridge/msdk/out/MBBannerView;

    return-object v0
.end method
