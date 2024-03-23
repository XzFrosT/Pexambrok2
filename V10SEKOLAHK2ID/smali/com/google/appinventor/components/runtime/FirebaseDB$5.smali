.class Lcom/google/appinventor/components/runtime/FirebaseDB$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->RemoveFirst(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$5;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$5;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$5;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$5;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirstRemoved(Ljava/lang/Object;)V

    return-void
.end method
