.class Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/AdColonyRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;->InitSDK(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/adcolony/sdk/AdColonyReward;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore$1;->a:Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardAmount()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/NiotronAdcolonyCore;->GotReward(Ljava/lang/String;I)V

    return-void
.end method
