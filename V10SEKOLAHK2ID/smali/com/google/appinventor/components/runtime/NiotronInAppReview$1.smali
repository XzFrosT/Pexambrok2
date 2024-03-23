.class Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronInAppReview;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronInAppReview;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronInAppReview;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;->a:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;->a:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->Initialized()V

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;->a:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a(Lcom/google/appinventor/components/runtime/NiotronInAppReview;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/review/ReviewInfo;

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;->a:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->ErrorInitializing()V

    :goto_0
    return-void
.end method
