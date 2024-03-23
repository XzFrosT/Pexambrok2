.class public final Lcom/google/zxing/client/android/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# static fields
.field private static final DEFAULT_COUNTRY:Ljava/lang/String; = "US"

.field private static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en"

.field private static final DEFAULT_TLD:Ljava/lang/String; = "com"

.field private static final GOOGLE_BOOK_SEARCH_COUNTRY_TLD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GOOGLE_COUNTRY_TLD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSLATED_HELP_ASSET_LANGUAGES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "AR"

    const-string v2, "com.ar"

    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "AU"

    const-string v2, "com.au"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "BR"

    const-string v4, "com.br"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "BG"

    const-string v4, "bg"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ca"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cn"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "CZ"

    const-string v5, "cz"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "DK"

    const-string v5, "dk"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "FI"

    const-string v5, "fi"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v5, "fr"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v6, "de"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "GR"

    const-string v7, "gr"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "HU"

    const-string v7, "hu"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "ID"

    const-string v7, "co.id"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "IL"

    const-string v7, "co.il"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v7, "it"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v8, "co.jp"

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v9, "co.kr"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "NL"

    const-string v9, "nl"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v10, "PL"

    const-string v11, "pl"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v10, "PT"

    const-string v11, "pt"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v10, "RU"

    const-string v12, "ru"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v10, "SK"

    const-string v13, "sk"

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v10, "SI"

    const-string v13, "si"

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v10, "ES"

    const-string v13, "es"

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v14, "SE"

    const-string v15, "se"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v14, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    const-string v15, "tw"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v14, "TR"

    const-string v15, "com.tr"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v14, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    const-string v15, "co.uk"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v12

    const-string v12, "com"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sput-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_BOOK_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v13, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object v7, v0, v1

    const/4 v1, 0x5

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v9, v0, v1

    const/16 v1, 0x8

    aput-object v11, v0, v1

    const/16 v1, 0x9

    aput-object v16, v0, v1

    const/16 v1, 0xa

    const-string v2, "zh-rCN"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "zh-rTW"

    aput-object v2, v0, v1

    .line 102
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/LocaleManager;->TRANSLATED_HELP_ASSET_LANGUAGES:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p0, "com"

    return-object p0
.end method

.method public static getBookSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 127
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_BOOK_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/google/zxing/client/android/LocaleManager;->doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryTLD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 111
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/google/zxing/client/android/LocaleManager;->doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProductSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 119
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/google/zxing/client/android/LocaleManager;->doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSystemCountry()Ljava/lang/String;
    .locals 1

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "US"

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getSystemLanguage()Ljava/lang/String;
    .locals 2

    .line 146
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "en"

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-r"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/zxing/client/android/LocaleManager;->getSystemCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getTranslatedAssetLanguage()Ljava/lang/String;
    .locals 1

    .line 159
    invoke-static {}, Lcom/google/zxing/client/android/LocaleManager;->getSystemLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBookSearchUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://google.com/books"

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://books.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
