.class Lcom/google/appinventor/components/runtime/Texting$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0

    .line 1112
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$a;->a:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$a;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    const-string p1, "Texting Component"

    const-string v0, "Authenticating"

    .line 1116
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    new-instance p1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "grandcentral"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1112
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$a;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$a;->a:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Texting;->a(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)Ljava/lang/String;

    .line 1130
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->a()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Finished authentication"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1133
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$a;->a:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Texting;->a(Lcom/google/appinventor/components/runtime/Texting;)V

    return-void
.end method
