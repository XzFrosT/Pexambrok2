.class final enum Lcom/google/zxing/client/android/IntentSource;
.super Ljava/lang/Enum;
.source "IntentSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/client/android/IntentSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/client/android/IntentSource;

.field public static final enum NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

.field public static final enum NONE:Lcom/google/zxing/client/android/IntentSource;

.field public static final enum PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

.field public static final enum ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/google/zxing/client/android/IntentSource;

    const-string v1, "NATIVE_APP_INTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    .line 22
    new-instance v0, Lcom/google/zxing/client/android/IntentSource;

    const-string v1, "PRODUCT_SEARCH_LINK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/client/android/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    .line 23
    new-instance v0, Lcom/google/zxing/client/android/IntentSource;

    const-string v1, "ZXING_LINK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/client/android/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    .line 24
    new-instance v0, Lcom/google/zxing/client/android/IntentSource;

    const-string v1, "NONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/client/android/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/client/android/IntentSource;

    .line 19
    sget-object v6, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/zxing/client/android/IntentSource;->$VALUES:[Lcom/google/zxing/client/android/IntentSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/android/IntentSource;
    .locals 1

    .line 19
    const-class v0, Lcom/google/zxing/client/android/IntentSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/client/android/IntentSource;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/client/android/IntentSource;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/zxing/client/android/IntentSource;->$VALUES:[Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v0}, [Lcom/google/zxing/client/android/IntentSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/android/IntentSource;

    return-object v0
.end method
