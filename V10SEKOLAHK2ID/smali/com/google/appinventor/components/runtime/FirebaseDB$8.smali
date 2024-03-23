.class Lcom/google/appinventor/components/runtime/FirebaseDB$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/Transaction$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->a(Lcom/google/appinventor/components/runtime/FirebaseDB$b;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB$b;

.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB;

.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$b;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Ljava/lang/Runnable;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$b;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTransaction(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$b;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$b;->a(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lcom/firebase/client/FirebaseError;ZLcom/firebase/client/DataSnapshot;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 781
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/google/appinventor/components/runtime/FirebaseDB$8$1;

    invoke-direct {p3, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$8$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$8;Lcom/firebase/client/FirebaseError;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 792
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$8;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 800
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 801
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
