.class Lcom/google/appinventor/components/runtime/Sprite$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Sprite;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Lcom/google/appinventor/components/runtime/Sprite;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sprite$1;->b:Lcom/google/appinventor/components/runtime/Sprite;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite$1;->a:Lcom/google/appinventor/components/runtime/Sprite;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Sprite$1;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Sprite$1;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite$1;->a:Lcom/google/appinventor/components/runtime/Sprite;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite$1;->a:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
