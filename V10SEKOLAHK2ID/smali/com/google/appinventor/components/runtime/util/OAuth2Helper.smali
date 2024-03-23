.class public Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PREF_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final PREF_AUTH_TOKEN:Ljava/lang/String; = "authToken"

.field public static final TAG:Ljava/lang/String; = "OAuthHelper"

.field private static a:Ljava/lang/String; = "Error during OAuth"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;

    invoke-direct {v0, p1}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->invalidateAuthToken(Ljava/lang/String;)V

    .line 159
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p4}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountByName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v3

    const-string p2, "OAuthHelper"

    if-eqz v3, :cond_0

    const-string p1, "Getting token by account"

    .line 169
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p4, "Getting token by features, possibly prompting user to select an account"

    .line 175
    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "com.google"

    move-object v3, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persisting credentials, acct ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuthHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "accountName"

    .line 200
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "authToken"

    .line 201
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a()Z
    .locals 2

    .line 188
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getErrorMessage()Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getErrorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuthHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static resetAccountCredential(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "OAuthHelper"

    const-string v1, "Reset credentials"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 214
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "authToken"

    .line 215
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "accountName"

    .line 216
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "OAuthHelper"

    const-string v1, "getRefreshedAuthToken()"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accountName"

    const/4 v2, 0x0

    .line 96
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "authToken"

    .line 99
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    new-instance v3, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    invoke-direct {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>()V

    .line 103
    invoke-virtual {v3, v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 108
    invoke-direct {p0, p1, v3, p2, v1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->a(Landroid/app/Activity;Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;

    move-result-object p2

    .line 113
    :try_start_0
    invoke-interface {p2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v1, "authtoken"

    .line 114
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "authAccount"

    .line 117
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-direct {p0, v0, p2, v2}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "Error: I/O error"

    .line 128
    sput-object p1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->a:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 124
    invoke-virtual {p1}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    const-string p1, "Error: Authenticator error"

    .line 125
    sput-object p1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->a:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception p2

    .line 120
    invoke-virtual {p2}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 121
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->resetAccountCredential(Landroid/app/Activity;)V

    const-string p1, "Error: operation cancelled"

    .line 122
    sput-object p1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->a:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t get authtoken from UI thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
