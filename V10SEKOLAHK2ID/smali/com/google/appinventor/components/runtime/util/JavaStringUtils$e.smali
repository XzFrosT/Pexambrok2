.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;)I
    .locals 3

    .line 141
    iget v0, p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->a:I

    iget v1, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    iget v1, p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->b:I

    iget v2, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_0
    iget p2, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->b:I

    iget p1, p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->b:I

    invoke-static {p2, p1}, L$r8$backportedMethods$utility$Integer$2$compare;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 136
    check-cast p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;

    check-cast p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;->compare(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;)I

    move-result p1

    return p1
.end method
