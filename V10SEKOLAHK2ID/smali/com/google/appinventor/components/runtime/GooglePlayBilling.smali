.class public final Lcom/google/appinventor/components/runtime/GooglePlayBilling;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xe
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Google Play Billing is a service that lets you sell digital content on Android."
    iconName = "images/googlePlayBilling.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "billing.aar, billing.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "com.android.vending.BILLING"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Lcom/android/billingclient/api/BillingClient;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Landroid/app/Activity;

    .line 47
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/GooglePlayBilling$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$1;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    .line 62
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$3;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->b:Z

    return p1
.end method


# virtual methods
.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 472
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToGetProductDetails(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Get Product Details"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToGetProductDetails"

    .line 467
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToGetSubscriptionItemDetails(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Get Subscription Details"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToGetSubscriptionItemDetails"

    .line 462
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetProductDescription(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Description. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 352
    instance-of v0, p1, Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_0

    .line 353
    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Product Details"

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GetProductDetails(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the product item which can be used to get Individual Product Details"
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    const-string/jumbo v0, "subs"

    .line 146
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 149
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$6;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a()V

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->GetProductDetails(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetProductIconUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Icon Url. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 362
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 363
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Product Details"

    .line 365
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GetProductOriginalJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Original Json. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 382
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 383
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getOriginalJson()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Product Details"

    .line 385
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GetProductOriginalPrice(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Original Price. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 372
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 373
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getOriginalPrice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Product Details"

    .line 375
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GetProductPrice(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Price. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 326
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Product Details"

    .line 328
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GetProductPrice(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .param p2    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/BillingProductType;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Price. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 335
    sget-object v0, Lcom/google/appinventor/components/common/BillingProductType;->Product:Lcom/google/appinventor/components/common/BillingProductType;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/BillingProductType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, ""

    if-ne p2, v0, :cond_1

    .line 336
    instance-of p2, p1, Lcom/android/billingclient/api/ProductDetails;

    if-eqz p2, :cond_0

    .line 337
    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Product Details"

    .line 339
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 342
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/common/BillingProductType;->Subscription:Lcom/google/appinventor/components/common/BillingProductType;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/BillingProductType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 343
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "Invalid Product Type"

    .line 345
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1
.end method

.method public GetProductPriceCurrencyCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Currency Code like INR, USD. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 392
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 393
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Product Details"

    .line 395
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GetProductSku(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Sku. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 314
    instance-of v0, p1, Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_0

    .line 315
    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Product Details"

    .line 317
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GetProductTitle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Product Title. Pass the Product Details from GotProductDetails or GotSubscriptionItemDetails Event"
    .end annotation

    .line 304
    instance-of v0, p1, Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_0

    .line 305
    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Product Details"

    .line 307
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GetPurchasedProducts()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get All the Purchased Products Details. A Product Item will be returned. Use the GetProductDetails Function to get Product Info"
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    .line 274
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/GooglePlayBilling$10;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$10;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    .line 273
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public GetPurchasedSubscriptions()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get All the Purchased Subscription Details. A Product Item will be returned. Use the GetProductDetails Function and GetSubscriptionItem to get Subscription Info"
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    .line 290
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string/jumbo v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/GooglePlayBilling$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$2;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public GetSubscriptionFreeTrialPeriod(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Subscription Item Free Trial Period. Pass the Product Details from GotSubscriptionItemDetails Event"
    .end annotation

    .line 402
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 403
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Subscription Item Details"

    .line 405
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GetSubscriptionItemDetails(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Subscription Item as a Product Item which can be used inside the GetProductDetails Function and the GetSubscriptionItem Functions"
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    const-string/jumbo v0, "subs"

    .line 203
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p1

    .line 201
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 206
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$7;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a()V

    .line 224
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->GetProductDetails(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetSubscriptionItemPeriod(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Subscription Item Period. Pass the Product Details from GotSubscriptionItemDetails Event"
    .end annotation

    .line 412
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    .line 413
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Invalid Subscription Item Details"

    .line 415
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public GotProductDetails(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got the Product Details. Use the \'productDetails\' inside the GetProduct--- Function"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotProductDetails"

    .line 442
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotPurchasedProducts(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Gets a List of Purchased products item. Use each item in the GetProduct--- Function"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotPurchasedProducts"

    .line 452
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotPurchasedSubscriptions(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Gets a List of Purchased Subscriptions item. Use each item in the GetProduct--- or GetSubscription--- Function"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotPurchasedSubscriptions"

    .line 457
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotSubscriptionItemDetails(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got the Subscription Details. Use the \'productDetails\' inside the GetProduct--- and GetSubscription--- Function"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotProductDetails"

    .line 447
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public HandlePurchaseAsConsumable(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Handle as Consumable, can be bought again"
    .end annotation

    .line 114
    instance-of v0, p1, Lcom/android/billingclient/api/Purchase;

    if-eqz v0, :cond_1

    .line 115
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$5;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseSuccessful()V

    goto :goto_0

    :cond_1
    const-string p1, "Wrong Purchase Item"

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseFailed(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public HandlePurchaseAsNonConsumable(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Handle as Non Consumable, can be bought only Once"
    .end annotation

    .line 85
    instance-of v0, p1, Lcom/android/billingclient/api/Purchase;

    if-eqz v0, :cond_1

    .line 86
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/google/appinventor/components/runtime/GooglePlayBilling$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$4;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseSuccessful()V

    goto :goto_0

    :cond_1
    const-string p1, "Wrong Purchase Item"

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->PurchaseFailed(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public IsAcknowledgedOrConsumed(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns If purchased is acknowledged or consumed"
    .end annotation

    .line 173
    instance-of v0, p1, Lcom/android/billingclient/api/Purchase;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public IsProductPurchased(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if a product is purchased using the Product Id"
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    .line 231
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/GooglePlayBilling$8;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$8;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 246
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Z

    return p1
.end method

.method public IsSubscriptionPurchased(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if a Subscription is purchased using the Product Id"
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    .line 252
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string/jumbo v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/GooglePlayBilling$9;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/GooglePlayBilling$9;-><init>(Lcom/google/appinventor/components/runtime/GooglePlayBilling;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 267
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->b:Z

    return p1
.end method

.method public LaunchBillingFlow(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the Purchase"
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    .line 186
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    .line 184
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 190
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Lcom/android/billingclient/api/BillingClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GooglePlayBilling;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    :cond_0
    return-void
.end method

.method public PurchaseCancelled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Purchase Cancelled by the User"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PurchaseCancelled"

    .line 437
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PurchaseFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Purchase Failed. Check errorMessage for Info"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PurchaseFailed"

    .line 427
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PurchaseSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Purchased was Successful and handled"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PurchaseSuccessful"

    .line 422
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PurchaseUpdated(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Purchase Updated. Handle Purchase here else it will be refunded within 3 days"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PurchaseUpdated"

    .line 432
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
