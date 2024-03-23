.class public Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/PaymentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/RazorPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RazorActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance p1, Lcom/razorpay/Checkout;

    invoke-direct {p1}, Lcom/razorpay/Checkout;-><init>()V

    .line 56
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/razorpay/Checkout;->setKeyID(Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "key"

    .line 59
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 60
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 61
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "image"

    .line 62
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency"

    .line 63
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "order_id"

    .line 64
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "amount"

    .line 65
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->a()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "prefill.email"

    .line 66
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "prefill.contact"

    .line 67
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {p1, p0, v0}, Lcom/razorpay/Checkout;->open(Landroid/app/Activity;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/RazorPay;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPaymentError(ILjava/lang/String;)V
    .locals 1

    .line 88
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/RazorPay;->OnPaymentFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->i()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Exception in onPaymentError"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;->finish()V

    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;)V
    .locals 2

    .line 78
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/RazorPay;->OnPaymentSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception in onPaymentSuccess"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;->finish()V

    return-void
.end method
