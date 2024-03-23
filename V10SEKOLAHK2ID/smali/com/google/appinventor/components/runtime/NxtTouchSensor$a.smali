.class final enum Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NxtTouchSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

.field private static final synthetic a:[Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

.field public static final enum b:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

.field public static final enum c:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    new-instance v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    const-string v1, "PRESSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->b:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    new-instance v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    const-string v1, "RELEASED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->c:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    sget-object v5, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->a:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->b:Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->a:[Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;
    .locals 1

    .line 41
    const-class v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->a:[Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;

    return-object v0
.end method
