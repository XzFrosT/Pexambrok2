.class public Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# static fields
.field private static final a:Ljava/lang/String; = "InternalTTS"


# instance fields
.field private a:I

.field private final a:Landroid/app/Activity;

.field private a:Landroid/os/Handler;

.field private a:Landroid/speech/tts/TextToSpeech;

.field private final a:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private volatile a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:I

    const/16 v0, 0x1f4

    .line 48
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->b:I

    const/16 v0, 0x14

    .line 53
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->c:I

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 58
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Landroid/app/Activity;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    const-string v0, "InternalTTS"

    const-string v1, "INTERNAL TTS is reinitializing"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Ljava/lang/String;Ljava/util/Locale;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a(Ljava/lang/String;Ljava/util/Locale;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Locale;I)V
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalTTS speak called, message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalTTS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->c:I

    if-le p3, v0, :cond_0

    const-string v0, "max number of speak retries exceeded: speak will fail"

    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Z

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS initialized after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " retries."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3, p2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 97
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    new-instance p3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;

    invoke-direct {p3, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-virtual {p2, p3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 111
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 112
    iget p3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    const-string/jumbo p1, "speak called and tts.speak result was an error"

    .line 115
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "speak called when TTS not initialized"

    .line 119
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;ILjava/lang/String;Ljava/util/Locale;)V

    iget p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->b:I

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Z

    return p1
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Z

    return v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got onDestroy"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Z

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got onResume"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got onStop"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPitch(F)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    return-void
.end method

.method public setSpeechRate(F)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got speak"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a(Ljava/lang/String;Ljava/util/Locale;I)V

    return-void
.end method
