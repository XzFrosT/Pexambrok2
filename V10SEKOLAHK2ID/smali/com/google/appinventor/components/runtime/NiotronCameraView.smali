.class public final Lcom/google/appinventor/components/runtime/NiotronCameraView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Niotron Camera View displays a preview of the camera with frame data."
    iconName = "images/niotronCameraView.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "cameraviewplus-0.9.5.aar, cameraviewplus-0.9.5.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.CAMERA"
.end annotation


# instance fields
.field private a:I

.field private a:J

.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/FrameLayout;

.field private a:Lcom/google/android/cameraview/CameraView;

.field private a:Z

.field private b:I

.field private b:Z

.field private c:I

.field public savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 54
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Z

    .line 39
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:Z

    const/4 v1, 0x3

    .line 40
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:I

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:I

    const/16 v0, 0x21

    .line 43
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->c:I

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:J

    const-string v0, "/storage/emulated/0/image.jpg"

    .line 46
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->savePath:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Landroid/app/Activity;

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Landroid/widget/FrameLayout;

    .line 59
    new-instance v0, Lcom/google/android/cameraview/CameraView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/cameraview/CameraView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    .line 61
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/CameraView;->setAutoFocus(Z)V

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/CameraView;->setZoomEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/CameraView;->setFlash(I)V

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/CameraView;->setFacing(I)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronCameraView$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronCameraView$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronCameraView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/CameraView;->setOnPictureTakenListener(Lcom/google/android/cameraview/CameraViewImpl$OnPictureTakenListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronCameraView$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronCameraView$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronCameraView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/CameraView;->setOnCameraErrorListener(Lcom/google/android/cameraview/CameraViewImpl$OnCameraErrorListener;)V

    .line 101
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronCameraView;)Landroid/app/Activity;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public AutoFocusEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Auto focus enabled"
    .end annotation

    .line 129
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Z

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/CameraView;->setAutoFocus(Z)V

    :cond_0
    return-void
.end method

.method public AutoFocusEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Auto focus enabled"
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Z

    return v0
.end method

.method public CameraFacing()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Camera facing"
    .end annotation

    .line 155
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Front"

    return-object v0

    :cond_0
    const-string v0, "Back"

    return-object v0
.end method

.method public CameraFacing(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Front"
        editorArgs = {
            "Front",
            "Back"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Camera facing"
    .end annotation

    const-string v0, "Front"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 144
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 146
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:I

    .line 148
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    if-eqz p1, :cond_1

    .line 149
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/cameraview/CameraView;->setFacing(I)V

    :cond_1
    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error has Occurred"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 259
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FlashMode()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the flash mode"
    .end annotation

    .line 184
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Off"

    return-object v0

    :cond_0
    const-string v0, "RedEye"

    return-object v0

    :cond_1
    const-string v0, "Auto"

    return-object v0

    :cond_2
    const-string v0, "Torch"

    return-object v0

    :cond_3
    const-string v0, "On"

    return-object v0
.end method

.method public FlashMode(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Auto"
        editorArgs = {
            "Auto",
            "On",
            "Off",
            "RedEye",
            "Torch"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the flash mode"
    .end annotation

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6e54d000

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9ff

    if-eq v0, v1, :cond_2

    const v1, 0x1f51cf

    if-eq v0, v1, :cond_1

    const v1, 0x4d3e3dc

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "Auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "On"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "RedEye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_8

    goto :goto_2

    .line 167
    :cond_5
    iput v3, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:I

    .line 169
    :cond_6
    iput v5, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:I

    :cond_7
    const/4 p1, 0x4

    .line 171
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:I

    .line 173
    :cond_8
    iput v4, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:I

    .line 175
    :goto_2
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:I

    .line 177
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    if-eqz p1, :cond_9

    .line 178
    invoke-virtual {p1, v2}, Lcom/google/android/cameraview/CameraView;->setFlash(I)V

    :cond_9
    return-void
.end method

.method public FrameRate(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the frame rate"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x3e8

    .line 202
    div-int/2addr v0, p1

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->c:I

    return-void
.end method

.method public OnFrameData(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "FrameData"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnFrameData"

    .line 254
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PictureTaken(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "PictureTaken"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PictureTaken"

    .line 248
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SetFrameDataToImage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the Frame Data into a Image Component"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public StartPreview()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stats Getting a Live Preview from the Camera"
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraView;->start()V

    return-void
.end method

.method public StopLivePreview()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop live preview"
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraView;->stop()V

    :cond_0
    return-void
.end method

.method public TakePicture(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take picture"
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->savePath:Ljava/lang/String;

    .line 220
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/google/android/cameraview/CameraView;->takePicture()V

    return-void
.end method

.method public ZoomEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Zoom enabled"
    .end annotation

    .line 115
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:Z

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Lcom/google/android/cameraview/CameraView;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/CameraView;->setZoomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public ZoomEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "zoom enabled"
    .end annotation

    .line 123
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->b:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method
