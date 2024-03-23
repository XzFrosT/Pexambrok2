.class Lcom/google/appinventor/components/runtime/CloudDB$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/CloudDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0

    .line 1254
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    return-void
.end method
