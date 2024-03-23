.class public final enum Lcom/google/appinventor/components/common/ExoPlayerSize;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ExoPlayerSize;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Fill:Lcom/google/appinventor/components/common/ExoPlayerSize;

.field public static final enum Fit:Lcom/google/appinventor/components/common/ExoPlayerSize;

.field public static final enum Zoom:Lcom/google/appinventor/components/common/ExoPlayerSize;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/ExoPlayerSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic a:[Lcom/google/appinventor/components/common/ExoPlayerSize;


# instance fields
.field private final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/google/appinventor/components/common/ExoPlayerSize;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Fill"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/appinventor/components/common/ExoPlayerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/ExoPlayerSize;->Fill:Lcom/google/appinventor/components/common/ExoPlayerSize;

    .line 9
    new-instance v0, Lcom/google/appinventor/components/common/ExoPlayerSize;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Fit"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v2}, Lcom/google/appinventor/components/common/ExoPlayerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/ExoPlayerSize;->Fit:Lcom/google/appinventor/components/common/ExoPlayerSize;

    .line 10
    new-instance v0, Lcom/google/appinventor/components/common/ExoPlayerSize;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Zoom"

    const/4 v6, 0x2

    invoke-direct {v0, v3, v6, v2}, Lcom/google/appinventor/components/common/ExoPlayerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/ExoPlayerSize;->Zoom:Lcom/google/appinventor/components/common/ExoPlayerSize;

    new-array v1, v1, [Lcom/google/appinventor/components/common/ExoPlayerSize;

    .line 7
    sget-object v2, Lcom/google/appinventor/components/common/ExoPlayerSize;->Fill:Lcom/google/appinventor/components/common/ExoPlayerSize;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/appinventor/components/common/ExoPlayerSize;->Fit:Lcom/google/appinventor/components/common/ExoPlayerSize;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/google/appinventor/components/common/ExoPlayerSize;->a:[Lcom/google/appinventor/components/common/ExoPlayerSize;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ExoPlayerSize;->a:Ljava/util/Map;

    .line 21
    invoke-static {}, Lcom/google/appinventor/components/common/ExoPlayerSize;->values()[Lcom/google/appinventor/components/common/ExoPlayerSize;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 22
    sget-object v3, Lcom/google/appinventor/components/common/ExoPlayerSize;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ExoPlayerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/google/appinventor/components/common/ExoPlayerSize;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ExoPlayerSize;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/appinventor/components/common/ExoPlayerSize;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ExoPlayerSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ExoPlayerSize;
    .locals 1

    .line 7
    const-class v0, Lcom/google/appinventor/components/common/ExoPlayerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ExoPlayerSize;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ExoPlayerSize;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/appinventor/components/common/ExoPlayerSize;->a:[Lcom/google/appinventor/components/common/ExoPlayerSize;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ExoPlayerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ExoPlayerSize;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/common/ExoPlayerSize;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ExoPlayerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
