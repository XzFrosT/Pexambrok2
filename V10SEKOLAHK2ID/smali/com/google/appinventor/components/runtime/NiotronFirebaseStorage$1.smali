.class Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->UploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$1;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;

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
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$1;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->FileUploaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
