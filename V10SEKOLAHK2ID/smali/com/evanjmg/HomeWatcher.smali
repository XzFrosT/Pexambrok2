.class public Lcom/evanjmg/HomeWatcher;
.super Ljava/lang/Object;
.source "HomeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evanjmg/HomeWatcher$InnerRecevier;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "hg"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mListener:Lcom/evanjmg/OnHomePressedListener;

.field private mRecevier:Lcom/evanjmg/HomeWatcher$InnerRecevier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/evanjmg/HomeWatcher;->mContext:Landroid/content/Context;

    .line 19
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evanjmg/HomeWatcher;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/evanjmg/HomeWatcher;)Lcom/evanjmg/OnHomePressedListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/evanjmg/HomeWatcher;->mListener:Lcom/evanjmg/OnHomePressedListener;

    return-object p0
.end method


# virtual methods
.method public setOnHomePressedListener(Lcom/evanjmg/OnHomePressedListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/evanjmg/HomeWatcher;->mListener:Lcom/evanjmg/OnHomePressedListener;

    .line 24
    new-instance p1, Lcom/evanjmg/HomeWatcher$InnerRecevier;

    invoke-direct {p1, p0}, Lcom/evanjmg/HomeWatcher$InnerRecevier;-><init>(Lcom/evanjmg/HomeWatcher;)V

    iput-object p1, p0, Lcom/evanjmg/HomeWatcher;->mRecevier:Lcom/evanjmg/HomeWatcher$InnerRecevier;

    return-void
.end method

.method public startWatch()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/evanjmg/HomeWatcher;->mRecevier:Lcom/evanjmg/HomeWatcher$InnerRecevier;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/evanjmg/HomeWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/evanjmg/HomeWatcher;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public stopWatch()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/evanjmg/HomeWatcher;->mRecevier:Lcom/evanjmg/HomeWatcher$InnerRecevier;

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/evanjmg/HomeWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
