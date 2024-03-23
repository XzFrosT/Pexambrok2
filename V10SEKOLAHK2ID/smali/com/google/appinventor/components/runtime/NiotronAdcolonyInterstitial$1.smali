.class Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->Clicked()V

    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->Closed()V

    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->Expiring()V

    return-void
.end method

.method public onLeftApplication(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->LeftApplication()V

    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->Opened()V

    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->a(Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 32
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->RequestFilled()V

    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->getZoneID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyInterstitial;->RequestNotFilled(Ljava/lang/String;)V

    return-void
.end method
