.class Lcom/google/appinventor/components/runtime/Web$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 147
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web$a;->a:I

    .line 148
    iput p2, p0, Lcom/google/appinventor/components/runtime/Web$a;->b:I

    return-void
.end method
