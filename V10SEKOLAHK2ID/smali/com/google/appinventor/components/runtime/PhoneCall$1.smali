.class Lcom/google/appinventor/components/runtime/PhoneCall$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/PhoneCall;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->a:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->a:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->a(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    return-void
.end method
