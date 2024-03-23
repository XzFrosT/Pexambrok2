.class Lcom/google/appinventor/components/runtime/SmsHistory$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SmsHistory;->SmsInfoReceived(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic a:Lcom/google/appinventor/components/runtime/SmsHistory;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SmsHistory;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->a:Lcom/google/appinventor/components/runtime/SmsHistory;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->a:J

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->c:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SmsProbe"

    const-string v1, "SmsInfoReceived() is called"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->a:Lcom/google/appinventor/components/runtime/SmsHistory;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->a:J

    .line 346
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->b:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->c:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/SmsHistory$3;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "SmsInfoReceived"

    .line 345
    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
