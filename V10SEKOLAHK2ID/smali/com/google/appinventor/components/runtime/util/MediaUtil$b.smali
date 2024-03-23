.class final enum Lcom/google/appinventor/components/runtime/util/MediaUtil$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/util/MediaUtil$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

.field private static final synthetic a:[Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

.field public static final enum b:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

.field public static final enum c:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

.field public static final enum d:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

.field public static final enum e:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

.field public static final enum f:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

.field public static final enum g:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 50
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    const-string v1, "ASSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->a:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    const-string v1, "REPL_ASSET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->b:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    const-string v1, "SDCARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->c:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    const-string v1, "FILE_URL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->d:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    const-string v1, "URL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->e:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    const-string v1, "CONTENT_URI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->f:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    const-string v1, "CONTACT_URI"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->g:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    sget-object v9, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->a:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    aput-object v9, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->b:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->c:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->d:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->e:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->f:Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->a:[Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$b;
    .locals 1

    .line 50
    const-class v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/MediaUtil$b;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->a:[Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/MediaUtil$b;

    return-object v0
.end method
