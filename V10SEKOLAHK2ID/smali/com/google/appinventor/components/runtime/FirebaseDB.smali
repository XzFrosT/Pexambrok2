.class public Lcom/google/appinventor/components/runtime/FirebaseDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xa
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that communicates with Firebase to store and retrieve information."
    designerHelpDescription = "Non-visible component that communicates with a Firebase to store and retrieve information."
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FirebaseDB$b;,
        Lcom/google/appinventor/components/runtime/FirebaseDB$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Firebase"

.field private static b:Z = false

.field private static c:Z = false


# instance fields
.field private final a:Landroid/app/Activity;

.field private a:Landroid/os/Handler;

.field private a:Lcom/firebase/client/ChildEventListener;

.field private a:Lcom/firebase/client/Firebase$AuthStateListener;

.field private a:Lcom/firebase/client/Firebase;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 114
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Z

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Landroid/os/Handler;

    .line 120
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Landroid/app/Activity;

    .line 121
    invoke-static {p1}, Lcom/firebase/client/Firebase;->setAndroidContext(Landroid/content/Context;)V

    const-string p1, ""

    .line 123
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->d:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->e:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->f:Ljava/lang/String;

    .line 127
    new-instance p1, Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/ChildEventListener;

    .line 183
    new-instance p1, Lcom/google/appinventor/components/runtime/FirebaseDB$2;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase$AuthStateListener;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FirebaseDB;)Lcom/firebase/client/Firebase;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FirebaseDB;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->f:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 383
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_1

    .line 388
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->removeEventListener(Lcom/firebase/client/ChildEventListener;)V

    .line 389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->removeAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    .line 393
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->b()V

    return-void
.end method

