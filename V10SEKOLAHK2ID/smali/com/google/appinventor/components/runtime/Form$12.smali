.class Lcom/google/appinventor/components/runtime/Form$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 927
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->a(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->a(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->a(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->SetFont()V

    .line 930
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initialize"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 931
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Fixed"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Responsive"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 936
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    .line 939
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->a(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 940
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;->onInitialize()V

    goto :goto_1

    .line 942
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_3

    .line 943
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->d()V

    goto :goto_2

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    return-void
.end method
