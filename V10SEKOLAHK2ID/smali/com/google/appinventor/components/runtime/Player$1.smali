.class Lcom/google/appinventor/components/runtime/Player$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Player;->Source(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Player;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Player;Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player$1;->a:Lcom/google/appinventor/components/runtime/Player;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Player$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 180
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player$1;->a:Lcom/google/appinventor/components/runtime/Player;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Player$1;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Player;->Source(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Player$1;->a:Lcom/google/appinventor/components/runtime/Player;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player$1;->a:Lcom/google/appinventor/components/runtime/Player;

    const-string v1, "Source"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
