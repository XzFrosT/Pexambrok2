.class public Lcom/google/appinventor/components/runtime/BarcodeScanner;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using the Barcode Scanner to read a barcode"
    iconName = "images/barcodeScanner.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|keyboardHidden"
            name = "com.google.zxing.client.android.AppInvCaptureActivity"
            screenOrientation = "landscape"
            stateNotNeeded = "true"
            theme = "@android:style/Theme.NoTitleBar.Fullscreen"
            windowSoftInputMode = "stateAlwaysHidden"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "Barcode.jar,QRGenerator.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.CAMERA"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"

.field private static final b:Ljava/lang/String; = "com.google.zxing.client.android.AppInvCaptureActivity"

.field private static final c:Ljava/lang/String; = "SCAN_RESULT"


# instance fields
.field private a:I

.field private final a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Z

.field private b:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 87
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:Z

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->b:Z

    .line 88
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/BarcodeScanner;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->b:Z

    return p1
.end method


# virtual methods
.method public AfterScan(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterScan"

    .line 159
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DoScan()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Begins a barcode scan, using the camera. When the scan is complete, the AfterScan event will be raised."
    .end annotation

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 110
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->b:Z

    if-nez v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;-><init>(Lcom/google/appinventor/components/runtime/BarcodeScanner;)V

    const-string v2, "android.permission.CAMERA"

    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.zxing.client.android.AppInvCaptureActivity"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:I

    if-nez v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:I

    .line 134
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x5dd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const-string v3, "BarcodeScanner"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text result of the previous scan."
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->d:Ljava/lang/String;

    return-object v0
.end method

.method public UseExternalScanner(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 189
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:Z

    return-void
.end method

.method public UseExternalScanner()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true App Inventor will look for and use an external scanning program such as \"Bar Code Scanner.\""
    .end annotation

    .line 174
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:Z

    return v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    .line 144
    iget v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "SCAN_RESULT"

    .line 145
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->d:Ljava/lang/String;

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->AfterScan(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
