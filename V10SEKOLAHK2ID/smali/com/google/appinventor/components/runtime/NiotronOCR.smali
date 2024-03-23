.class public final Lcom/google/appinventor/components/runtime/NiotronOCR;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Detect Texts In Images Without Any Internet Connection"
    iconName = "images/ocr.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "common.aar, play-services-mlkit-text-recognition.aar,vision-common.aar, common.jar, play-services-mlkit-text-recognition.jar, vision-common.jar, play-services-tasks.jar, play-services-tasks.aar, play-services-basement.jar, play-services-basement.aar, play-services-base.aar, play-services-base.jar, browser-1.0.0.jar, browser-1.0.0.aar, play-services-location.jar, play-services-location.aar, concurrent-futures.jar, play-services-stats.aar, play-services-stats.jar, play-services-places-placereport.jar, play-services-places-placereport.aar, play-services-iid.jar, play-services-iid.aar, firebase-datatransport.jar, firebase-datatransport.aar, firebase-encoders.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-iid-interop.jar, firebase-iid-interop.aar, firebase-installations.aar, firebase-installations.jar, firebase-installations-interop.aar, firebase-installations-interop.jar, transport-api.jar, transport-api.aar, transport-backend-cct.jar, transport-backend-cct.aar, transport-runtime.jar, transport-runtime.aar, javax.inject.jar, firebase-components-16.0.0.aar, firebase-components-16.0.0.jar,  firebase-common-19.3.0.aar, firebase-common-19.3.0.jar, play-services-vision.jar, play-services-vision-common.jar, play-services-phenotype.jar, play-services-clearcut.jar, play-services-vision.aar, play-services-vision-common.aar, play-services-phenotype.aar, play-services-clearcut.aar, exifinterface.jar, exifinterface.aar"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private a:Lcom/google/mlkit/vision/text/TextRecognizer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOCR;->a:Landroid/content/Context;

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOCR;->a:Landroid/app/Activity;

    .line 49
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOCR;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/mlkit/common/MlKit;->initialize(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient()Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOCR;->a:Lcom/google/mlkit/vision/text/TextRecognizer;

    return-void
.end method


# virtual methods
.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 113
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotText"

    .line 108
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RecognizeTextInImage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOCR;->a:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/mlkit/vision/common/InputImage;->fromFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOCR;->a:Lcom/google/mlkit/vision/text/TextRecognizer;

    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/text/TextRecognizer;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronOCR$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronOCR$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronOCR;)V

    .line 58
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronOCR$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronOCR$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronOCR;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 73
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronOCR;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public RecognizeTextInImageWithRotation(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 82
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronOCR;->a:Lcom/google/mlkit/vision/text/TextRecognizer;

    invoke-interface {p2, p1}, Lcom/google/mlkit/vision/text/TextRecognizer;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronOCR$4;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronOCR$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronOCR;)V

    .line 84
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronOCR$3;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronOCR$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronOCR;)V

    .line 89
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 99
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 100
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronOCR;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
