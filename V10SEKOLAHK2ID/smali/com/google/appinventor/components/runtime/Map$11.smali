.class Lcom/google/appinventor/components/runtime/Map$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->onZoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Map;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$11;->a:Lcom/google/appinventor/components/runtime/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map$11;->a:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->ZoomChange()V

    return-void
.end method
