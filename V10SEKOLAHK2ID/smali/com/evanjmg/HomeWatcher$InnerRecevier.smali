.class Lcom/evanjmg/HomeWatcher$InnerRecevier;
.super Landroid/content/BroadcastReceiver;
.source "HomeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evanjmg/HomeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerRecevier"
.end annotation


# instance fields
.field final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

.field final synthetic this$0:Lcom/evanjmg/HomeWatcher;


# direct methods
.method constructor <init>(Lcom/evanjmg/HomeWatcher;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/evanjmg/HomeWatcher$InnerRecevier;->this$0:Lcom/evanjmg/HomeWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "reason"

    .line 40
    iput-object p1, p0, Lcom/evanjmg/HomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    const-string p1, "recentapps"

    .line 42
    iput-object p1, p0, Lcom/evanjmg/HomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

    const-string p1, "homekey"

    .line 43
    iput-object p1, p0, Lcom/evanjmg/HomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reason"

    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",reason:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hg"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/evanjmg/HomeWatcher$InnerRecevier;->this$0:Lcom/evanjmg/HomeWatcher;

    invoke-static {p1}, Lcom/evanjmg/HomeWatcher;->access$000(Lcom/evanjmg/HomeWatcher;)Lcom/evanjmg/OnHomePressedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "homekey"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/evanjmg/HomeWatcher$InnerRecevier;->this$0:Lcom/evanjmg/HomeWatcher;

    invoke-static {p1}, Lcom/evanjmg/HomeWatcher;->access$000(Lcom/evanjmg/HomeWatcher;)Lcom/evanjmg/OnHomePressedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/evanjmg/OnHomePressedListener;->onHomePressed()V

    goto :goto_0

    :cond_0
    const-string p1, "recentapps"

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/evanjmg/HomeWatcher$InnerRecevier;->this$0:Lcom/evanjmg/HomeWatcher;

    invoke-static {p1}, Lcom/evanjmg/HomeWatcher;->access$000(Lcom/evanjmg/HomeWatcher;)Lcom/evanjmg/OnHomePressedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/evanjmg/OnHomePressedListener;->onRecentAppPressed()V

    :cond_1
    :goto_0
    return-void
.end method
