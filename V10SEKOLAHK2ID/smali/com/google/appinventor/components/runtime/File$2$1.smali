.class Lcom/google/appinventor/components/runtime/File$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File$2;->process(Ljava/io/OutputStreamWriter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/File$2;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File$2;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$2$1;->a:Lcom/google/appinventor/components/runtime/File$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$2$1;->a:Lcom/google/appinventor/components/runtime/File$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/File$2;->a:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$2$1;->a:Lcom/google/appinventor/components/runtime/File$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/File$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/File;->AfterFileSaved(Ljava/lang/String;)V

    return-void
.end method
