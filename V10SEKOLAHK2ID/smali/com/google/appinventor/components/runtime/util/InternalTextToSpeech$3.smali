.class Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a(Ljava/lang/String;Ljava/util/Locale;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;ILjava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    iput p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delaying call to speak.  Retries is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Message is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalTTS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:Ljava/util/Locale;

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->a:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Ljava/lang/String;Ljava/util/Locale;I)V

    return-void
.end method
