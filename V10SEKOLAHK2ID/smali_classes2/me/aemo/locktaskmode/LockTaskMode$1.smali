.class Lme/aemo/locktaskmode/LockTaskMode$1;
.super Ljava/lang/Object;
.source "LockTaskMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/locktaskmode/LockTaskMode;->GetLockTaskState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/aemo/locktaskmode/LockTaskMode;

.field final synthetic val$finalLockTaskState:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/aemo/locktaskmode/LockTaskMode;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lme/aemo/locktaskmode/LockTaskMode$1;->this$0:Lme/aemo/locktaskmode/LockTaskMode;

    iput-object p2, p0, Lme/aemo/locktaskmode/LockTaskMode$1;->val$finalLockTaskState:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lme/aemo/locktaskmode/LockTaskMode$1;->this$0:Lme/aemo/locktaskmode/LockTaskMode;

    iget-object v1, p0, Lme/aemo/locktaskmode/LockTaskMode$1;->val$finalLockTaskState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/aemo/locktaskmode/LockTaskMode;->OnGotLockTaskState(Ljava/lang/String;)V

    return-void
.end method
