.class public Lcom/google/appinventor/components/runtime/ListPickerActivity;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListPickerActivity$a;
    }
.end annotation


# static fields
.field static b:I

.field static c:I


# instance fields
.field a:Landroid/widget/EditText;

.field private a:Landroid/widget/ListView;

.field a:Lcom/google/appinventor/components/runtime/ListPickerActivity$a;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 50
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->styleTitleBar()V

    .line 54
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Ljava/lang/String;

    .line 61
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 62
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "portrait"

    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const-string v4, "landscape"

    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    .line 71
    :cond_2
    :goto_0
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    :cond_3
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Lcom/google/appinventor/components/runtime/ListPicker;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/ListView;

    .line 78
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 81
    sget-object v4, Lcom/google/appinventor/components/runtime/ListPicker;->h:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->b:I

    .line 82
    sget-object v4, Lcom/google/appinventor/components/runtime/ListPicker;->i:Ljava/lang/String;

    const/high16 v6, -0x1000000

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->c:I

    .line 84
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 87
    new-instance v4, Lcom/google/appinventor/components/runtime/ListPickerActivity$a;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/ListPickerActivity$a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Lcom/google/appinventor/components/runtime/ListPickerActivity$a;

    .line 88
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/EditText;

    .line 93
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/EditText;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setWidth(I)V

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/EditText;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/EditText;

    const-string v2, "Search list..."

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundColor(I)V

    if-eqz v1, :cond_4

    const-string/jumbo v0, "true"

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;-><init>(Lcom/google/appinventor/components/runtime/ListPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setContentView(Landroid/view/View;)V

    .line 133
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    const-string p1, "input_method"

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 137
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 138
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 144
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 145
    sget-object p4, Lcom/google/appinventor/components/runtime/ListPicker;->b:Ljava/lang/String;

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    sget-object p1, Lcom/google/appinventor/components/runtime/ListPicker;->c:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 149
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
