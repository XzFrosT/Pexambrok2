.class public final synthetic Landroidx/core/util/Predicate$-CC;
.super Ljava/lang/Object;
.source "Predicate.java"


# direct methods
.method public static $default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v0, Landroidx/core/util/-$$Lambda$Predicate$S-uj_bzEq5DgwoqQ9DhChTgKYas;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/-$$Lambda$Predicate$S-uj_bzEq5DgwoqQ9DhChTgKYas;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static $default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Landroidx/core/util/-$$Lambda$Predicate$fPqwPsdP1Us6Aox0nfuGzfrwEB0;

    invoke-direct {v0, p0}, Landroidx/core/util/-$$Lambda$Predicate$fPqwPsdP1Us6Aox0nfuGzfrwEB0;-><init>(Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static $default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    new-instance v0, Landroidx/core/util/-$$Lambda$Predicate$6hECMlGpWhEc_VZpF2FUmwezKbk;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/-$$Lambda$Predicate$6hECMlGpWhEc_VZpF2FUmwezKbk;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static isEqual(Ljava/lang/Object;)Landroidx/core/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 110
    sget-object p0, Landroidx/core/util/-$$Lambda$Predicate$6hSLKHEwNvqBXO3xg7MD4cmeh68;->INSTANCE:Landroidx/core/util/-$$Lambda$Predicate$6hSLKHEwNvqBXO3xg7MD4cmeh68;

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Landroidx/core/util/-$$Lambda$Predicate$IgLLcBqpFAN7N_J5_vI27NZwQRo;

    invoke-direct {v0, p0}, Landroidx/core/util/-$$Lambda$Predicate$IgLLcBqpFAN7N_J5_vI27NZwQRo;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static synthetic lambda$and$0(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    .line 60
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$isEqual$3(Ljava/lang/Object;)Z
    .locals 0

    .line 110
    invoke-static {p0}, L$r8$backportedMethods$utility$Objects$1$isNull;->isNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$isEqual$4(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$negate$1(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 0
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    .line 72
    invoke-interface {p0, p1}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic lambda$or$2(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    .line 94
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static not(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-interface {p0}, Landroidx/core/util/Predicate;->negate()Landroidx/core/util/Predicate;

    move-result-object p0

    return-object p0
.end method
