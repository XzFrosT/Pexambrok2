.class Lcom/google/appinventor/components/runtime/background/BackgroundService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/background/BackgroundService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/background/BackgroundService;

.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/background/BackgroundService;Ljava/lang/Throwable;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService$1;->a:Lcom/google/appinventor/components/runtime/background/BackgroundService;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService$1;->a:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundFunctions"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
