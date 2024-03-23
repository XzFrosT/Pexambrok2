.class public Lcom/google/appinventor/components/runtime/FusiontablesControl;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that communicates with Google Fusion Tables. Fusion Tables let you store, share, query and visualize data tables; this component lets you query, create, and modify these tables.</p> <p><font color=red><b>NOTE:</b>&nbsp;Google shutdown the Fusion Tables service on December 3, 2019. This component no longer functions.</font></p> <p>This component uses the <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">Fusion Tables API V2.0</a>. <p>Applications using Fusion Tables must authentication to Google\'s servers. There are two ways this can be done. The first way uses an API Key which you the developer obtain (see below). With this approach end-users must also login to access a Fusion Table. The second approach is to use a Service Account. With this approach you create credentials and a special \"Service Account Email Address\" which you obtain from the <a href=\"https://code.google.com/apis/console/\" target=\"_blank\">Google APIs Console</a>. You then tell the Fusion Table Control the name of the Service Account Email address and upload the secret key as an asset to your application and set the KeyFile property to point at this file. Finally you check the \"UseServiceAuthentication\" checkbox in the designer. When using a Service Account, end-users do not need to login to use Fusion Tables, your service account authenticates all access.</p> <p>To get an API key, follow these instructions.</p> <ol><li>Go to your <a href=\"https://code.google.com/apis/console/\" target=\"_blank\">Google APIs Console</a> and login if necessary.</li><li>Select the <i>Services</i> item from the menu on the left.</li><li>Choose the <i>Fusiontables</i> service from the list provided and turn it on.</li><li>Go back to the main menu and select the <i>API Access</i> item. </li></ol><p>Your API Key will be near the bottom of that pane in the section called \"Simple API Access\".You will have to provide that key as the value for the <i>ApiKey</i> property in your Fusiontables app.</p><p>Once you have an API key, set the value of the <i>Query</i> property to a valid Fusiontables SQL query and call <i>SendQuery</i> to execute the query.  App Inventor will send the query to the Fusion Tables server and the <i>GotResult</i> block will fire when a result is returned from the server.Query results will be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks.</p><p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure the query follows the syntax described in <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">the reference manual</a>, which means that things like capitalization for names of columns matters, and that single quotes must be used around column names if there are spaces in them.</p>"
    iconName = "images/fusiontables.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "fusiontables.jar,google-api-client-beta.jar,google-api-client-android2-beta.jar,google-http-client-beta.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client-beta.jar,guava-14.0.1.jar,gson-2.1.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCOUNT_MANAGER,android.permission.MANAGE_ACCOUNTS,android.permission.GET_ACCOUNTS,android.permission.USE_CREDENTIALS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FusiontablesControl$b;,
        Lcom/google/appinventor/components/runtime/FusiontablesControl$a;
    }
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "App Inventor"

.field public static final AUTHORIZATION_HEADER_PREFIX:Ljava/lang/String; = "Bearer "

.field public static final AUTH_TOKEN_TYPE_FUSIONTABLES:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/fusiontables"

.field public static final FUSIONTABLES_POST:Ljava/lang/String; = "https://www.googleapis.com/fusiontables/v2/tables"

.field private static final a:I = 0x7530

.field private static final a:Ljava/lang/String; = "FUSION"

.field private static final b:Ljava/lang/String; = "Choose an account to access FusionTables"

.field private static final c:Ljava/lang/String; = "http://www.google.com/fusiontables/v2/query"

.field private static final d:Ljava/lang/String; = "show tables"

.field private static final e:Ljava/lang/String; = "fusiontables"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private final a:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

.field private a:Ljava/io/File;

.field private a:Z

