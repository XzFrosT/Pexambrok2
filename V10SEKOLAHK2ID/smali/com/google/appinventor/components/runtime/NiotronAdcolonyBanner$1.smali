.class Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;
.super Lcom/adcolony/sdk/AdColonyAdViewListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyAdViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/adcolony/sdk/AdColonyAdView;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/adcolony/sdk/AdColonyAdViewListener;->onClicked(Lcom/adcolony/sdk/AdColonyAdView;)V

    .line 71
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->Clicked()V

    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyAdView;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/adcolony/sdk/AdColonyAdViewListener;->onClosed(Lcom/adcolony/sdk/AdColonyAdView;)V

    .line 59
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->Closed()V

    return-void
.end method

.method public onLeftApplication(Lcom/adcolony/sdk/AdColonyAdView;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/adcolony/sdk/AdColonyAdViewListener;->onLeftApplication(Lcom/adcolony/sdk/AdColonyAdView;)V

    .line 65
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->LeftApplication()V

    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyAdView;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/adcolony/sdk/AdColonyAdViewListener;->onOpened(Lcom/adcolony/sdk/AdColonyAdView;)V

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->Opened()V

    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyAdView;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a(Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->a(Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->RequestFilled()V

    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/adcolony/sdk/AdColonyAdViewListener;->onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V

    .line 77
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyBanner;->RequestNotFilled()V

    return-void
.end method
