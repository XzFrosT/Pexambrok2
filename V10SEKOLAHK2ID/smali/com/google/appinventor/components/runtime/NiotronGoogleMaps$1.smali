.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->FinishedDraggingCircle(IDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

.field final synthetic b:D

.field final synthetic c:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDDD)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->a:I

    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->a:D

    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->b:D

    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a draggable circle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "finished been dragged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->a:I

    .line 630
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "FinishedDraggingCircle"

    .line 629
    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
