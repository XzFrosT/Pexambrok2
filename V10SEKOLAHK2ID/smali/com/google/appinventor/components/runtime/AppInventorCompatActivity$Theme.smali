.class public final enum Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MATERIAL:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field public static final enum MATERIAL_DARK:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field public static final enum PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field private static final synthetic a:[Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    const-string v1, "PACKAGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 43
    new-instance v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    const-string v1, "MATERIAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->MATERIAL:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 44
    new-instance v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    const-string v1, "MATERIAL_DARK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->MATERIAL_DARK:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 41
    sget-object v5, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->MATERIAL:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->a:[Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;
    .locals 1

    .line 41
    const-class v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->a:[Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    return-object v0
.end method
