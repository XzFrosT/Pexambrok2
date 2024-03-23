.class Lcom/google/appinventor/components/runtime/Web$9;
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
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/Web$b;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$b;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1209
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$9;->a:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$9;->a:Lcom/google/appinventor/components/runtime/Web$b;

    iput p3, p0, Lcom/google/appinventor/components/runtime/Web$9;->a:I

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Web$9;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$9;->a:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$9;->a:Lcom/google/appinventor/components/runtime/Web$b;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web$b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Web$9;->a:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$9;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$9;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Web;->GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
