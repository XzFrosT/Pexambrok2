.class Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB$4;->onSuccess(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

.field final synthetic a:Ljava/lang/Object;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->a:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->a:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->a:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/TinyWebDB;->GotValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
