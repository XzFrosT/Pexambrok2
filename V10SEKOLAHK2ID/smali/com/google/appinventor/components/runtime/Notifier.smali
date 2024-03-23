.class public final Lcom/google/appinventor/components/runtime/Notifier;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Notifier component displays alert dialogs, messages, and temporary alerts, and creates Android log entries through the following methods: <ul><li> ShowMessageDialog: displays a message which the user must dismiss by pressing a button.</li><li> ShowChooseDialog: displays a message two buttons to let the user choose one of two responses, for example, yes or no, after which the AfterChoosing event is raised.</li><li> ShowTextDialog: lets the user enter text in response to the message, after which the AfterTextInput event is raised. <li> ShowPasswordDialog: lets the user enter password in response to the message, after which the AfterTextInput event is raised. <li> ShowAlert: displays a temporary  alert that goes away by itself after a short time.</li><li> ShowProgressDialog: displays an alert with a loading spinner that cannot be dismissed by the user. It can only be dismissed by using the DismissProgressDialog block.</li><li> DismissProgressDialog: Dismisses the progress dialog displayed by ShowProgressDialog.</li><li> LogError: logs an error message to the Android log. </li><li> LogInfo: logs an info message to the Android log.</li><li> LogWarning: logs a warning message to the Android log.</li><li>The messages in the dialogs (but not the alert) can be formatted using the following HTML tags:&lt;b&gt;, &lt;big&gt;, &lt;blockquote&gt;, &lt;br&gt;, &lt;cite&gt;, &lt;dfn&gt;, &lt;div&gt;, &lt;em&gt;, &lt;small&gt;, &lt;strong&gt;, &lt;sub&gt;, &lt;sup&gt;, &lt;tt&gt;. &lt;u&gt;</li><li>You can also use the font tag to specify color, for example, &lt;font color=\"blue\"&gt;.  Some of the available color names are aqua, black, blue, fuchsia, green, grey, lime, maroon, navy, olive, purple, red, silver, teal, white, and yellow</li></ul>"
    iconName = "images/notifier.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static a:Landroid/app/AlertDialog; = null

.field private static final a:Ljava/lang/String; = "Notifier"


# instance fields
.field private a:I

.field private final a:Landroid/app/Activity;

.field private a:Landroid/app/Dialog;

.field private a:Landroid/app/ProgressDialog;

