.class Lcom/google/appinventor/components/runtime/ProbeBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ProbeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/ProbeBase;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ProbeBase;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase$1;->a:Lcom/google/appinventor/components/runtime/ProbeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase$1;->a:Lcom/google/appinventor/components/runtime/ProbeBase;

    check-cast p2, Ledu/mit/media/funf/FunfManager$LocalBinder;

    .line 149
    invoke-virtual {p2}, Ledu/mit/media/funf/FunfManager$LocalBinder;->getManager()Ledu/mit/media/funf/FunfManager;

    move-result-object p2

    iput-object p2, p1, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    const-string p1, "ProbeBase"

    const-string p2, "Bound to FunfManager"

    .line 153
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProbeBase$1;->a:Lcom/google/appinventor/components/runtime/ProbeBase;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/ProbeBase;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    const-string p1, "ProbeBase"

    const-string v0, "Unbind FunfManager"

    .line 164
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
