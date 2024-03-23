.class Lcom/google/appinventor/components/runtime/Map$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->onSingleTap(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic a:Lcom/google/appinventor/components/runtime/Map;

.field final synthetic b:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;DD)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$12;->a:Lcom/google/appinventor/components/runtime/Map;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/Map$12;->a:D

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/Map$12;->b:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 751
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map$12;->a:Lcom/google/appinventor/components/runtime/Map;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Map$12;->a:D

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Map$12;->b:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Map;->TapAtPoint(DD)V

    return-void
.end method
