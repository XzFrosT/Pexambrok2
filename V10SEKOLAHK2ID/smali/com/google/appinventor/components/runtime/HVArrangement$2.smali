.class Lcom/google/appinventor/components/runtime/HVArrangement$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/HVArrangement;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field final synthetic a:Lcom/google/appinventor/components/runtime/HVArrangement;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->a:Lcom/google/appinventor/components/runtime/HVArrangement;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->a:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iput p3, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "HVArrangement"

    const-string v1, "(HVArrangement)Height not stable yet... trying again"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->a:Lcom/google/appinventor/components/runtime/HVArrangement;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->a:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/HVArrangement;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method
