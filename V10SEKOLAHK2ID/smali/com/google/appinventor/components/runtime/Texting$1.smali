.class Lcom/google/appinventor/components/runtime/Texting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Texting;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1;->b:Lcom/google/appinventor/components/runtime/Texting;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$1;->a:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Texting$1;->a:Lcom/google/appinventor/components/runtime/Texting;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Texting$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1046
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$1;->a:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$1$1;-><init>(Lcom/google/appinventor/components/runtime/Texting$1;)V

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method
