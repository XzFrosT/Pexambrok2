.class Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->a:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method
