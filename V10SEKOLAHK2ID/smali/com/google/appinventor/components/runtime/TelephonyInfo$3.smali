.class Lcom/google/appinventor/components/runtime/TelephonyInfo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TelephonyInfo;->TelephonyInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/TelephonyInfo;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->a:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Telephony"

    const-string v1, "TelephonyInfoReceived() is called"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->a:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->c:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->d:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->e:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->f:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->g:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->h:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "TelephonyInfoReceived"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
