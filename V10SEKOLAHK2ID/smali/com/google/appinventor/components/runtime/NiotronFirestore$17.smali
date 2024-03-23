.class Lcom/google/appinventor/components/runtime/NiotronFirestore$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirestore;->AddDocument(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFirestore;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$17;->a:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore$17;->a:Lcom/google/appinventor/components/runtime/NiotronFirestore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error adding document "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    const-string v0, "Niotron Firestore"

    const-string v1, "Error adding document"

    .line 212
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
