.class Lme/aemo/buttonwatcher/ButtonWatcher$1;
.super Ljava/lang/Object;
.source "ButtonWatcher.java"

# interfaces
.implements Lcom/evanjmg/OnHomePressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/buttonwatcher/ButtonWatcher;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/aemo/buttonwatcher/ButtonWatcher;


# direct methods
.method constructor <init>(Lme/aemo/buttonwatcher/ButtonWatcher;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lme/aemo/buttonwatcher/ButtonWatcher$1;->this$0:Lme/aemo/buttonwatcher/ButtonWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomePressed()V
    .locals 1

    .line 29
    iget-object v0, p0, Lme/aemo/buttonwatcher/ButtonWatcher$1;->this$0:Lme/aemo/buttonwatcher/ButtonWatcher;

    invoke-virtual {v0}, Lme/aemo/buttonwatcher/ButtonWatcher;->OnHomePressed()V

    return-void
.end method

.method public onRecentAppPressed()V
    .locals 1

    .line 34
    iget-object v0, p0, Lme/aemo/buttonwatcher/ButtonWatcher$1;->this$0:Lme/aemo/buttonwatcher/ButtonWatcher;

    invoke-virtual {v0}, Lme/aemo/buttonwatcher/ButtonWatcher;->OnRecentAppPressed()V

    return-void
.end method
