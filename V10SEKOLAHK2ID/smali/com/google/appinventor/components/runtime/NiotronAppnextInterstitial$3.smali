.class Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdClicked;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->AdUnitID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$3;->a:Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$3;->a:Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->AdClicked()V

    return-void
.end method
