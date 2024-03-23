.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->CameraPositionChanged(DDFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic a:F

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

.field final synthetic b:D

.field final synthetic b:F

.field final synthetic c:F


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DDFFF)V
    .locals 0

    .line 1498
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->a:D

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->b:D

    iput p6, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->a:F

    iput p7, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->b:F

    iput p8, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera\'s position has changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->a:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "CameraPositionChanged"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
