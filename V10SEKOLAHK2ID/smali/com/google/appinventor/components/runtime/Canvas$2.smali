.class Lcom/google/appinventor/components/runtime/Canvas$2;
.super Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Canvas;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;ZZLcom/google/appinventor/components/runtime/util/Synchronizer;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 8

    move-object v7, p0

    move-object v0, p1

    .line 1695
    iput-object v0, v7, Lcom/google/appinventor/components/runtime/Canvas$2;->a:Lcom/google/appinventor/components/runtime/Canvas;

    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/google/appinventor/components/runtime/Canvas$2;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    move-object/from16 v0, p9

    iput-object v0, v7, Lcom/google/appinventor/components/runtime/Canvas$2;->a:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;ZZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic process(Ljava/io/Closeable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1695
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas$2;->process(Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method protected process(Ljava/io/OutputStream;)Z
    .locals 4

    .line 1698
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->b(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->a(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->a:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->a(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$a;->b(Lcom/google/appinventor/components/runtime/Canvas$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1699
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->a:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
