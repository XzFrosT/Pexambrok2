.class public Lcom/google/appinventor/components/runtime/Texting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A component that will, when the <code>SendMessage</code> method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property.</p> <p>If the <code>ReceivingEnabled</code> property is set to 1 messages will <b>not</b> be received. If <code>ReceivingEnabled</code> is set to 2 messages will be received only when the application is running. Finally if <code>ReceivingEnabled</code> is set to 3, messages will be received when the application is running <b>and</b> when the application is not running they will be queued and a notification displayed to the user.</p> <p>When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p> <p> An app that includes this component will receive messages even when it is in the background (i.e. when it\'s not visible on the screen) and, moreso, even if the app is not running, so long as it\'s installed on the phone. If the phone receives a text message when the app is not in the foreground, the phone will show a notification in the notification bar.  Selecting the notification will bring up the app.  As an app developer, you\'ll probably want to give your users the ability to control ReceivingEnabled so that they can make the phone ignore text messages.</p> <p>If the GoogleVoiceEnabled property is true, messages can be sent over Wifi using Google Voice. This option requires that the user have a Google Voice account and that the mobile Voice app is installed on the phone. The Google Voice option works only on phones that support Android 2.0 (Eclair) or higher.</p> <p>To specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces may not be included.</p> <p>Another way for an app to specify a phone number would be to include a <code>PhoneNumberPicker</code> component, which lets the users select a phone numbers from the ones stored in the the phone\'s contacts.</p>"
    iconName = "images/texting.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-api-client-beta.jar,google-api-client-android2-beta.jar,google-http-client-beta.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client-beta.jar,guava-27.1.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "com.google.android.apps.googlevoice.permission.RECEIVE_SMS, com.google.android.apps.googlevoice.permission.SEND_SMS, android.permission.ACCOUNT_MANAGER, android.permission.MANAGE_ACCOUNTS, android.permission.GET_ACCOUNTS, android.permission.USE_CREDENTIALS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Texting$b;,
        Lcom/google/appinventor/components/runtime/Texting$a;,
        Lcom/google/appinventor/components/runtime/Texting$c;
    }
.end annotation


# static fields
.field public static final GV_INTENT_FILTER:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.googlevoice"

.field public static final GV_SMS_RECEIVED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_SMS_SEND_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/sms/send/"

.field public static final GV_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/redirection/voice"

.field public static final MESSAGE_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.TEXT"

.field public static final META_DATA_SMS_KEY:Ljava/lang/String; = "sms_handler_component"

.field public static final META_DATA_SMS_VALUE:Ljava/lang/String; = "Texting"

.field public static final PHONE_NUMBER_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.PHONE_NUMBER"

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TAG:Ljava/lang/String; = "Texting Component"

.field public static final TELEPHONY_INTENT_FILTER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TEXTING_REQUEST_CODE:I = 0x54455854

.field private static final a:I = 0x7530

.field private static a:Landroid/app/Activity; = null

.field private static a:Lcom/google/appinventor/components/common/ReceivingState; = null

.field private static a:Lcom/google/appinventor/components/runtime/Component; = null

.field private static a:Ljava/lang/Object; = null

.field private static final a:Ljava/lang/String; = "grandcentral"

.field private static b:I = 0x0

.field private static final b:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"

.field private static final c:Ljava/lang/String; = "SMS_SENT"

.field private static c:Z = false

.field private static final d:Ljava/lang/String; = "UTF-8"

.field private static final e:Ljava/lang/String; = "\u0001"

.field private static final f:Ljava/lang/String; = "gvenabled"

.field private static final g:Ljava/lang/String; = "receiving"

.field private static final h:Ljava/lang/String; = "receiving2"

.field private static final i:Ljava/lang/String; = "TextingState"

.field private static final m:Ljava/lang/String; = "textingmsgcache"


# instance fields
.field private a:Landroid/telephony/SmsManager;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Lcom/google/appinventor/components/runtime/Texting$c;

.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Z

.field private d:Z

.field private e:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    sget-object v0, Lcom/google/appinventor/components/common/ReceivingState;->Foreground:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 224
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 208
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->d:Z

    .line 216
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->e:Z

    const-string v1, "Texting Component"

    const-string v2, "Texting constructor"

    .line 225
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 227
    sput-object p0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/runtime/Component;

    .line 228
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    sput-object v2, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string v3, "TextingState"

    .line 230
    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "receiving2"

    const/4 v4, -0x1

    .line 232
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    const-string v4, "receiving"

    .line 234
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    sget-object v3, Lcom/google/appinventor/components/common/ReceivingState;->Foreground:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v3, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    goto :goto_0

    .line 237
    :cond_0
    sget-object v3, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v3, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    goto :goto_0

    .line 240
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/common/ReceivingState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v3

    sput-object v3, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    :goto_0
    const-string v3, "gvenabled"

    .line 243
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Z

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting with receiving Enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " GV enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_2
    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v1, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    .line 248
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Z

    .line 252
    :goto_1
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Z

    if-eqz v1, :cond_3

    .line 253
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$a;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$a;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Texting$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    :cond_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/telephony/SmsManager;

    const-string v1, ""

    .line 256
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Texting;->PhoneNumber(Ljava/lang/String;)V

    .line 258
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->b:Z

    .line 259
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->c:Z

    .line 262
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 263
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 264
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 265
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    return-void
.end method

