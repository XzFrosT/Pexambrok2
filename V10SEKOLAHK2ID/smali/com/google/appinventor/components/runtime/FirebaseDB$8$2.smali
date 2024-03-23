.class Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB$8;->onComplete(Lcom/firebase/client/FirebaseError;ZLcom/firebase/client/DataSnapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB$8;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$8;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppendValue(!committed): result.err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void
.end method
