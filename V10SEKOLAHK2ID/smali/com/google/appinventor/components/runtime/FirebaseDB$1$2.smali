.class Lcom/google/appinventor/components/runtime/FirebaseDB$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB$1;->onCancelled(Lcom/firebase/client/FirebaseError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/firebase/client/FirebaseError;

.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$2;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$2;->a:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$2;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FirebaseDB$1;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$2;->a:Lcom/firebase/client/FirebaseError;

    invoke-virtual {v1}, Lcom/firebase/client/FirebaseError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void
.end method
