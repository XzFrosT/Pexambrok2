.class public final synthetic Landroidx/core/provider/-$$Lambda$FontProvider$s5vSNk9mJZQ4hwJAC4Of3xvWgHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroidx/core/provider/-$$Lambda$FontProvider$s5vSNk9mJZQ4hwJAC4Of3xvWgHU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/provider/-$$Lambda$FontProvider$s5vSNk9mJZQ4hwJAC4Of3xvWgHU;

    invoke-direct {v0}, Landroidx/core/provider/-$$Lambda$FontProvider$s5vSNk9mJZQ4hwJAC4Of3xvWgHU;-><init>()V

    sput-object v0, Landroidx/core/provider/-$$Lambda$FontProvider$s5vSNk9mJZQ4hwJAC4Of3xvWgHU;->INSTANCE:Landroidx/core/provider/-$$Lambda$FontProvider$s5vSNk9mJZQ4hwJAC4Of3xvWgHU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->lambda$static$0([B[B)I

    move-result p1

    return p1
.end method
