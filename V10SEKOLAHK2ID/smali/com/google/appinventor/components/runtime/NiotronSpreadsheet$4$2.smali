.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$2;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 624
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 626
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4$2;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$4;->a:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const/16 v2, 0x191

    const-string v3, "Unable to make server call. check your url and try again"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotRow(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V

    return-void
.end method
