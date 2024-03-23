.class public abstract Lcom/google/appinventor/components/runtime/ProbeBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.ACCESS_NETWORK_STATE, android.permission.WAKE_LOCK, android.permission.READ_LOGS, android.permission.VIBRATE, android.permission.INTERNET"
.end annotation


# static fields
.field public static final PASSWORD_KEY:Ljava/lang/String; = "PASSWORD"

.field public static final PROBE_BASE_NAME:Ljava/lang/String;

.field private static final a:I = 0x22b8

.field private static b:I


# instance fields
.field private a:Landroid/app/Notification;

.field private a:Landroid/app/NotificationManager;

.field private a:Landroid/app/PendingIntent;

.field private a:Landroid/content/ServiceConnection;

.field private final a:Ljava/lang/String;

.field private a:Ljava/math/BigDecimal;

.field private a:Ljava/util/Calendar;

.field a:Z

.field private b:Ljava/lang/String;

.field private final c:I

.field private c:Ljava/lang/String;

.field protected duration:I

.field protected enabled:Z

.field protected enabledSaveToDB:Z

.field protected enabledSchedule:Z

.field protected gson:Lcom/google/gson/Gson;

.field protected interval:I

.field protected mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

.field protected mIsBound:Z

.field protected mainUIThreadActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 350
    sget-object v0, Lcom/google/appinventor/components/runtime/util/SensorDbUtil;->DB_NAME:Ljava/lang/String;

    sput-object v0, Lcom/google/appinventor/components/runtime/ProbeBase;->PROBE_BASE_NAME:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 176
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    .line 96
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSchedule:Z

    .line 97
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Z

    const-string v1, "ProbeBase"

    .line 99
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 104
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    .line 105
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mIsBound:Z

    .line 128
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSaveToDB:Z

    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Ljava/util/Calendar;

    const/16 v2, 0xf

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Ljava/util/Calendar;

    const/16 v3, 0x10

    .line 137
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-long v2, v0

    const/4 v0, -0x3

    .line 135
    invoke-static {v2, v3, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Ljava/math/BigDecimal;

    .line 141
    new-instance v0, Lcom/google/appinventor/components/runtime/ProbeBase$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ProbeBase$1;-><init>(Lcom/google/appinventor/components/runtime/ProbeBase;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Landroid/content/ServiceConnection;

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 183
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    .line 187
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    const-class v2, Ledu/mit/media/funf/FunfManager;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ProbeBase;->a()V

    .line 196
    invoke-static {}, Lcom/google/appinventor/components/runtime/ProbeBase;->a()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->c:I

    .line 200
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Landroid/app/NotificationManager;

    const-string p1, "created notification manager"

    .line 201
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "export"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->b:Ljava/lang/String;

    const-string p1, "csv"

    .line 204
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->c:Ljava/lang/String;

    return-void
.end method

.method private static a()I
    .locals 1

    .line 170
    sget v0, Lcom/google/appinventor/components/runtime/ProbeBase;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/ProbeBase;->b:I

    add-int/lit16 v0, v0, 0x22b8

    return v0
.end method

.method public static getSystemPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/appinventor/components/runtime/ProbeBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract Enabled(Z)V
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 338
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabled:Z

    return v0
.end method

.method public EnabledSaveToDB()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSaveToDB:Z

    return v0
.end method

.method a()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    const-class v3, Ledu/mit/media/funf/FunfManager;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 217
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mIsBound:Z

    const-string v0, "ProbeBase"

    const-string v1, "FunfManager is bound, and now we could have register dataRequests"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method b()V
    .locals 2

    .line 224
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ProbeBase;->unregisterDataRequest()V

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mainUIThreadActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mIsBound:Z

    :cond_0
    return-void
.end method

.method protected getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 5

    .line 247
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 248
    move-object v1, v0

    check-cast v1, Lcom/google/gson/JsonObject;

    const-string v2, "@type"

    invoke-virtual {v1, v2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 252
    move-object v2, p3

    check-cast v2, Lcom/google/gson/JsonObject;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "strict"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "interval"

    invoke-virtual {v2, v4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v2, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "opportunistic"

    .line 255
    invoke-virtual {v2, p1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "@schedule"

    .line 257
    invoke-virtual {v1, p1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 344
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ProbeBase;->b()V

    return-void
.end method

.method public abstract registerDataRequest(II)V
.end method

.method protected saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 5

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Writing data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ledu/mit/media/funf/json/IJsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProbeBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p2}, Ledu/mit/media/funf/json/IJsonObject;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "@type"

    .line 365
    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-string v3, "probe"

    .line 364
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 366
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->a:Ljava/math/BigDecimal;

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string/jumbo v3, "timezoneOffset"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string/jumbo v2, "timestamp"

    .line 368
    invoke-virtual {p2, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    .line 369
    invoke-virtual {p1, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 372
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 373
    sget-object v1, Lcom/google/appinventor/components/runtime/ProbeBase;->PROBE_BASE_NAME:Ljava/lang/String;

    const-string v4, "DATABASE_NAME"

    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TIMESTAMP"

    .line 374
    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "NAME"

    .line 375
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VALUE"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    const-class v1, Ledu/mit/media/funf/storage/NameValueDatabaseService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "edu.mit.media.funf.RECORD"

    .line 378
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 380
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    invoke-virtual {p2, p1}, Ledu/mit/media/funf/FunfManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public abstract unregisterDataRequest()V
.end method
