.class public final synthetic Landroidx/core/content/-$$Lambda$IntentSanitizer$GksAsMOoL67zTXp3OwgiS2hVtWU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroidx/core/content/-$$Lambda$IntentSanitizer$GksAsMOoL67zTXp3OwgiS2hVtWU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/content/-$$Lambda$IntentSanitizer$GksAsMOoL67zTXp3OwgiS2hVtWU;

    invoke-direct {v0}, Landroidx/core/content/-$$Lambda$IntentSanitizer$GksAsMOoL67zTXp3OwgiS2hVtWU;-><init>()V

    sput-object v0, Landroidx/core/content/-$$Lambda$IntentSanitizer$GksAsMOoL67zTXp3OwgiS2hVtWU;->INSTANCE:Landroidx/core/content/-$$Lambda$IntentSanitizer$GksAsMOoL67zTXp3OwgiS2hVtWU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer;->lambda$sanitizeByFiltering$0(Ljava/lang/String;)V

    return-void
.end method
