.class Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CreateRow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 340
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->b(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->c(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->d(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->e(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action=createRow&table="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->e(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&dbname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->c(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&pass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->b(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&mhost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->d(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&mdata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->f(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/set.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "POST"

    .line 352
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    .line 353
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.5"

    .line 354
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 357
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 358
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 359
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 361
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 363
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 365
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 366
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 368
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 371
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Required fields not filled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 393
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->a:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->a(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
