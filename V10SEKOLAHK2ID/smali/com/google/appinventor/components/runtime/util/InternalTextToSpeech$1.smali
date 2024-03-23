.class Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;->a:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;->a:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Z)Z

    :cond_0
    return-void
.end method
