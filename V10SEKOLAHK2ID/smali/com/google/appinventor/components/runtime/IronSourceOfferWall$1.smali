.class Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/OfferwallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/IronSourceOfferWall;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/IronSourceOfferWall;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/IronSourceOfferWall;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;->a:Lcom/google/appinventor/components/runtime/IronSourceOfferWall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;->a:Lcom/google/appinventor/components/runtime/IronSourceOfferWall;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->OfferWallFailedToCredit(Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;->a:Lcom/google/appinventor/components/runtime/IronSourceOfferWall;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->OfferWallCredited(IIZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOfferwallAvailable(Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;->a:Lcom/google/appinventor/components/runtime/IronSourceOfferWall;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->a(Lcom/google/appinventor/components/runtime/IronSourceOfferWall;Z)Z

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;->a:Lcom/google/appinventor/components/runtime/IronSourceOfferWall;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->OfferWallAvailabilityChanged(Z)V

    return-void
.end method

.method public onOfferwallClosed()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;->a:Lcom/google/appinventor/components/runtime/IronSourceOfferWall;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->OfferWallClosed()V

    return-void
.end method

.method public onOfferwallOpened()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;->a:Lcom/google/appinventor/components/runtime/IronSourceOfferWall;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->OfferWallOpened()V

    return-void
.end method

.method public onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceOfferWall$1;->a:Lcom/google/appinventor/components/runtime/IronSourceOfferWall;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceOfferWall;->OfferWallFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method
