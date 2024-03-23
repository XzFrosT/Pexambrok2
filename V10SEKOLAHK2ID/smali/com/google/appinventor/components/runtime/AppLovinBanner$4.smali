.class Lcom/google/appinventor/components/runtime/AppLovinBanner$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinBanner;->LoadBannerAd(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AppLovinBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinBanner;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$4;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$4;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->AdClicked()V

    return-void
.end method
