.class Lcom/google/appinventor/components/runtime/SoundRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SoundRecorder;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/SoundRecorder;

.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/google/appinventor/components/runtime/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/SoundRecorder;[Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->b:Lcom/google/appinventor/components/runtime/SoundRecorder;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->a:Lcom/google/appinventor/components/runtime/SoundRecorder;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->b:Lcom/google/appinventor/components/runtime/SoundRecorder;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/SoundRecorder$1$1;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->a:Lcom/google/appinventor/components/runtime/SoundRecorder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->a:[Ljava/lang/String;

    const-string v4, "Start"

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/SoundRecorder$1$1;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    return-void
.end method
