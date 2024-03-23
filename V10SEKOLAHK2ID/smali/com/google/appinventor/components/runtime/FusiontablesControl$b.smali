.class Lcom/google/appinventor/components/runtime/FusiontablesControl$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "QueryProcessorV2"

.field private static final b:Ljava/lang/String; = "FUSION_SERVICE_ACCOUNT"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final a:Landroid/app/ProgressDialog;

.field final synthetic a:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V
    .locals 1

    .line 838
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, "QueryProcessorV2"

    const-string v0, "Creating AsyncFusiontablesQuery"

    .line 839
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Landroid/app/Activity;

    .line 841
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 867
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 870
    new-instance v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    .line 871
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 878
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "create table"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 880
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    const-string v1, "QueryProcessorV2"

    if-eqz v0, :cond_1

    .line 888
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nResultStr = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 891
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 892
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error:  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 897
    :cond_2
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 903
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->d(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 906
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    .line 907
    new-instance v1, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v1}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->e(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FUSION_SERVICE_ACCOUNT"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 916
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->e(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/io/File;)Ljava/io/File;

    .line 918
    :cond_0
    new-instance v2, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 919
    invoke-virtual {v2, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    .line 920
    invoke-virtual {v2, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 921
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->g(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 922
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->f(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 923
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKeyFromP12File(Ljava/io/File;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    .line 924
    invoke-virtual {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v2

    .line 926
    new-instance v4, Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    new-instance v0, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 927
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->build()Lcom/google/api/services/fusiontables/Fusiontables;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Lcom/google/api/services/fusiontables/Fusiontables;->query()Lcom/google/api/services/fusiontables/Fusiontables$Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query;->sql(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;

    move-result-object v0

    const-string v1, "alt"

    const-string v2, "csv"

    .line 932
    invoke-virtual {v0, v1, v2}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 940
    :try_start_1
    invoke-virtual {v0}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "Got an unanticipated exception on sql.executeUnparsed"

    .line 956
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception class is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception message is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Point e"

    .line 960
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "end of printing exception"

    .line 961
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 966
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Got a JsonResponse exception on sql.executeUnparsed"

    .line 946
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 952
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_1

    .line 973
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nResultStr = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 979
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error with null response:  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p1, "executed sql query"

    .line 983
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v0, "in Catch Throwable e"

    .line 986
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 988
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 991
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "returning queryResultStr = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseJsonResponseException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUSION_SERVICE_ACCOUNT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 826
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 857
    aget-object p1, p1, v0

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting doInBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryProcessorV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 862
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 826
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUSION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 1012
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1015
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ShowLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->LoadingDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
