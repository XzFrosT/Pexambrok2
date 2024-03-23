.class Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;ILjava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->a:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->a:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 462
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->a:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->NotificationSentResult(ILjava/lang/String;)V

    return-void
.end method
