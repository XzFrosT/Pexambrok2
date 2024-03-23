.class Lcom/google/appinventor/components/runtime/Canvas$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0

    .line 1685
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$1;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 0

    .line 1688
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$1;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Canvas;->b(Lcom/google/appinventor/components/runtime/Canvas;Z)Z

    return-void
.end method
