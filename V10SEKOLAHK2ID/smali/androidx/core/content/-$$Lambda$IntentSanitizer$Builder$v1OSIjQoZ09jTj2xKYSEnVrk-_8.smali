.class public final synthetic Landroidx/core/content/-$$Lambda$IntentSanitizer$Builder$v1OSIjQoZ09jTj2xKYSEnVrk-_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroidx/core/content/-$$Lambda$IntentSanitizer$Builder$v1OSIjQoZ09jTj2xKYSEnVrk-_8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/content/-$$Lambda$IntentSanitizer$Builder$v1OSIjQoZ09jTj2xKYSEnVrk-_8;

    invoke-direct {v0}, Landroidx/core/content/-$$Lambda$IntentSanitizer$Builder$v1OSIjQoZ09jTj2xKYSEnVrk-_8;-><init>()V

    sput-object v0, Landroidx/core/content/-$$Lambda$IntentSanitizer$Builder$v1OSIjQoZ09jTj2xKYSEnVrk-_8;->INSTANCE:Landroidx/core/content/-$$Lambda$IntentSanitizer$Builder$v1OSIjQoZ09jTj2xKYSEnVrk-_8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Landroidx/core/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/util/Predicate$-CC;->$default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowAnyComponent$10(Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
