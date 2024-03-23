.class public final Lcom/google/appinventor/components/runtime/FirebaseCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Core. Required for all Firebase Components"
    iconName = "images/firebaseCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, firebase-components-16.0.0.aar, firebase-components-16.0.0.jar, firebase-common-19.3.0.aar, firebase-common-19.3.0.jar, play-services-base.aar, play-services-base.jar"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/google/firebase/FirebaseApp;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, "Niotron"

    .line 31
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Z

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 4

    .line 63
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Z

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 68
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Lcom/google/firebase/FirebaseApp;

    goto/16 :goto_1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 72
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->b:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->c:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->d:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->e:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    .line 84
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Lcom/google/firebase/FirebaseApp;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Lcom/google/firebase/FirebaseApp;

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "NiotronFCM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data"

    .line 92
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Key from Firebase"
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->c:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Key from Firebase"
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->c:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->a()V

    return-void
.end method

.method public ApplicationId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Application Id from Firebase"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->b:Ljava/lang/String;

    return-object v0
.end method

.method public ApplicationId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Application Id from Firebase"
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->b:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->a()V

    return-void
.end method

.method public DatabaseUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Database URl from Firebase"
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->d:Ljava/lang/String;

    return-object v0
.end method

.method public DatabaseUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Database URl from Firebase"
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->d:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->a()V

    return-void
.end method

.method public GcmSenderId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gcm Sender Id from Firebase"
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->f:Ljava/lang/String;

    return-object v0
.end method

.method public GcmSenderId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gcm Sender Id from Firebase"
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->f:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->a()V

    return-void
.end method

.method public InstanceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Instance Id for Firebase Core"
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Ljava/lang/String;

    return-object v0
.end method

.method public InstanceId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Niotron"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Instance Id for Firebase Core"
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->a()V

    return-void
.end method

.method public ProjectId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Project Id from Firebase"
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->g:Ljava/lang/String;

    return-object v0
.end method

.method public ProjectId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Project Id from Firebase"
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->g:Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->a()V

    return-void
.end method

.method public StorageBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Storage Bucket from Firebase"
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->e:Ljava/lang/String;

    return-object v0
.end method

.method public StorageBucket(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Storage Bucket from Firebase"
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->e:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->a()V

    return-void
.end method

.method public UseJsonFile(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Use google-services json file"
    .end annotation

    .line 102
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Z

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->a()V

    return-void
.end method

.method public getFirebaseAppInstance()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->a()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->a:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method
