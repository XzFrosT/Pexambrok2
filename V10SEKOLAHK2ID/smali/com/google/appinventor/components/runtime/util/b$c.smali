.class Lcom/google/appinventor/components/runtime/util/b$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/b;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$c;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/b$1;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/b$c;-><init>(Lcom/google/appinventor/components/runtime/util/b;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 246
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$c;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$c;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MapReady"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$c;->a:Lcom/google/appinventor/components/runtime/util/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;Z)Z

    .line 250
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$c;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/util/b$c$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/b$c$1;-><init>(Lcom/google/appinventor/components/runtime/util/b$c;)V

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/b$c;->a:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/b;->a(Lcom/google/appinventor/components/runtime/util/b;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :goto_0
    return-void
.end method
