.class Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/storage/OnProgressListener;


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
        "Lcom/google/firebase/storage/OnProgressListener<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$11;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V
    .locals 4

    .line 121
    invoke-virtual {p1}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getBytesTransferred()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-virtual {p1}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getTotalByteCount()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 122
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "% done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$11;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->UploadProgressed(D)V

    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p1, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$11;->onProgress(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V

    return-void
.end method
