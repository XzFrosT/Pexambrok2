.class final enum Lcom/google/appinventor/components/runtime/PhoneCall$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/PhoneCall$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

.field private static final synthetic a:[Lcom/google/appinventor/components/runtime/PhoneCall$b;

.field public static final enum b:Lcom/google/appinventor/components/runtime/PhoneCall$b;

.field public static final enum c:Lcom/google/appinventor/components/runtime/PhoneCall$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 287
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$b;

    const-string v1, "INCOMING_WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/PhoneCall$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$b;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    .line 288
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$b;

    const-string v1, "INCOMING_ANSWERED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/PhoneCall$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$b;->b:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    .line 289
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$b;

    const-string v1, "OUTGOING_WAITING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/PhoneCall$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$b;->c:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/PhoneCall$b;

    .line 286
    sget-object v5, Lcom/google/appinventor/components/runtime/PhoneCall$b;->a:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneCall$b;->b:Lcom/google/appinventor/components/runtime/PhoneCall$b;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/appinventor/components/runtime/PhoneCall$b;->a:[Lcom/google/appinventor/components/runtime/PhoneCall$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/PhoneCall$b;
    .locals 1

    .line 286
    const-class v0, Lcom/google/appinventor/components/runtime/PhoneCall$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/PhoneCall$b;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/PhoneCall$b;
    .locals 1

    .line 286
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$b;->a:[Lcom/google/appinventor/components/runtime/PhoneCall$b;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/PhoneCall$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/PhoneCall$b;

    return-object v0
.end method
