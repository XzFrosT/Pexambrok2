.class Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


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
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$8;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$8;->onSuccess(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V

    return-void
.end method