.field private final a:Landroid/os/Handler;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 104
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 90
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:I

    const v0, -0xbbbbbc

    .line 93
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->b:I

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->c:I

    .line 105
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    .line 106
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Notifier;)Landroid/app/Activity;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1

    .line 195
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Notifier;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 372
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Notifier;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 375
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_0

    const/16 p2, 0x81

    .line 377
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 379
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 381
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 p2, -0x1

    .line 382
    new-instance p4, Lcom/google/appinventor/components/runtime/Notifier$9;

    invoke-direct {p4, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$9;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;)V

    const-string v1, "OK"

    invoke-virtual {v0, p2, v1, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p3, :cond_1

    .line 392
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x2

    .line 393
    new-instance p4, Lcom/google/appinventor/components/runtime/Notifier$10;

    invoke-direct {p4, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier$10;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p2, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 404
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "One button alert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 171
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 173
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 174
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Notifier;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 175
    new-instance p1, Lcom/google/appinventor/components/runtime/Notifier$1;

    invoke-direct {p1, p4}, Lcom/google/appinventor/components/runtime/Notifier$1;-><init>(Ljava/lang/Runnable;)V

    const/4 p2, -0x3

    invoke-virtual {p0, p2, p3, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowChooseDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/AlertDialog;

    .line 244
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    sget-object p2, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 247
    sget-object p2, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/AlertDialog;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Notifier;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 253
    sget-object p1, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/AlertDialog;

    new-instance p2, Lcom/google/appinventor/components/runtime/Notifier$6;

    invoke-direct {p2, p6}, Lcom/google/appinventor/components/runtime/Notifier$6;-><init>(Ljava/lang/Runnable;)V

    const/4 p6, -0x1

    invoke-virtual {p1, p6, p3, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 259
    sget-object p1, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/AlertDialog;

    new-instance p2, Lcom/google/appinventor/components/runtime/Notifier$7;

    invoke-direct {p2, p7}, Lcom/google/appinventor/components/runtime/Notifier$7;-><init>(Ljava/lang/Runnable;)V

    const/4 p3, -0x3

    invoke-virtual {p1, p3, p4, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p5, :cond_0

    const/high16 p1, 0x1040000

    .line 270
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 271
    sget-object p1, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/AlertDialog;

    const/4 p2, -0x2

    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$8;

    invoke-direct {p3, p8}, Lcom/google/appinventor/components/runtime/Notifier$8;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, p0, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 278
    :cond_0
    sget-object p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public AddToolTip(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets tooltip for components"
    .end annotation

    .line 618
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 619
    check-cast p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 620
    check-cast p2, Ljava/lang/String;

    .line 621
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 622
    invoke-static {p1, p2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 623
    :cond_0
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v2, "Invalid Input"

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_3

    .line 624
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 625
    check-cast p2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v0, 0x0

    .line 626
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 627
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    if-eqz v3, :cond_1

    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 628
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 629
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 630
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 631
    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-static {v3, v4}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Pass a valid list of View with corresponding Texts"

    invoke-direct {p1, p2, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    .line 638
    :cond_3
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "The \"view\" parameter should be either component/layout and \"text\" should be a String"

    invoke-direct {p1, p2, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public AfterChoosing(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event after the user has made a selection for ShowChooseDialog."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterChoosing"

    .line 296
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AfterTextInput(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after the user has responded to ShowTextDialog."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterTextInput"

    .line 424
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color for alerts (not dialogs)."
    .end annotation

    .line 489
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->b:I

    return-void
.end method

.method public ChoosingCanceled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the user canceled ShowChooseDialog."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ChoosingCanceled"

    .line 306
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CreateCustomDialog(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a custom dialog from a layout or cmponent"
    .end annotation

    .line 558
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 561
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 562
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 563
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 564
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public DismissChooseDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss the choose dialog"
    .end annotation

    .line 283
    sget-object v0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public DismissCustomDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dissmissed the custom dialog"
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public DismissProgressDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss a previously displayed ProgressDialog box"
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public HideKeyboard(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public LogError(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an error message to the Android system log. See the Google Android documentation for how to access the log."
    .end annotation

    const-string v0, "Notifier"

    .line 586
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public LogInfo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an information message to the Android log."
    .end annotation

    const-string v0, "Notifier"

    .line 608
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public LogWarning(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes a warning message to the Android log. See the Google Android documentation for how to access the log."
    .end annotation

    const-string v0, "Notifier"

    .line 598
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public NotifierLength()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the length of time that the alert is shown -- either \"short\" or \"long\"."
    .end annotation

    .line 477
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:I

    return v0
.end method

.method public NotifierLength(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "toast_length"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 467
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:I

    return-void
.end method

.method public ShowAlert(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$2;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ShowChooseDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with two buttons, from which the user can choose.  If cancelable is true there will be an additional CANCEL button. Pressing a button will raise the AfterChoosing event.  The \"choice\" parameter to AfterChoosing will be the text on the button that was pressed, or \"Cancel\" if the  CANCEL button was pressed."
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    new-instance v6, Lcom/google/appinventor/components/runtime/Notifier$3;

    invoke-direct {v6, p0, p3}, Lcom/google/appinventor/components/runtime/Notifier$3;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    new-instance v7, Lcom/google/appinventor/components/runtime/Notifier$4;

    invoke-direct {v7, p0, p4}, Lcom/google/appinventor/components/runtime/Notifier$4;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    new-instance v8, Lcom/google/appinventor/components/runtime/Notifier$5;

    invoke-direct {v8, p0}, Lcom/google/appinventor/components/runtime/Notifier$5;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ShowCustomDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the custom dialog"
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShowPasswordDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box where the user can enter password (input is masked), after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering password will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the entered password, or \"Cancel\" if CANCEL button was pressed."
    .end annotation

    const/4 v0, 0x1

    .line 351
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Notifier;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public ShowProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with an optional title and message (use empty strings if they are not wanted). This dialog box contains a spinning artifact to indicate that the program is working. It cannot be canceled by the user but must be dismissed by the App Inventor Program by using the DismissProgressDialog block."
    .end annotation

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShowTextDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box where the user can enter text, after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering text will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the text that was entered, or \"Cancel\" if the CANCEL button was pressed."
    .end annotation

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Notifier;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the text color for alerts (not dialogs)."
    .end annotation

    .line 501
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->c:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 513
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->c:I

    return-void
.end method

.method public TextInputCanceled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the user canceled ShowTextDialog."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TextInputCanceled"

    .line 437
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public progressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Notifier;->DismissProgressDialog()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/Activity;

    invoke-static {v0, p2, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->a:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    .line 151
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method