.method private a(Lcom/google/appinventor/components/runtime/FirebaseDB$b;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V
    .locals 2

    .line 770
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$b;->a()Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    move-result-object v0

    .line 771
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/google/appinventor/components/runtime/FirebaseDB$8;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$b;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Lcom/firebase/client/Firebase;->runTransaction(Lcom/firebase/client/Transaction$Handler;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 566
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Landroid/app/Activity;

    const-string v1, "The version of Android on this device is too old to use Firebase."

    const-string v2, "Android Too Old"

    const-string v3, "OK"

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 571
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Z

    if-eqz v0, :cond_1

    .line 572
    new-instance v0, Lcom/firebase/client/Firebase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "developers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    goto :goto_0

    .line 574
    :cond_1
    new-instance v0, Lcom/firebase/client/Firebase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    .line 577
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addChildEventListener(Lcom/firebase/client/ChildEventListener;)Lcom/firebase/client/ChildEventListener;

    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)Lcom/firebase/client/Firebase$AuthStateListener;

    return-void
.end method


# virtual methods
.method public AppendValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost."
    .end annotation

    .line 729
    new-instance v5, Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/google/appinventor/components/runtime/FirebaseDB$a;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;)V

    .line 730
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object p1

    .line 731
    new-instance v8, Lcom/google/appinventor/components/runtime/FirebaseDB$7;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, v5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/FirebaseDB$7;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Ljava/lang/Object;)V

    .line 766
    invoke-direct {p0, v8, p1, v7}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a(Lcom/google/appinventor/components/runtime/FirebaseDB$b;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the tag from Firebase"
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/client/Firebase;->removeValue()V

    return-void
.end method

.method public DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 536
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 537
    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Value failed to convert from JSON."

    const-string v0, "JSON Retrieval Error."

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string p1, "DataChanged"

    .line 544
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DefaultURL(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 624
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->c:Ljava/lang/String;

    .line 625
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Z

    if-eqz v0, :cond_0

    .line 626
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Ljava/lang/String;

    .line 627
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a()V

    :cond_0
    return-void
.end method

.method public DeveloperBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->d:Ljava/lang/String;

    return-object v0
.end method

.method public DeveloperBucket(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->d:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a()V

    return-void
.end method

.method public FirebaseError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "Firebase"

    .line 555
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FirebaseError"

    .line 558
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Continue"

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public FirebaseToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->f:Ljava/lang/String;

    return-object v0
.end method

.method public FirebaseToken(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->f:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a()V

    return-void
.end method

.method public FirebaseURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the URL for this FirebaseDB."
    .end annotation

    .line 230
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "DEFAULT"

    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Ljava/lang/String;

    return-object v0
.end method

.method public FirebaseURL(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the URL for this FirebaseDB."
    .end annotation

    const-string v0, "DEFAULT"

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Z

    .line 252
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->c:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "Firebase"

    const-string v0, "FirebaseURL called before DefaultURL (should not happen!)"

    .line 253
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a()V

    goto :goto_0

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Z

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v2, ""

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 268
    :cond_4
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Ljava/lang/String;

    .line 269
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Z

    .line 270
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a()V

    :goto_0
    return-void
.end method

.method public FirstRemoved(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered by the \"RemoveFirst\" function. The argument \"value\" is the object that was the first in the list, and which is now removed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FirstRemoved"

    .line 722
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetTagList()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags."
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    .line 690
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$6;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V

    return-void
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$3;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V

    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 515
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 516
    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Value failed to convert from JSON."

    const-string v0, "JSON Retrieval Error."

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string p1, "GotValue"

    .line 523
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialize()V
    .locals 2

    const-string v0, "Firebase"

    const-string v1, "Initalize called!"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 218
    sput-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Z

    .line 219
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a()V

    return-void
.end method

.method public Persist(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, variables will retain their values when off-line and the App exits. Values will be uploaded to Firebase the next time the App is run while connected to the network. This is useful for applications which will gather data while not connected to the network. Note: AppendValue and RemoveFirst will not work correctly when off-line, they require a network connection.<br/><br/> <i>Note</i>: If you set Persist on any Firebase component, on any screen, it makes all Firebase components on all screens persistent. This is a limitation of the low level Firebase library. Also be aware that if you want to set persist to true, you should do so before connecting the Companion for incremental development."
        userVisible = false
    .end annotation

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persist Called: Value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->c:Z

    if-eq v0, p1, :cond_1

    .line 368
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->b:Z

    if-nez v0, :cond_0

    .line 372
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p1}, Lcom/firebase/client/Config;->setPersistenceEnabled(Z)V

    .line 374
    invoke-static {v0}, Lcom/firebase/client/Firebase;->setDefaultConfig(Lcom/firebase/client/Config;)V

    .line 375
    sput-boolean p1, Lcom/google/appinventor/components/runtime/FirebaseDB;->c:Z

    .line 376
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a()V

    goto :goto_0

    .line 369
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You cannot change the Persist value of Firebase after Application Initialization, this includes the Companion"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public ProjectBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the ProjectBucket for this FirebaseDB."
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->e:Ljava/lang/String;

    return-object v0
.end method

.method public ProjectBucket(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ProjectBucket for this FirebaseDB."
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->e:Ljava/lang/String;

    .line 313
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a()V

    :cond_0
    return-void
.end method

.method public RemoveFirst(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered."
    .end annotation

    .line 636
    new-instance v6, Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB$a;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;)V

    .line 637
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object p1

    .line 638
    new-instance v7, Lcom/google/appinventor/components/runtime/FirebaseDB$4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/FirebaseDB$4;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V

    .line 677
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$5;

    invoke-direct {v0, p0, v6}, Lcom/google/appinventor/components/runtime/FirebaseDB$5;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V

    invoke-direct {p0, v7, p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->a(Lcom/google/appinventor/components/runtime/FirebaseDB$b;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V

    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    if-eqz p2, :cond_0

    .line 444
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Value failed to convert to JSON."

    const-string v0, "JSON Creation Error."

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/firebase/client/Firebase;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public TagList(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TagList"

    .line 715
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Unauthenticate()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you are having difficulty with the Companion and you are switching between different Firebase accounts, you may need to use this function to clear internal Firebase caches. You can just use the \"Do It\" function on this block in the blocks editor. Note: You should not normally need to use this block as part of an application."
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    if-nez v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->b()V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->a:Lcom/firebase/client/Firebase;

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->unauth()V

    return-void
.end method
