.class Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GooglePlayBilling;->GetSubscriptionItemDetails(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/GooglePlayBilling;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;->a:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 215
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;->a:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->GotSubscriptionItemDetails(Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;->a:Lcom/google/appinventor/components/runtime/GooglePlayBilling;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->FailedToGetSubscriptionItemDetails(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
