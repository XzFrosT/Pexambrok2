.class final Lcom/google/appinventor/components/runtime/util/MediaUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/Synchronizer;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->a:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 392
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
