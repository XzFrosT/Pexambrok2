.class Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->UnsubscribeFromTopic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$3;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$3;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$3;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->UnsubscribeToTopicResult(Ljava/lang/String;Z)V

    return-void
.end method
