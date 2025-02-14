.class public final Lcom/google/appinventor/components/runtime/DevsTool;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Developers tools component contains all useful blocks usually used by a developer in app development."
    iconName = "images/devstool.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Z

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Landroid/content/Context;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public CopyToClipboard(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Copy text to clipboard"
    .end annotation

    .line 163
    :try_start_0

    # hehe
    goto :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Copied text"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 164
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Z

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Landroid/content/Context;

    const-string v0, "Copied to clipboard"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public CustomToast(Ljava/lang/String;IIIIZZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show custom toast message"
    .end annotation

    .line 137
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p5

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz p7, :cond_0

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Landroid/content/Context;

    const/4 p5, 0x1

    invoke-static {p1, v0, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_0
    const/16 p5, 0x11

    .line 147
    invoke-virtual {p1, p5, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 148
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p6, :cond_1

    .line 151
    new-instance p2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p2, p4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p3

    invoke-virtual {v0, p2, v1, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    :goto_1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public GetBetweenText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return file extension from file path or file name"
    .end annotation

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return file extension from file path or file name"
    .end annotation

    const-string v0, ""

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "/"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 84
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public GetFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return file name from file path"
    .end annotation

    const-string v0, ""

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "/"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 73
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    :cond_0
    return-object v0
.end method

.method public IndexInString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return file extension from file path or file name"
    .end annotation

    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public IsMatching(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retune true if the given test have the given pattern. else it\'ll return false."
    .end annotation

    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public IsStrongPassword(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Must contain at leat 1 lower case letter and 1 upper case letter and 1 number, at least 8 charactors. Specially Designed to check if the password is strong or not"
    .end annotation

    const-string v0, "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public IsValidateEmail(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It\'ll validate if the given email is valid or not. I.e the given email is in proper email format or not like support@niotron.com"
    .end annotation

    const-string v0, "@"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public IsValidateNumber(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It\'ll validate if the given number us valid or not. Like it contains only numbers with + or - sign."
    .end annotation

    const-string v0, "^(\\-|\\+)?\\d+(\\.\\d+)?$"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public RandomAlphanumeric()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a random alphanumeric string."
    .end annotation

    .line 224
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public RandomNumber(I)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generate a random number of given length"
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    :goto_0
    if-ge v0, p1, :cond_1

    .line 202
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v2

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0123456789"

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public RandomString(I)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generate a random string of given length"
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    :goto_0
    if-ge v0, p1, :cond_1

    .line 215
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v2

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ijklABvxyzGHIJKLMstuvNOPWXYZabcdefghmnoQRSTUVpqrxyz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public SelectText(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return file extension from file path or file name"
    .end annotation

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_3

    if-gez p3, :cond_1

    const/4 p3, 0x0

    :cond_1
    add-int/2addr p3, p3

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p3, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    .line 112
    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public SetTransparency(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set transparent value between 1 to 10"
    .end annotation

    const/16 v0, 0x9

    if-le p2, v0, :cond_0

    const-string p2, "1f"

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "f"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 245
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public Short(Ljava/util/List;Z)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sort a list of numeric/alphabetical values in ascending order, or set inAscending to false to short list in descending order."
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez p2, :cond_0

    .line 234
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    return-object v0
.end method

.method public ShowToast(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show Toast Message. Set short to true, to show toast of short length else set false for long toats."
    .end annotation

    if-eqz p2, :cond_0

    .line 128
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 132
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public ShowToast(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Show toast message, if true"
    .end annotation

    .line 58
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Z

    return-void
.end method

.method public isShowToastEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if \'Show Toast\' is enabled."
    .end annotation

    .line 64
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/DevsTool;->a:Z

    return v0
.end method
