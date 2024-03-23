.class public final enum Lcom/google/appinventor/components/common/VerticalAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/VerticalAlignment;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bottom:Lcom/google/appinventor/components/common/VerticalAlignment;

.field public static final enum Center:Lcom/google/appinventor/components/common/VerticalAlignment;

.field public static final enum Top:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/VerticalAlignment;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic a:[Lcom/google/appinventor/components/common/VerticalAlignment;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/VerticalAlignment;

    const-string v1, "Top"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/VerticalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/VerticalAlignment;->Top:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/VerticalAlignment;

    const-string v1, "Center"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/google/appinventor/components/common/VerticalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/VerticalAlignment;->Center:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/common/VerticalAlignment;

    const-string v1, "Bottom"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/google/appinventor/components/common/VerticalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/VerticalAlignment;->Bottom:Lcom/google/appinventor/components/common/VerticalAlignment;

    new-array v1, v5, [Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 15
    sget-object v5, Lcom/google/appinventor/components/common/VerticalAlignment;->Top:Lcom/google/appinventor/components/common/VerticalAlignment;

    aput-object v5, v1, v2

    sget-object v5, Lcom/google/appinventor/components/common/VerticalAlignment;->Center:Lcom/google/appinventor/components/common/VerticalAlignment;

    aput-object v5, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/appinventor/components/common/VerticalAlignment;->a:[Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/VerticalAlignment;->a:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/google/appinventor/components/common/VerticalAlignment;->values()[Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 34
    sget-object v4, Lcom/google/appinventor/components/common/VerticalAlignment;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/google/appinventor/components/common/VerticalAlignment;->a:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/VerticalAlignment;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 1

    .line 15
    const-class v0, Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/appinventor/components/common/VerticalAlignment;->a:[Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/VerticalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/appinventor/components/common/VerticalAlignment;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
