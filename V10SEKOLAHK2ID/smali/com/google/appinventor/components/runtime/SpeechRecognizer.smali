.class public Lcom/google/appinventor/components/runtime/SpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;
.implements Lcom/google/appinventor/components/runtime/SpeechListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using Voice Recognition to convert from speech to text"
    iconName = "images/speechRecognizer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO",
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field private final a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 79
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Z

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->b:Z

    const-string v1, ""

    .line 71
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->b:Ljava/lang/String;

    .line 80
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V

    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 82
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Ljava/lang/String;

    .line 83
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    .line 84
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->b:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->UseLegacy(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/SpeechRecognizer;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Z

    return p1
.end method


# virtual methods
.method public AfterGettingText(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 189
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "AfterGettingText"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BeforeGettingText()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BeforeGettingText"

    .line 175
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetText()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;

    invoke-direct {v1, p0, p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;-><init>(Lcom/google/appinventor/components/runtime/SpeechRecognizer;Lcom/google/appinventor/components/runtime/SpeechRecognizer;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->BeforeGettingText()V

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->a(Lcom/google/appinventor/components/runtime/SpeechListener;)V

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->start()V

    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->b:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->b:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "android.speech.extra.LANGUAGE"

    if-eqz v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public Stop()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->stop()V

    :cond_0
    return-void
.end method

.method public UseLegacy(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, a separate dialog is used to recognize speech (the default). If false, speech is recognized in the background and partial results are also provided."
    .end annotation

    .line 254
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->b:Z

    .line 255
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->Stop()V

    if-nez p1, :cond_1

    .line 256
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Landroid/content/Intent;

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    goto :goto_1

    .line 257
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Landroid/content/Intent;

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    :goto_1
    return-void
.end method

.method public UseLegacy()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, an app can retain their older behaviour."
    .end annotation

    .line 230
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->b:Z

    return v0
.end method

.method public onClear()V
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->Stop()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    .line 223
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Landroid/content/Intent;

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GetText"

    invoke-virtual {v0, p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onPartialResult(Ljava/lang/String;)V
    .locals 1

    .line 197
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->AfterGettingText(Ljava/lang/String;Z)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 206
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->AfterGettingText(Ljava/lang/String;Z)V

    return-void
.end method