.field private b:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 242
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Ljava/io/File;

    const-string v0, "oauth2:https://www.googleapis.com/auth/fusiontables"

    .line 178
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->f:Ljava/lang/String;

    const-string v0, "Error on Fusion Tables query"

    .line 210
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->j:Ljava/lang/String;

    const-string v0, ""

    .line 223
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->l:Ljava/lang/String;

    const/4 v1, 0x0

    .line 228
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Z

    .line 233
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->m:Ljava/lang/String;

    const-string v0, "https://www.googleapis.com/auth/fusiontables"

    .line 235
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->n:Ljava/lang/String;

    const-string v0, "Please wait loading..."

    .line 237
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o:Ljava/lang/String;

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b:Z

    .line 243
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 244
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Landroid/app/Activity;

    const-string p1, "Choose an account to access FusionTables"

    const-string v0, "fusiontables"

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    const-string/jumbo p1, "show tables"

    .line 246
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    .line 248
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const-string p1, "Sorry. The Fusiontables component is not compatible with this phone."

    const-string v0, "This application must exit."

    const-string v1, "Rats!"

    .line 249
    invoke-direct {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/ComponentContainer;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .locals 3

    .line 497
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 498
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 499
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 500
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 501
    new-instance v1, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, p2, p1, v0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Ljava/io/File;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsetoJSonSqlCreate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUSION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x28

    .line 723
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 724
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/16 v5, 0x29

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, ","

    .line 725
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v5, "{\'columns\':["

    .line 726
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 727
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 728
    aget-object v7, p1, v6

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 729
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{\'name\': \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\', \'type\': \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'}"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    array-length v7, p1

    sub-int/2addr v7, v4

    if-ge v6, v7, :cond_0

    .line 731
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "],"

    .line 734
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'isExportable\':\'true\',"

    .line 735
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'name\': \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    .line 737
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CREATE TABLE "

    .line 739
    invoke-virtual {v0, v5, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "tableId"

    const-string v1, "Error: "

    .line 757
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http Post content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FUSION"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www.googleapis.com/fusiontables/v2/tables?key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 765
    :try_start_0
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v2, "application/json"

    .line 770
    invoke-virtual {v5, v2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bearer "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Authorization"

    invoke-virtual {v3, v2, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 776
    new-instance p2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 778
    :try_start_1
    invoke-interface {p2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 790
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-eqz p2, :cond_1

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 793
    :try_start_2
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpApacheResponseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    .line 794
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tableId,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->i:Ljava/lang/String;

    goto :goto_0

    .line 798
    :cond_0
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 808
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Query = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nResultStr = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->i:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 805
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 806
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 802
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 803
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 812
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->i:Ljava/lang/String;

    .line 816
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->i:Ljava/lang/String;

    return-object p1

    :catch_2
    move-exception p1

    .line 783
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 784
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    .line 780
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 781
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    .line 767
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 768
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "http://www.google.com/fusiontables/v2/query"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 513
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "sql"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "application/x-www-form-urlencoded"

    .line 515
    invoke-virtual {p1, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 273
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 275
    new-instance p1, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Z
    .locals 0

    .line 160
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static httpApacheResponseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 657
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 662
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 664
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 638
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 641
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static parseResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 679
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 681
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p0, "FUSION"

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 691
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Your Google API Key. For help, click on the questionmark (?) next to the FusiontablesControl component in the Palette. "
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->g:Ljava/lang/String;

    return-void
.end method

.method public DoQuery()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "DEPRECATED. This block is deprecated as of the end of 2012.  Use SendQuery."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Lcom/google/appinventor/components/runtime/FusiontablesControl$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "DoQuery"

    invoke-virtual {v0, p0, v3, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public ForgetLogin()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Forget end-users login credentials. Has no effect on service authentication"
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->resetAccountCredential(Landroid/app/Activity;)V

    return-void
.end method

.method public GetRows(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets all the rows from a specified fusion table. The tableId field is the id of therequired fusion table. The columns field is a comma-separeted list of the columns to retrieve."
    .end annotation

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    .line 439
    new-instance p1, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public GetRowsWithConditions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets all the rows from a fusion table that meet certain conditions. The tableId field isthe id of the required fusion table. The columns field is a comma-separeted list of the columns toretrieve. The conditions field specifies what rows to retrieve from the table, for example the rows in whicha particular column value is not null."
    .end annotation

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    .line 449
    new-instance p1, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public GotResult(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the Fusion Tables query has finished processing, with a result.  The result of the query will generally be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotResult"

    .line 413
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InsertRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Inserts a row into the specified fusion table. The tableId field is the id of thefusion table. The columns is a comma-separated list of the columns to insert values into. The values field specifies what values to insert into each column."
    .end annotation

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") VALUES ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    .line 430
    new-instance p1, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public KeyFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path of the private key file.  This key file is used to get access to the FusionTables API."
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->l:Ljava/lang/String;

    return-object v0
.end method

.method public KeyFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Ljava/io/File;

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    .line 372
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->l:Ljava/lang/String;

    return-void
.end method

.method public LoadingDialogMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the loading message for the dialog."
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o:Ljava/lang/String;

    return-object v0
.end method

.method public LoadingDialogMessage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Please wait loading..."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 459
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o:Ljava/lang/String;

    return-void
.end method

.method public Query()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The query to send to the Fusion Tables API. <p>For legal query formats and examples, see the <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">Fusion Tables API v2.0 reference manual</a>.</p> <p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure it follows the syntax described in the reference manual, which means that things like capitalization for names of columns matters, and that single quotes need to be used around column names if there are spaces in them.</p> "
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public Query(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "show tables"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    return-void
.end method

.method public SendQuery()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send the query to the Fusiontables server."
    .end annotation

    .line 389
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public ServiceAccountEmail()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Service Account Email Address when service account authentication is in use."
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceAccountEmail(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->m:Ljava/lang/String;

    return-void
.end method

.method public ShowLoadingDialog(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 480
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b:Z

    return-void
.end method

.method public ShowLoadingDialog()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether or not to show the loading dialog"
    .end annotation

    .line 491
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b:Z

    return v0
.end method

.method public UseServiceAuthentication(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 295
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Z

    return-void
.end method

.method public UseServiceAuthentication()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates whether a service account should be used for authentication"
    .end annotation

    .line 289
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a:Z

    return v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1025
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "SendQuery"

    const/16 p2, 0xa29

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public handleOAuthError(Ljava/lang/String;)V
    .locals 2

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOAuthError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUSION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->k:Ljava/lang/String;

    return-void
.end method

.method public sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;
    .locals 7

    const-string v0, "response is "

    const-string v1, "e.getMessage() is "

    .line 584
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->k:Ljava/lang/String;

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FUSION"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v2, Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    .line 590
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v4

    new-instance v5, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v5}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    new-instance v6, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    invoke-direct {v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>()V

    invoke-direct {v2, v4, v5, v6}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string v4, "App Inventor Fusiontables/v2.0"

    .line 593
    invoke-virtual {v2, v4}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v2

    new-instance v4, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;

    .line 594
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->build()Lcom/google/api/services/fusiontables/Fusiontables;

    move-result-object v2

    const/4 v4, 0x0

    .line 601
    :try_start_0
    invoke-virtual {v2}, Lcom/google/api/services/fusiontables/Fusiontables;->query()Lcom/google/api/services/fusiontables/Fusiontables$Query;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query;->sql(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;

    move-result-object p1

    const-string v2, "alt"

    const-string v5, "csv"

    .line 602
    invoke-virtual {p1, v2, v5}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-virtual {p1, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 607
    invoke-virtual {p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 616
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 617
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->k:Ljava/lang/String;

    const-string p2, "IOException"

    .line 618
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 610
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->printStackTrace()V

    .line 611
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->k:Ljava/lang/String;

    const-string p2, "JsonResponseException"

    .line 612
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4
.end method
