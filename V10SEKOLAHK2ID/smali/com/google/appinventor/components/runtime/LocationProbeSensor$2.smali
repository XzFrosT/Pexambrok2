.class Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationProbeSensor;->LocationInfoReceived(JDDFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic a:F

.field final synthetic a:J

.field final synthetic a:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationProbeSensor;JDDFLjava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:J

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:D

    iput-wide p6, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->b:D

    iput p8, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:F

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "LocationProbeSensor"

    const-string v1, "LocationInfoReceived() is called"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:J

    .line 135
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:F

    .line 136
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->a:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "LocationInfoReceived"

    .line 134
    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
