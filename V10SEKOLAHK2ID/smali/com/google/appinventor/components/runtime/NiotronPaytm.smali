.class public final Lcom/google/appinventor/components/runtime/NiotronPaytm;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Paytm Payment Component <br> SDK Version: 2.0.0"
    iconName = "images/niotronPaytm.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "paytm.aar, paytm.jar, gson-2.8.4.jar, okhttp.jar, okio.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, "https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp"

    .line 41
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Z

    .line 43
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->b:Z

    .line 44
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->c:Z

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Landroid/content/Context;

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public CallbackUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Paytm Merchant Id"
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public CallbackUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Paytm Callback Url"
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->b:Ljava/lang/String;

    return-void
.end method

.method public ClientAuthenticationFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Client Authentication Failed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ClientAuthenticationFailed"

    .line 202
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorLoadingWebPage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Client Authentication Failed"
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "ErrorLoadingWebPage"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

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

    .line 197
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MerchantId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Paytm Merchant Id"
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public MerchantId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Paytm Merchant Id"
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Ljava/lang/String;

    return-void
.end method

.method public NetworkNotAvailable()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Network Not Available"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NetworkNotAvailable"

    .line 192
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SendResponseToServer(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Send Response to PG Server"
    .end annotation

    .line 93
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->b:Z

    return-void
.end method

.method public SendResponseToServer()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Send Response to PG Server"
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->b:Z

    return v0
.end method

.method public ShowHeader(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Show Paytm Header"
    .end annotation

    .line 82
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Z

    return-void
.end method

.method public ShowHeader()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Show Paytm Header"
    .end annotation

    .line 87
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Z

    return v0
.end method

.method public StartPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts the payment"
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->c:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 126
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getStagingService(Ljava/lang/String;)Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getProductionService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    .line 131
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Ljava/lang/String;

    const-string v3, "MID"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ORDER_ID"

    .line 133
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CUST_ID"

    .line 134
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CHANNEL_ID"

    .line 135
    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TXN_AMOUNT"

    .line 136
    invoke-virtual {v1, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "WEBSITE"

    .line 137
    invoke-virtual {v1, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->b:Ljava/lang/String;

    const-string p2, "CALLBACK_URL"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CHECKSUMHASH"

    .line 139
    invoke-virtual {v1, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "INDUSTRY_TYPE_ID"

    .line 140
    invoke-virtual {v1, p1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance p1, Lcom/paytm/pgsdk/PaytmOrder;

    invoke-direct {p1, v1}, Lcom/paytm/pgsdk/PaytmOrder;-><init>(Ljava/util/HashMap;)V

    const/4 p2, 0x0

    .line 145
    invoke-virtual {v0, p1, p2}, Lcom/paytm/pgsdk/PaytmPGService;->initialize(Lcom/paytm/pgsdk/PaytmOrder;Lcom/paytm/pgsdk/PaytmClientCertificate;)V

    .line 147
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->a:Z

    iget-boolean p3, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->b:Z

    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;

    invoke-direct {p4, p0}, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronPaytm;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/paytm/pgsdk/PaytmPGService;->startPaymentTransaction(Landroid/content/Context;ZZLcom/paytm/pgsdk/PaytmPaymentTransactionCallback;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Mode for Paytm"
    .end annotation

    .line 104
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->c:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Mode for Paytm"
    .end annotation

    .line 109
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->c:Z

    return v0
.end method

.method public TransactionCancelled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Transaction Cancelled"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TransactionCancelled"

    .line 212
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TransactionResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Transaction Response Received"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "TransactionResponse"

    .line 187
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
