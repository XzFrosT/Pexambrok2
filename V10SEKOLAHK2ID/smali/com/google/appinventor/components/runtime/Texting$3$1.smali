.class Lcom/google/appinventor/components/runtime/Texting$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Texting$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting$3;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->a:Lcom/google/appinventor/components/runtime/Texting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1098
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->a:Lcom/google/appinventor/components/runtime/Texting$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Texting$3;->a:Lcom/google/appinventor/components/runtime/Texting;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->b(Lcom/google/appinventor/components/runtime/Texting;Z)Z

    goto :goto_0

    .line 1100
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->a:Lcom/google/appinventor/components/runtime/Texting$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Texting$3;->a:Lcom/google/appinventor/components/runtime/Texting;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->a:Lcom/google/appinventor/components/runtime/Texting$3;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Texting$3;->a:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->a:Lcom/google/appinventor/components/runtime/Texting$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting$3;->a:Ljava/lang/String;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
