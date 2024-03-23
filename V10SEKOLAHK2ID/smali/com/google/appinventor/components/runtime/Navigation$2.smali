.class Lcom/google/appinventor/components/runtime/Navigation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Navigation;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic a:Lcom/google/appinventor/components/runtime/Navigation;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic b:D

.field final synthetic b:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->a:Lcom/google/appinventor/components/runtime/Navigation;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->a:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->b:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->a:D

    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->b:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->a:Lcom/google/appinventor/components/runtime/Navigation;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->a:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Navigation;->a(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 381
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->a:Lcom/google/appinventor/components/runtime/Navigation;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->b:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->a:D

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->b:D

    invoke-virtual/range {v2 .. v8}, Lcom/google/appinventor/components/runtime/Navigation;->GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    return-void
.end method
