.class final Lcom/google/appinventor/components/runtime/EventDispatcher$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->a:Ljava/util/HashMap;

    .line 74
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->a:Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/EventDispatcher$b;)Ljava/util/HashMap;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->a:Ljava/util/HashMap;

    return-object p0
.end method
