.class Lcom/google/appinventor/components/runtime/AsyncTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask;->CallAsynchronousWithArgs(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AsyncTask;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2;->a:Lcom/google/appinventor/components/runtime/AsyncTask;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2;->a:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v3, "CallAsynchronousWithArgs"

    invoke-static {v0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/AsyncTask;->a(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2;->a:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AsyncTask;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/AsyncTask$2$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/AsyncTask$2$1;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask$2;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