.method public static MessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 430
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-ne v0, v1, :cond_0

    return-void

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageReceived from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/runtime/Component;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "MessageReceived"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Texting Component"

    const-string p1, "Dispatch successful"

    .line 435
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "Texting Component"

    const-string v1, "Dispatch failed, caching"

    .line 437
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    invoke-static {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a()Landroid/app/Activity;
    .locals 1

    .line 138
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$c;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/runtime/Texting$c;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$c;)Lcom/google/appinventor/components/runtime/Texting$c;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/runtime/Texting$c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":::"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending queued message "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Texting Component"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$b;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$b;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/Texting$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 p1, -0x1

    const/4 p2, 0x0

    if-eq p3, p1, :cond_4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string p1, "Texting Component"

    .line 1018
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received no service error, msg:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    sget-object p1, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string p3, "No Sms service available. Message not sent."

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    const-string p1, "Texting Component"

    .line 1022
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received null PDU error, msg:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    sget-object p1, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string p3, "Received null PDU error. Message not sent."

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string p2, "Texting Component"

    .line 1026
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received radio off error, msg:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sget-object p2, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string p3, "Could not send SMS message: radio off."

    invoke-static {p2, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string p1, "Texting Component"

    .line 1014
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received generic failure, msg:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sget-object p1, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string p3, "Generic failure: message not sent"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const-string p1, "Texting Component"

    .line 1010
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received OK, msg:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    sget-object p1, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string p3, "Message sent"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Texting Component"

    .line 734
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0001"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 735
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caching "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "textingmsgcache"

    const v1, 0x8000

    .line 736
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 737
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 738
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 739
    sget p0, Lcom/google/appinventor/components/runtime/Texting;->b:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/google/appinventor/components/runtime/Texting;->b:I

    .line 740
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cached "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "I/O Error writing to cache file"

    .line 745
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "File not found error writing to cache file"

    .line 742
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Texting;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "Texting Component"

    const-string v1, "Sending via built-in Sms"

    .line 1037
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->d:Z

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 1043
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$1;

    invoke-direct {v1, p0, v0, p0, p1}, Lcom/google/appinventor/components/runtime/Texting$1;-><init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1063
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/telephony/SmsManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1064
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1065
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "SMS_SENT"

    if-ge v1, p1, :cond_1

    .line 1067
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0, v6, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1070
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/Texting$2;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Texting$2;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    .line 1085
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1086
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/telephony/SmsManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->k:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Texting;Z)Z
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->d:Z

    return p1
.end method

