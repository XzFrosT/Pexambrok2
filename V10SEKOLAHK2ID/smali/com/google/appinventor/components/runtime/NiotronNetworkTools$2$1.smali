.class Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;

.field final synthetic a:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;Z)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;->a:Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;->a:Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;->a:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->ConnectedToInternetResult(Z)V

    return-void
.end method
