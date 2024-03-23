.class public final Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Interstitial ad component for adcolony ads. <br> SDK Version: 4.8.0"
    iconName = "images/niotronAdcolonyInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:Lcom/adcolony/sdk/AdColonyInterstitial;

.field a:Lcom/adcolony/sdk/AdColonyInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 65
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 28
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-object p1
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

    .line 101
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

    .line 96
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Expiring()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad expiring"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Expiring"

    .line 111
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

    .line 106
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadAd(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load ad"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-static {p1, v0}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)Z

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

    .line 91
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

    .line 81
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestNotFilled(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Request not filed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "RequestNotFilled"

    .line 86
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ShowAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the ad"
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "Please Call Show Ad Block After Request Filled Event"

    const-string v2, "Ad Colony Interstitial"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
