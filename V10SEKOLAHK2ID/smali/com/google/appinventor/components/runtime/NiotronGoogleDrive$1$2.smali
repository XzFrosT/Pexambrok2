.class Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$2;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$2;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->a:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->MediaUploaded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
