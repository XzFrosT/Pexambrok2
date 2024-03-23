.class Lcom/google/appinventor/components/runtime/SocketIO$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SocketIO;->ListenToEvent(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/SocketIO;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SocketIO;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO$2;->a:Lcom/google/appinventor/components/runtime/SocketIO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO$2;->a:Lcom/google/appinventor/components/runtime/SocketIO;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/SocketIO;->a(Lcom/google/appinventor/components/runtime/SocketIO;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO$2;->a:Lcom/google/appinventor/components/runtime/SocketIO;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SocketIO;->a(Lcom/google/appinventor/components/runtime/SocketIO;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/SocketIO$2$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SocketIO$2$1;-><init>(Lcom/google/appinventor/components/runtime/SocketIO$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
