.class public final enum Lcom/google/appinventor/components/common/PollfishIconPosition;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/PollfishIconPosition;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BottomLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

.field public static final enum BottomRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

.field public static final enum MiddleLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

.field public static final enum MiddleRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

.field public static final enum TopLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

.field public static final enum TopRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/PollfishIconPosition;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic a:[Lcom/google/appinventor/components/common/PollfishIconPosition;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/google/appinventor/components/common/PollfishIconPosition;

    const-string v1, "BottomLeft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/google/appinventor/components/common/PollfishIconPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->BottomLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    .line 8
    new-instance v0, Lcom/google/appinventor/components/common/PollfishIconPosition;

    const-string v1, "BottomRight"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/google/appinventor/components/common/PollfishIconPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->BottomRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    .line 9
    new-instance v0, Lcom/google/appinventor/components/common/PollfishIconPosition;

    const-string v1, "TopLeft"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/google/appinventor/components/common/PollfishIconPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->TopLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    .line 10
    new-instance v0, Lcom/google/appinventor/components/common/PollfishIconPosition;

    const-string v1, "TopRight"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1}, Lcom/google/appinventor/components/common/PollfishIconPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->TopRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    .line 11
    new-instance v0, Lcom/google/appinventor/components/common/PollfishIconPosition;

    const-string v1, "MiddleLeft"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v1}, Lcom/google/appinventor/components/common/PollfishIconPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->MiddleLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    .line 12
    new-instance v0, Lcom/google/appinventor/components/common/PollfishIconPosition;

    const-string v1, "MiddleRight"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v1}, Lcom/google/appinventor/components/common/PollfishIconPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->MiddleRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/appinventor/components/common/PollfishIconPosition;

    .line 6
    sget-object v8, Lcom/google/appinventor/components/common/PollfishIconPosition;->BottomLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    aput-object v8, v1, v2

    sget-object v8, Lcom/google/appinventor/components/common/PollfishIconPosition;->BottomRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    aput-object v8, v1, v3

    sget-object v3, Lcom/google/appinventor/components/common/PollfishIconPosition;->TopLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/PollfishIconPosition;->TopRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    aput-object v3, v1, v5

    sget-object v3, Lcom/google/appinventor/components/common/PollfishIconPosition;->MiddleLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    aput-object v3, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/google/appinventor/components/common/PollfishIconPosition;->a:[Lcom/google/appinventor/components/common/PollfishIconPosition;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->a:Ljava/util/Map;

    .line 23
    invoke-static {}, Lcom/google/appinventor/components/common/PollfishIconPosition;->values()[Lcom/google/appinventor/components/common/PollfishIconPosition;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 24
    sget-object v4, Lcom/google/appinventor/components/common/PollfishIconPosition;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/google/appinventor/components/common/PollfishIconPosition;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/PollfishIconPosition;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/PollfishIconPosition;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/PollfishIconPosition;
    .locals 1

    .line 6
    const-class v0, Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/PollfishIconPosition;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/PollfishIconPosition;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->a:[Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/PollfishIconPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/PollfishIconPosition;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/common/PollfishIconPosition;->a:Ljava/lang/String;

    return-object v0
.end method
