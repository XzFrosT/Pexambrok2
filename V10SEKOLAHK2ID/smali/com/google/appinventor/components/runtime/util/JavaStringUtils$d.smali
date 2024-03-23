.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:I

.field a:Ljava/lang/String;

.field b:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->a:I

    .line 128
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->b:I

    .line 129
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->a:Ljava/lang/String;

    return-void
.end method
