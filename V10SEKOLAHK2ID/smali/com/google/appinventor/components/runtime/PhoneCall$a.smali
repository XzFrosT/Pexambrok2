.class Lcom/google/appinventor/components/runtime/PhoneCall$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

.field final synthetic a:Lcom/google/appinventor/components/runtime/PhoneCall;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 308
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    const-string p1, ""

    .line 309
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PHONE_STATE"

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo p1, "state"

    .line 316
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    sget-object p1, Lcom/google/appinventor/components/runtime/PhoneCall$b;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    const-string p1, "incoming_number"

    .line 319
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/StartedStatus;->Incoming:Lcom/google/appinventor/components/common/StartedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 326
    :cond_1
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 327
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneCall$b;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    if-ne p1, p2, :cond_7

    .line 328
    sget-object p1, Lcom/google/appinventor/components/runtime/PhoneCall$b;->b:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    .line 329
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->IncomingCallAnswered(Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_2
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 332
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneCall$b;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    if-ne p1, p2, :cond_3

    .line 333
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/EndedStatus;->IncomingRejected:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneCall$b;->b:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    if-ne p1, p2, :cond_4

    .line 335
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/EndedStatus;->IncomingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneCall$b;->c:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    if-ne p1, p2, :cond_5

    .line 337
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/EndedStatus;->OutgoingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 339
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    const-string p1, ""

    .line 340
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 343
    sget-object p1, Lcom/google/appinventor/components/runtime/PhoneCall$b;->c:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    const-string p1, "android.intent.extra.PHONE_NUMBER"

    .line 344
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    .line 345
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
