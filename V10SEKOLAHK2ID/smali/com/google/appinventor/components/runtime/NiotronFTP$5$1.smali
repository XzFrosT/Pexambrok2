.class Lcom/google/appinventor/components/runtime/NiotronFTP$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFTP$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronFTP$5;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFTP$5;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$5$1;->a:Lcom/google/appinventor/components/runtime/NiotronFTP$5;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronFTP$5;->a:Lcom/google/appinventor/components/runtime/NiotronFTP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->LoginResult(Z)V

    return-void
.end method
