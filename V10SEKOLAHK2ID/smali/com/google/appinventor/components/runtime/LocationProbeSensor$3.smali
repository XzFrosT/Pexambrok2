.class Lcom/google/appinventor/components/runtime/LocationProbeSensor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationProbeSensor;->LocationUpdateComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/LocationProbeSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationProbeSensor;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$3;->a:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "LocationProbeSensor"

    const-string v1, "LocationUpdateComplete() is called"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$3;->a:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocationUpdateComplete"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
