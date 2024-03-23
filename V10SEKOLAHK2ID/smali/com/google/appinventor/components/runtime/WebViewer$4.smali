.class Lcom/google/appinventor/components/runtime/WebViewer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/WebViewer;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->a:Lcom/google/appinventor/components/runtime/WebViewer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 695
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->a:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->a(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z

    .line 696
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->a:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->a(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->a:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->a:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->b:Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
