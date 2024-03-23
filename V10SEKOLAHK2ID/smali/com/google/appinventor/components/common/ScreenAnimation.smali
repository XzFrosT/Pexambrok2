.class public final enum Lcom/google/appinventor/components/common/ScreenAnimation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ScreenAnimation;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Default:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum None:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ScreenAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic a:[Lcom/google/appinventor/components/common/ScreenAnimation;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "Default"

    const/4 v2, 0x0

    const-string v3, "default"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "Fade"

    const/4 v3, 0x1

    const-string v4, "fade"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "Zoom"

    const/4 v4, 0x2

    const-string/jumbo v5, "zoom"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "SlideHorizontal"

    const/4 v5, 0x3

    const-string/jumbo v6, "slidehorizontal"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "SlideVertical"

    const/4 v6, 0x4

    const-string/jumbo v7, "slidevertical"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "None"

    const/4 v7, 0x5

    const-string v8, "none"

    invoke-direct {v0, v1, v7, v8}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->None:Lcom/google/appinventor/components/common/ScreenAnimation;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 15
    sget-object v8, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v8, v1, v2

    sget-object v8, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v8, v1, v3

    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v3, v1, v5

    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v3, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->a:[Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->a:Ljava/util/Map;

    .line 36
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenAnimation;->values()[Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 37
    sget-object v4, Lcom/google/appinventor/components/common/ScreenAnimation;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 15
    const-class v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->a:[Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ScreenAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->a:Ljava/lang/String;

    return-object v0
.end method
