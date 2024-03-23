.class Lcom/google/appinventor/components/runtime/Web$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web$8;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Web$8;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web$8;)V
    .locals 0

    .line 1177
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$8$1;->a:Lcom/google/appinventor/components/runtime/Web$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8$1;->a:Lcom/google/appinventor/components/runtime/Web$8;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Web$8;->a:Lcom/google/appinventor/components/runtime/Web;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8$1;->a:Lcom/google/appinventor/components/runtime/Web$8;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Web$8;->a:Lcom/google/appinventor/components/runtime/Web$b;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8$1;->a:Lcom/google/appinventor/components/runtime/Web$8;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Web$8;->a:[B

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8$1;->a:Lcom/google/appinventor/components/runtime/Web$8;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Web$8;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8$1;->a:Lcom/google/appinventor/components/runtime/Web$8;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Web$8;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$8$1;->a:Lcom/google/appinventor/components/runtime/Web$8;

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Web$8;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
