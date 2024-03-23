.class public final Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Banner Ad Of Appnext"
    iconName = "images/niotronAppnextBanner.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "AppnextAndroidSDKBanners.jar,AppnextAndroidSDKBanners.aar,AppnextAndroidSDKCore.jar,AppnextAndroidSDKCore.jar, work-runtime.aar, work-runtime.jar, room-runtime-2.2.5.aar, room-runtime-2.2.5.jar, room-common-2.2.5.jar, sqlite-2.1.0.aar, sqlite-2.1.0.jar, sqlite-framework-2.1.0.aar, sqlite-framework-2.1.0.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-basement.aar, play-services-basement.jar, glide.jar, glide.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.GET_TASKS,android.permission.PACKAGE_USAGE_STATS,android.permission.RECEIVE_BOOT_COMPLETED"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/appnext/banners/BannerAdRequest;

.field private a:Lcom/appnext/banners/BannerView;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Ljava/lang/String;

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Landroid/content/Context;

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Landroid/app/Activity;

    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->init(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/appnext/banners/BannerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/appnext/banners/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerView;

    .line 42
    new-instance v0, Lcom/appnext/banners/BannerAdRequest;

    invoke-direct {v0}, Lcom/appnext/banners/BannerAdRequest;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerAdRequest;

    .line 43
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

    .line 95
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad error occurred"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdErrorOccurred"

    .line 105
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad impression counted"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    .line 100
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

    .line 90
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdUnitID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Ljava/lang/String;

    return-object v0
.end method

.method public AdUnitID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Remember That Ad Unit Id Can Only Be Set Once"
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerView;

    invoke-virtual {v0, p1}, Lcom/appnext/banners/BannerView;->setPlacementId(Ljava/lang/String;)V

    return-void
.end method

.method public LoadAd(I)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/AppnextBannerSize;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load The Banner"
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerView;

    sget-object v0, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 51
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerView;

    sget-object v0, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerView;

    sget-object v0, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerView;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;)V

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->setBannerListener(Lcom/appnext/banners/BannerListener;)V

    .line 72
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerView;->loadAd(Lcom/appnext/banners/BannerAdRequest;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->a:Lcom/appnext/banners/BannerView;

    return-object v0
.end method
