.class public Lcom/google/appinventor/components/runtime/PhoneStatus;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that returns information about the phone."
    iconName = "images/phoneip.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "webrtc.jar,google-http-client-beta.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesNativeLibraries;
    v7aLibraries = "libjingle_peerconnection_so.so"
    v8aLibraries = "libjingle_peerconnection_so.so"
    x86_64Libraries = "libjingle_peerconnection_so.so"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_WIFI_STATE"
    }
.end annotation


# static fields
.field private static a:Landroid/app/Activity; = null

.field private static a:Lcom/google/appinventor/components/runtime/PhoneStatus; = null

.field private static final a:Ljava/lang/String; = "PhoneStatus"

.field private static a:Z = false


# instance fields
.field private final a:Lcom/google/appinventor/components/runtime/Form;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 85
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->b:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->c:Ljava/lang/String;

    .line 86
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 87
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Landroid/app/Activity;

    .line 88
    sget-object p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-nez p1, :cond_0

    .line 89
    sput-object p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/PhoneStatus;

    :cond_0
    return-void
.end method

.method public static GetWifiIpAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the IP address of the phone in the form of a String"
    .end annotation

    .line 96
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Landroid/app/Activity;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 98
    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 100
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PhoneStatus;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Error: No Wifi Connection"

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/PhoneStatus;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static a()V
    .locals 2

    const-string v0, "PhoneStatus"

    const-string v1, "doSettings called."

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/PhoneStatus;->OnSettings()V

    goto :goto_0

    :cond_0
    const-string v1, "mainStance is null on doSettings"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static doFault()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Causes an Exception, used to debug exception processing."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "doFault called!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUseWebRTC()Z
    .locals 1

    .line 357
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Z

    return v0
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isConnected()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if the phone is on Wifi, FALSE otherwise"
    .end annotation

    .line 109
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_1
    return v0
.end method


# virtual methods
.method public GetInstaller()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the app that installed us"
    .end annotation

    .line 338
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "com.niotron.companion"

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sideloaded"

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public GetVersionName()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the our VersionName property"
    .end annotation

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PhoneStatus"

    const-string v2, "Unable to get VersionName"

    .line 331
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public InstallationId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the ACRA Installation ID"
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnSettings()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnSettings"

    .line 275
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SdkLevel()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current Android SDK Level"
    .end annotation

    .line 307
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    return v0
.end method

.method public WebRTC(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 287
    sput-boolean p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Z

    return-void
.end method

.method public WebRTC()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If True we are using WebRTC to talk to the server."
    .end annotation

    .line 292
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Z

    return v0
.end method

.method public installURL(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Downloads the URL and installs it as an Android Package via the installed browser"
    .end annotation

    :try_start_0
    const-string v0, "edu.mit.appinventor.companionextras.CompanionExtras"

    .line 251
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 252
    const-class v3, Lcom/google/appinventor/components/runtime/Form;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Extra1"

    new-array v5, v1, [Ljava/lang/Class;

    .line 253
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 254
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?store=1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public isDirect()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if we are running in the emulator or USB Connection"
    .end annotation

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.os.Build.VERSION.RELEASE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.os.Build.PRODUCT = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_1

    .line 206
    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->isDirect()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAssetsLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Declare that we have loaded our initial assets and other assets should come from the sdcard"
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->setAssetsLoaded()V

    :cond_0
    return-void
.end method

.method public setHmacSeedReturnCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Establish the secret seed for HOTP generation. Return the SHA1 of the provided seed, this will be used to contact the rendezvous server. Note: This code also starts the connection negotiation process if we are using WebRTC. This is a bit of a kludge..."
    .end annotation

    const-string p2, "PhoneStatus"

    const-string v0, ""

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    new-instance p2, Lcom/google/appinventor/components/runtime/PhoneStatus$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/PhoneStatus$1;-><init>(Lcom/google/appinventor/components/runtime/PhoneStatus;)V

    const-string v0, "You cannot use two codes with one start up of the Companion. You should restart the Companion and try again."

    const-string v1, "Warning"

    const-string v2, "OK"

    invoke-static {p1, v0, v1, v2, p2}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->c:Ljava/lang/String;

    return-object p1

    .line 164
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->b:Ljava/lang/String;

    .line 174
    sget-boolean v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Z

    if-nez v1, :cond_3

    .line 175
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->setHmacKey(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    const-string v1, "SHA1"

    .line 180
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 186
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 188
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 189
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-byte v6, v0, v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 190
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v7, v4

    const-string v6, "%02x"

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 192
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Code = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->c:Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Exception getting SHA1 Instance"

    .line 182
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Really Exit the Application"
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    const/4 v0, 0x0

    .line 266
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public startHTTPD(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the internal AppInvHTTPD to listen for incoming forms. FOR REPL USE ONLY!"
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ReplForm;->startHTTPD(Z)V

    :cond_0
    return-void
.end method

.method public startWebRTC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the WebRTC engine"
    .end annotation

    .line 214
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    check-cast p1, Lcom/google/appinventor/components/runtime/ReplForm;

    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->a:Lcom/google/appinventor/components/runtime/Form;

    check-cast p1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->setWebRTCMgr(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    return-void
.end method
