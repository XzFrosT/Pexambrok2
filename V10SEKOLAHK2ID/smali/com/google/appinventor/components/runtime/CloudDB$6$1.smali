.class Lcom/google/appinventor/components/runtime/CloudDB$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/CloudDB$6;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB$6;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$6$1;->a:Lcom/google/appinventor/components/runtime/CloudDB$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$6$1;->a:Lcom/google/appinventor/components/runtime/CloudDB$6;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$6$1;->a:Lcom/google/appinventor/components/runtime/CloudDB$6;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$6$1;->a:Lcom/google/appinventor/components/runtime/CloudDB$6;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB$6;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->GotValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
