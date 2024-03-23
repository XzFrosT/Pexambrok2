.class Lcom/google/appinventor/components/runtime/Web$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->PutFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Web$b;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;Ljava/lang/String;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$5;->a:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$5;->a:Lcom/google/appinventor/components/runtime/Web$b;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 686
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->a:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$5;->a:Lcom/google/appinventor/components/runtime/Web$b;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$5;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "PUT"

    const-string v5, "PutFile"

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
