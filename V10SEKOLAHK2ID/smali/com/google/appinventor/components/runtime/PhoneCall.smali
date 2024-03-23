.class public Lcom/google/appinventor/components/runtime/PhoneCall;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that makes a phone call to the number specified in the <code>PhoneNumber</code> property, which can be set either in the Designer or Blocks Editor. The component has a <code>MakePhoneCall</code> method, enabling the program to launch a phone call.</p><p>Often, this component is used with the <code>ContactPicker</code> component, which lets the user select a contact from the ones stored on the phone and sets the <code>PhoneNumber</code> property to the contact\'s phone number.</p><p>To directly specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text with the specified digits (e.g., \"6505551212\").  Dashes, dots, and parentheses may be included (e.g., \"(650)-555-1212\") but will be ignored; spaces may not be included.</p>"
    iconName = "images/phoneCall.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/PhoneCall$a;,
        Lcom/google/appinventor/components/runtime/PhoneCall$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x50484f4e


# instance fields
.field private final a:Landroid/content/Context;

.field private final a:Lcom/google/appinventor/components/runtime/PhoneCall$a;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 101
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Z

    .line 93
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->b:Z

    .line 102
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Landroid/content/Context;

    .line 103
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 104
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const v0, 0x50484f4e

    invoke-virtual {p1, p0, v0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    const-string p1, ""

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneNumber(Ljava/lang/String;)V

    .line 106
    new-instance p1, Lcom/google/appinventor/components/runtime/PhoneCall$a;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/PhoneCall$a;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Lcom/google/appinventor/components/runtime/PhoneCall$a;

    return-void
.end method

.method private a()V
    .locals 3

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Lcom/google/appinventor/components/runtime/PhoneCall$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/PhoneCall;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Z

    return p1
.end method

.method private b()V
    .locals 2

    .line 365
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->b:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Lcom/google/appinventor/components/runtime/PhoneCall$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public IncomingCallAnswered(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that an incoming phone call is answered. phoneNumber is the incoming call phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "IncomingCallAnswered"

    .line 276
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialize()V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/PhoneCall$1;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android.permission.READ_PHONE_STATE"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v1, "Initialize"

    invoke-direct {v2, p0, p0, v1, v3}, Lcom/google/appinventor/components/runtime/PhoneCall$1;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    :cond_0
    return-void
.end method

.method public MakePhoneCall()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the default dialer app set to start a phone call usingthe number in the PhoneNumber property."
    .end annotation

    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Ljava/lang/String;

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const v2, 0x50484f4e

    invoke-virtual {v1, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public MakePhoneCallDirect()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Directly initiates a phone call using the number in the PhoneNumber property."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.CALL_PHONE"
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/PhoneCall$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/PhoneCall$2;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/PhoneCallUtil;->makePhoneCall(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public PhoneCallEnded(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/EndedStatus;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phone call has ended. If status is 1, incoming call is missed or rejected; if status is 2, incoming call is answered before hanging up; if status is 3, outgoing call is hung up. phoneNumber is the ended call phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/EndedStatus;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/EndedStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 256
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/EndedStatus;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "PhoneCallEnded"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PhoneCallStarted(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/StartedStatus;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phonecall has started. If status is 1, incoming call is ringing; if status is 2, outgoing call is dialled. phoneNumber is the incoming/outgoing phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/StartedStatus;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/StartedStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/StartedStatus;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "PhoneCallStarted"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->a:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 373
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->b()V

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    const p2, 0x50484f4e

    if-ne p1, p2, :cond_0

    .line 282
    sget-object p1, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
