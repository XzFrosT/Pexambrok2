.class public final enum Lcom/google/appinventor/components/common/AdcolonyBannerSize;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/AdcolonyBannerSize;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Banner:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

.field public static final enum Leaderboard:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

.field public static final enum MediumRectangle:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

.field public static final enum Skyscraper:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/AdcolonyBannerSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic a:[Lcom/google/appinventor/components/common/AdcolonyBannerSize;


# instance fields
.field private final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Banner"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/appinventor/components/common/AdcolonyBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->Banner:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    .line 9
    new-instance v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "MediumRectangle"

    invoke-direct {v0, v5, v1, v3}, Lcom/google/appinventor/components/common/AdcolonyBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->MediumRectangle:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    .line 10
    new-instance v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Leaderboard"

    invoke-direct {v0, v6, v2, v5}, Lcom/google/appinventor/components/common/AdcolonyBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->Leaderboard:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    .line 11
    new-instance v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Skyscraper"

    invoke-direct {v0, v7, v3, v6}, Lcom/google/appinventor/components/common/AdcolonyBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->Skyscraper:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    new-array v5, v5, [Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    .line 7
    sget-object v6, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->Banner:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    aput-object v6, v5, v4

    sget-object v6, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->MediumRectangle:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    aput-object v6, v5, v1

    sget-object v1, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->Leaderboard:Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    aput-object v1, v5, v2

    aput-object v0, v5, v3

    sput-object v5, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->a:[Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->a:Ljava/util/Map;

    .line 22
    invoke-static {}, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->values()[Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 23
    sget-object v3, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/AdcolonyBannerSize;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/AdcolonyBannerSize;
    .locals 1

    .line 7
    const-class v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/AdcolonyBannerSize;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->a:[Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/AdcolonyBannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/AdcolonyBannerSize;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/AdcolonyBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
