.class Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer$a;->a(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iput p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->a:I

    iput p3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->b:I

    iput p4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 776
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->a:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->a:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->b:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->a(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V

    return-void
.end method
