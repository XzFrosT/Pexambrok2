.class Lcom/google/appinventor/components/runtime/Web$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->a(Lcom/google/appinventor/components/runtime/Web$b;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Web$b;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Web;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$2;->a:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$2;->a:Lcom/google/appinventor/components/runtime/Web$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$2;->a:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->a:Lcom/google/appinventor/components/runtime/Web$b;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->TimedOut(Ljava/lang/String;)V

    return-void
.end method
