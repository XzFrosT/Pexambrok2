.class Lcom/google/appinventor/components/runtime/GameClient$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->GetMessages(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$8;->a:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$8;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/appinventor/components/runtime/GameClient$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$8;->a:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$8;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/GameClient$8;->a:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->a(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V

    return-void
.end method
