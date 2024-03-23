.class Lcom/google/appinventor/components/runtime/CloudDB$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/CloudDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private a:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$a;->a:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$a;->a:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValueList()Lorg/json/JSONArray;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$a;->a:Lorg/json/JSONArray;

    return-object v0
.end method
