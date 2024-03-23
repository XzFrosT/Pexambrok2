.class public final Lcom/google/appinventor/components/runtime/TextBox;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A box for the user to enter text.  The initial or user-entered text value is in the <code>Text</code> property.  If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p><p>The <code>MultiLine</code> property determines if the text can havemore than one line.  For a single line text box, the keyboard will closeautomatically when the user presses the Done key.  To close the keyboard for multiline text boxes, the app should use  the HideKeyboard method or  rely on the user to press the Back key.</p><p>The <code> NumbersOnly</code> property restricts the keyboard to acceptnumeric input only.</p><p>Other properties affect the appearance of the text box (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p><p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p><p>If the text entered by the user should not be displayed, use <code>PasswordTextBox</code> instead.</p>"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "MaterialIcons-Regular.ttf, fontawesome-webfont.ttf,fa-brands-400.ttf, fa-regular-400.ttf, fa-solid-900.ttf"
.end annotation


# instance fields
.field private a:I

.field private a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 116
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->b:I

    .line 106
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->c:I

    .line 107
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->d:I

    .line 108
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->e:I

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBox;->MultiLine(Z)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBox;->ReadOnly(Z)V

    .line 128
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V
    .locals 1

    const-string v0, ""

    .line 132
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->b:I

    .line 106
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->c:I

    .line 107
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->d:I

    .line 108
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->e:I

    return-void
.end method

.method private a()V
    .locals 5

    .line 246
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBox;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->b:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextBox;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/TextBox;->c:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/TextBox;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/TextBox;->d:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/TextBox;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/TextBox;->e:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/TextBox;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public HeihPadding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10,10,10,10"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const-string v0, ","

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 238
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->b:I

    const/4 v0, 0x1

    .line 239
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->d:I

    const/4 v0, 0x2

    .line 240
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->c:I

    const/4 v0, 0x3

    .line 241
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->e:I

    .line 242
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TextBox;->a()V

    return-void
.end method

.method public HideKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard.  Only multiline text boxes need this. Single line text boxes close the keyboard when the users presses the Done key."
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 144
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 145
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public InputType(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "input_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specify the input type of the text box, Possible integer values are\n1 for normal text\n2 for number only\n3 for email address\n4 for password text\n5 for phone number\n6 for date time"
    .end annotation

    .line 215
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 218
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const v0, 0x20001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 220
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v0, 0x3002

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 222
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 224
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    .line 226
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 228
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public MultiLine(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 185
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->b:Z

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    return-void
.end method

.method public MultiLine()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts multiple lines of input, which are entered using the return key.  For single line text boxes there is a Done key instead of a return key, and pressing Done hides the keyboard.  The app should call the HideKeyboard method to hide the keyboard for a mutiline text box."
    .end annotation

    .line 170
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->b:Z

    return v0
.end method

.method public ReadOnly(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 207
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->c:Z

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public ReadOnly()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the %type% is read-only. By default, this is true."
    .end annotation

    .line 194
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->c:Z

    return v0
.end method

.method public ShowKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the keyboard."
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