.method private a()[Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "textingmsgcache"

    const-string v1, "Texting Component"

    const-string v2, "Retrieving cached messages"

    .line 652
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 655
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v3

    .line 656
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 657
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 658
    sput v0, Lcom/google/appinventor/components/runtime/Texting;->b:I

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved cache "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u0001"

    .line 668
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v3, "I/O Error reading from cache file"

    .line 664
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v2

    :catch_1
    const-string v0, "No Cache file found -- this is not (usually) an error"

    .line 661
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->j:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 7

    .line 625
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->a()[Ljava/lang/String;

    move-result-object v1

    .line 627
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cached messages "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Texting Component"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 632
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 633
    aget-object v3, v1, v2

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Texting Component"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ":"

    .line 636
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 639
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v6, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq v5, v6, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 640
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 641
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 640
    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 627
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 1090
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting$3;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/Texting;Z)Z
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->e:Z

    return p1
.end method

.method public static getCachedMsgCount()I
    .locals 1

    .line 685
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->b:I

    return v0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 5

    const-string v0, "pdus"

    .line 603
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 604
    array-length v0, p0

    new-array v1, v0, [[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 606
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 607
    aget-object v4, p0, v3

    check-cast v4, [B

    check-cast v4, [B

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    :cond_0
    new-array p0, v0, [[B

    .line 611
    new-array v3, v0, [Landroid/telephony/SmsMessage;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 613
    aget-object v4, v1, v2

    aput-object v4, p0, v2

    .line 614
    aget-object v4, p0, v2

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public static handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 717
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->c:Z

    if-eqz v0, :cond_0

    .line 718
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isReceivingEnabled(Landroid/content/Context;)I
    .locals 2

    const-string v0, "TextingState"

    const/4 v1, 0x0

    .line 581
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "receiving2"

    const/4 v1, -0x1

    .line 582
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "receiving"

    const/4 v1, 0x1

    .line 584
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static isRunning()Z
    .locals 1

    .line 677
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->c:Z

    return v0
.end method


# virtual methods
.method public GoogleVoiceEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "com.google.android.apps.googlevoice.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .line 482
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 483
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Z

    .line 484
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "TextingState"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gvenabled"

    .line 486
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 489
    :cond_0
    sget-object p1, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    const-string v1, "Sorry, your phone\'s system does not support this option."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public GoogleVoiceEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then SendMessage will attempt to send messages over Wifi using Google Voice.  This requires that the Google Voice app must be installed and set up on the phone or tablet, with a Google Voice account.  If GoogleVoiceEnabled is false, the device must have phone and texting service in order to send or receive messages with this component."
    .end annotation

    .line 461
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Z

    return v0
.end method

.method public Initialize()V
    .locals 2

    .line 285
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->e:Z

    if-nez v0, :cond_0

    const-string v0, "Initialize"

    .line 287
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Message()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->l:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The message that will be sent when the SendMessage method is called."
    .end annotation

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->l:Ljava/lang/String;

    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number that the message will be sent to when the SendMessage method is called. The number is a text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces should not be included."
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->k:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumber set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->k:Ljava/lang/String;

    return-void
.end method

.method public ReceivingEnabled()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ReceivingState;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to 1 (OFF) no messages will be received.  If set to 2 (FOREGROUND) or3 (ALWAYS) the component will respond to messages if it is running. If the app is not running then the message will be discarded if set to 2 (FOREGROUND). If set to 3 (ALWAYS) and the app is not running the phone will show a notification.  Selecting the notification will bring up the app and signal the MessageReceived event.  Messages received when the app is dormant will be queued, and so several MessageReceived events might appear when the app awakens.  As an app developer, it would be a good idea to give your users control over this property, so they can make their phones ignore text messages when your app is installed."
    .end annotation

    .line 515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabledAbstract()Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ReceivingEnabled(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ReceivingState;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "1"
        editorType = "text_receiving"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "android.provider.Telephony.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.RECEIVE_SMS"
        }
    .end annotation

    .line 571
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/ReceivingState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x6a5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Texting"

    .line 573
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 577
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabledAbstract(Lcom/google/appinventor/components/common/ReceivingState;)V

    return-void
.end method

.method public ReceivingEnabledAbstract()Lcom/google/appinventor/components/common/ReceivingState;
    .locals 1

    .line 523
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    return-object v0
.end method

.method public ReceivingEnabledAbstract(Lcom/google/appinventor/components/common/ReceivingState;)V
    .locals 3

    .line 531
    sput-object p1, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    .line 532
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 533
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 534
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "receiving2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "receiving"

    .line 535
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 537
    sget-object v0, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->e:Z

    if-nez p1, :cond_0

    const-string p1, "ReceivingEnabled"

    .line 538
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public SendMessage()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->k:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->l:Ljava/lang/String;

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v0, "sms_body"

    .line 353
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const v1, 0x54455854

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    .line 356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public SendMessageDirect()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.SEND_SMS",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->k:Ljava/lang/String;

    .line 372
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->l:Ljava/lang/String;

    .line 375
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Z

    if-eqz v3, :cond_2

    .line 378
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->j:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to get an authToken -- enqueing "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Ljava/util/Queue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":::"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string v1, "Pending message queue full. Can\'t send message"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 392
    new-instance v0, Lcom/google/appinventor/components/runtime/Texting$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Texting$a;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Texting$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    const-string v3, "Creating AsyncSendMessage"

    .line 396
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$b;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$b;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/Texting$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    const-string v0, "Sending via SMS"

    .line 402
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SendMessage"

    .line 403
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    return-void
.end method

.method public onInitialize()V
    .locals 2

    const-string v0, "Texting Component"

    const-string v1, "onInitialize()"

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->b:Z

    .line 277
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->c:Z

    .line 278
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->b()V

    .line 279
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x21c7

    .line 280
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "Texting Component"

    const-string v1, "onPause()"

    .line 707
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 708
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->c:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Texting Component"

    const-string v1, "onResume()"

    .line 693
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 694
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->c:Z

    .line 695
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->b:Z

    if-eqz v0, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->b()V

    .line 697
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x21c7

    .line 698
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1213
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->a:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1214
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1215
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->a:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "receiving2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1216
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->a:Z

    const-string v2, "gvenabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 2

    const v0, 0x54455854

    if-ne p1, v0, :cond_1

    .line 753
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "sms_body"

    .line 754
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 753
    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/appinventor/components/runtime/Texting;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    .line 755
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    :cond_1
    return-void
.end method
