.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$2;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$2;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const/16 v1, 0x1f4

    const-string v2, "Server error occured."

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSheet(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
