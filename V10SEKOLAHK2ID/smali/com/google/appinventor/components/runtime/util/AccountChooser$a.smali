.class Lcom/google/appinventor/components/runtime/util/AccountChooser$a;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/AccountChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/AccountChooser;

.field private a:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/AccountChooser;[Landroid/accounts/Account;Ljava/util/concurrent/SynchronousQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/SynchronousQueue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->a:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 182
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->a:Ljava/util/concurrent/SynchronousQueue;

    .line 183
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->a:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 184
    :goto_0
    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 185
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->a:[Ljava/lang/String;

    aget-object v0, p2, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/AccountChooser$a;)[Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->a:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "AccountChooser"

    const-string v1, "Chose: canceled"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-ltz p2, :cond_0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->a:[Ljava/lang/String;

    aget-object p2, v0, p2

    const-string v0, "AccountChooser"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->a:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->a:Ljava/util/concurrent/SynchronousQueue;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :catch_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$a;->a:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->a(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$a$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser$a$1;-><init>(Lcom/google/appinventor/components/runtime/util/AccountChooser$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
