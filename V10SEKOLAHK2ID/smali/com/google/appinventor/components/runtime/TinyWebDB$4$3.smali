.class Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB$4;->onSuccess(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/TinyWebDB$4;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;->a:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;->a:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->a:Lcom/google/appinventor/components/runtime/TinyWebDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Web server returned a garbled value for the tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;->a:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/TinyWebDB;->WebServiceError(Ljava/lang/String;)V

    return-void
.end method
