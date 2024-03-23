.class public Lcom/google/appinventor/components/runtime/util/FroyoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abandonFocus(Landroid/media/AudioManager;Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public static focusRequestGranted(Landroid/media/AudioManager;Ljava/lang/Object;)Z
    .locals 2

    .line 101
    check-cast p1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getRotation(Landroid/view/Display;)I
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public static getWebViewClient(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)Landroid/webkit/WebViewClient;
    .locals 1

    .line 125
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;-><init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V

    return-object v0
.end method

.method public static setAudioFocusChangeListener(Lcom/google/appinventor/components/runtime/Player;)Ljava/lang/Object;
    .locals 1

    .line 56
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;-><init>(Lcom/google/appinventor/components/runtime/Player;)V

    return-object v0
.end method

.method public static setAudioManager(Landroid/app/Activity;)Landroid/media/AudioManager;
    .locals 1

    const-string v0, "audio"

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method
