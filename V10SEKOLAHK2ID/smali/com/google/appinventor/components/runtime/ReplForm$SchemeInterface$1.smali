.class Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->eval(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->a:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->a:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->a(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;)V

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->a:Ljava/lang/String;

    const-string v1, "#DONE#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->a:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->a:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->finish()V

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->a:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->a:Lgnu/expr/Language;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 117
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in scheme processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
