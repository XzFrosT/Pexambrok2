.class public final enum Lcom/google/appinventor/components/annotations/PropertyCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/annotations/PropertyCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field private static final synthetic a:[Lcom/google/appinventor/components/annotations/PropertyCategory;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "BEHAVIOR"

    const/4 v2, 0x0

    const-string v3, "Behavior"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "APPEARANCE"

    const/4 v3, 0x1

    const-string v4, "Appearance"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "DEPRECATED"

    const/4 v4, 0x2

    const-string v5, "Deprecated"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "UNSET"

    const/4 v5, 0x3

    const-string v6, "Unspecified"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 13
    sget-object v6, Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/appinventor/components/annotations/PropertyCategory;->DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->a:[Lcom/google/appinventor/components/annotations/PropertyCategory;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    .line 13
    const-class v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->a:[Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/annotations/PropertyCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->a:Ljava/lang/String;

    return-object v0
.end method
