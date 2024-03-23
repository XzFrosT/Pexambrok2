.class Lcom/google/appinventor/components/runtime/NiotronFTP$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFTP$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFTP$11;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFTP$11;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$11$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP$11;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$11$1;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$11$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP$11;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronFTP$11;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$11$1;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->GotFileList(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method
