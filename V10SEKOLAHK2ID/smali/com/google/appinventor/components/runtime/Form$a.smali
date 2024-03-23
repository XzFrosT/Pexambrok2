.class Lcom/google/appinventor/components/runtime/Form$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/google/appinventor/components/runtime/Form;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/Form$1;)V
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 304
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$a;->a:Lcom/google/appinventor/components/runtime/Form;

    const-string p1, "Form"

    const-string v0, "Doing Full MultiDex Install"

    .line 305
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$a;->a:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->install(Landroid/content/Context;Z)Z

    .line 307
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 299
    check-cast p1, [Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form$a;->doInBackground([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 311
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$a;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->a()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form$a;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
