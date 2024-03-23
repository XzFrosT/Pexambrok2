.class public final enum Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum TERRAIN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field private static final synthetic a:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1565
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1570
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    const-string v1, "ROADS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1575
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    const-string v1, "AERIAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1580
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    const-string v1, "TERRAIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->TERRAIN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1560
    sget-object v6, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->a:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1560
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 1

    .line 1560
    const-class v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 1

    .line 1560
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->a:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    return-object v0
.end method
