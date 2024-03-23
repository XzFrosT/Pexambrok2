.class Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronInAppReview;->OpenReviewForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronInAppReview;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronInAppReview;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;->a:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;->a:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->ReviewCompleted()V

    return-void
.end method
