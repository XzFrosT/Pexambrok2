.class Lcom/google/appinventor/components/runtime/FirebaseAuthentication$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->SignInAnonymously()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$19;->a:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$19;->a:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->AnonymousSignInSuccessful()V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$19;->a:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->AnonymousSignInFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
