.class final Lcom/google/appinventor/components/runtime/util/JsonUtil$1;
.super Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/JsonUtil;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V
    .locals 0

    .line 455
    iput-object p8, p0, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->a:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct/range {p0 .. p7}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic process(Ljava/io/Closeable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->process(Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method protected process(Ljava/io/OutputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 459
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    return v0
.end method
