.class public final Lcom/google/appinventor/components/runtime/RazorPay;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Razorpay payment gateway for users. Allows you to receive payment using mulltiple providers"
    iconName = "images/razorpay.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            name = "com.google.appinventor.components.runtime.RazorPay$RazorActivity"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "razorpay.jar, razorpay.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;
    }
.end annotation


# static fields
.field private static a:F = 100.0f

.field private static a:Landroid/app/Activity; = null

.field private static a:Lcom/google/appinventor/components/runtime/RazorPay; = null

.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = ""

.field private static g:Ljava/lang/String; = ""

.field private static h:Ljava/lang/String; = ""

.field private static i:Ljava/lang/String; = "RazorPay Niotron"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/RazorPay;->a:Landroid/content/Context;

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->a:Landroid/app/Activity;

    .line 46
    sput-object p0, Lcom/google/appinventor/components/runtime/RazorPay;->a:Lcom/google/appinventor/components/runtime/RazorPay;

    .line 47
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/RazorPay;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/razorpay/Checkout;->preload(Landroid/content/Context;)V

    return-void
.end method

.method public static ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->a:Lcom/google/appinventor/components/runtime/RazorPay;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "ErrorOccurred"

    invoke-static {v0, p0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static OnPaymentFail(ILjava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises on payment fails"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->a:Lcom/google/appinventor/components/runtime/RazorPay;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "OnPaymentFail"

    invoke-static {v0, p0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static OnPaymentSuccessful(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises on payment successfull"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->a:Lcom/google/appinventor/components/runtime/RazorPay;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "PaymentSuccess"

    invoke-static {v0, p0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a()F
    .locals 1

    .line 26
    sget v0, Lcom/google/appinventor/components/runtime/RazorPay;->a:F

    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Amount(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Amount for the payment"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 131
    sput p1, Lcom/google/appinventor/components/runtime/RazorPay;->a:F

    return-void
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set API KEY"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->h:Ljava/lang/String;

    return-void
.end method

.method public Currency(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Description for the payment"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->d:Ljava/lang/String;

    return-void
.end method

.method public Description(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Description for the payment"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->b:Ljava/lang/String;

    return-void
.end method

.method public OrderId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->e:Ljava/lang/String;

    return-void
.end method

.method public PrefillContact(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Prefilled contact number"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->g:Ljava/lang/String;

    return-void
.end method

.method public PrefillEmail(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Prefilled email address"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->f:Ljava/lang/String;

    return-void
.end method

.method public ReceiverLogo(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Logo of the receiver"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->c:Ljava/lang/String;

    return-void
.end method

.method public RecieverName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Name of the reciever"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->a:Ljava/lang/String;

    return-void
.end method

.method public StartPayment()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/appinventor/components/runtime/RazorPay;->a:Landroid/app/Activity;

    const-class v2, Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    sget-object v1, Lcom/google/appinventor/components/runtime/RazorPay;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
