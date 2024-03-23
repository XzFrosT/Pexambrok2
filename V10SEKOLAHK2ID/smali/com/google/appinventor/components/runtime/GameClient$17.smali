.class Lcom/google/appinventor/components/runtime/GameClient$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->SendMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->a:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->b:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 932
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->a:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->a:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->b:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/GameClient;->a(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method
