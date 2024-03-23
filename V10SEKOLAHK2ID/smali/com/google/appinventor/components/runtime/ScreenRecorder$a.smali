.class Lcom/google/appinventor/components/runtime/ScreenRecorder$a;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/ScreenRecorder;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/ScreenRecorder;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$a;->a:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/ScreenRecorder;Lcom/google/appinventor/components/runtime/ScreenRecorder$1;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ScreenRecorder$a;-><init>(Lcom/google/appinventor/components/runtime/ScreenRecorder;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$a;->a:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->a(Lcom/google/appinventor/components/runtime/ScreenRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$a;->a:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->a(Lcom/google/appinventor/components/runtime/ScreenRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$a;->a:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->a(Lcom/google/appinventor/components/runtime/ScreenRecorder;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$a;->a:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->a(Lcom/google/appinventor/components/runtime/ScreenRecorder;)V

    return-void
.end method
