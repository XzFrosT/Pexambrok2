.class public Lcom/google/appinventor/components/runtime/NiotronFirestore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Firestore componet for storing data"
    iconName = "images/firestore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase-ui-firestore-6.2.1.jar, firebase-ui-firestore-6.2.1.aar, play-services-tasks.aar, play-services-tasks.jar, firebase-firestore.aar, firebase-firestore.jar, play-services-basement.aar, play-services-basement.jar, play-services-base.aar, play-services-base.jar, firebase-appcheck-interop.jar, firebase-appcheck-interop.aar, firebase-auth-interop-19.0.0.aar, firebase-auth-interop-19.0.0.jar, firebase-common-19.3.0.aar, firebase-common-19.3.0.jar, firebase-components-16.0.0.aar, firebase-components-16.0.0.jar, firebase-database-collection.jar, firebase-database-collection.aar, protolite-well-known-types.jar, protolite-well-known-types.aar, protobuf-java.jar, okhttp.jar, okio.jar, kotlin-stdlib-common.jar, grpc-android.jar, grpc-api.jar, grpc-context.jar, grpc-core.jar, error-prone-annotations.jar, jsr305.jar, failureaccess.jar, listenablefuture-empty-to-avoid-conflict-with-guava.jar, j2objc-annotations.jar, checker-compat-qual.jar, checker-qual.jar, gson-2.8.4.jar, perfmark-api.jar, animal-sniffer-annotations.jar, grpc-okhttp.jar, grpc-stub.jar, grpc-android.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Niotron Firestore"

.field private static final a:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private a:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/ListenerRegistration;",
            ">;"
        }
    .end annotation
.end field

.field public activity:Landroid/app/Activity;

.field public context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 82
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 86
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Ljava/util/Map;

    .line 87
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->context:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/google/firebase/firestore/CollectionReference;ILjava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/CollectionReference;",
            "I",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore$10;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;Lcom/google/firebase/firestore/CollectionReference;I)V

    invoke-static {p3, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/NiotronFirestore;Lcom/google/firebase/firestore/Query;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a(Lcom/google/firebase/firestore/Query;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/firebase/firestore/Query;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Query;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/QuerySnapshot;

    .line 410
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->batch()Lcom/google/firebase/firestore/WriteBatch;

    move-result-object p1

    .line 411
    invoke-virtual {v0}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 412
    invoke-virtual {v2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getReference()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/WriteBatch;->delete(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/WriteBatch;

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/WriteBatch;->commit()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 416
    invoke-virtual {v0}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFirestore$9;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$9;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 381
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronFirestore$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 380
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0x32

    invoke-direct {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a(Lcom/google/firebase/firestore/CollectionReference;ILjava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public AddDocument(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new document with a generated id."
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    .line 202
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/CollectionReference;->add(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$17;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$17;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 208
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public DeleteCollection(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deleted collection."
    .end annotation

    .line 318
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a(Ljava/lang/String;)V

    return-void
.end method

.method public DeleteDocument(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deleted document."
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$8;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$8;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$7;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$7;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 330
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public GetAllDocs(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the complete list of documents in the collection, returning to \"GotAllDocs.\""
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/CollectionReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$5;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public GetDocument(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the Document by returning a Dictionary in \"GotDocument\"."
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public GetDocumentQuery(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a list of documents according to the query, returning it in \"GotQuery\"."
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    .line 140
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/query/QueryHelper;->processQueries(Lorg/json/JSONArray;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$12;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$12;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GotAllDocs(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event returns all documents."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotAllDocs"

    .line 346
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotDocument(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the document in the dictionary type obtained from \"GotValue\"."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotDocument"

    .line 341
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotQuery(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event returns a list with the selected data."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotQuery"

    .line 351
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes the SDK."
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string/jumbo v1, "second app"

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p3}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Niotron Firestore"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->context:Landroid/content/Context;

    invoke-static {p2, p1, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 100
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    invoke-direct {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;-><init>()V

    .line 101
    invoke-virtual {p1, p4}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setPersistenceEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->build()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object p1

    .line 102
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->setFirestoreSettings(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v1}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 106
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    invoke-direct {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;-><init>()V

    .line 107
    invoke-virtual {p1, p4}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setPersistenceEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->build()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->setFirestoreSettings(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V

    :goto_0
    return-void
.end method

.method public NewDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new empty document with a specific name, if you want to create it by generating an id leave the documentName field empty."
    .end annotation

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    if-ne p2, v1, :cond_0

    .line 223
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/CollectionReference;->document()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    goto :goto_0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 226
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$2;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$19;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$19;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 232
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public OnFailure(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the error message."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnFailure"

    .line 361
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnListenerAdded(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When registering the listener, this event will be called when adding a field to the collection."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnListenerAdded"

    .line 366
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnListenerModified(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When registering the listener, this event will be called when modifying a field in the collection."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnListenerModified"

    .line 371
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnListenerRemoved(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When registering the listener, this event will be called when removing a field from the collection."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnListenerRemoved"

    .line 376
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the event if any method is successful."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnSuccess"

    .line 356
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RegisterListener(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Register a listener and if there are changes to the collection it will return to OnListenerAdded, OnListenerModified, OnListenerRemoved."
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFirestore$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public RemoveListener(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes the listener."
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/ListenerRegistration;

    .line 313
    invoke-interface {p1}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    return-void
.end method

.method public SetDocument(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the documents."
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 166
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$13;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$13;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 172
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SetFieldWithMerge(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update one field, creating the document if it does not already exist."
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 184
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;

    move-result-object p2

    invoke-static {}, Lcom/google/firebase/firestore/SetOptions;->merge()Lcom/google/firebase/firestore/SetOptions;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$16;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$16;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$15;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$15;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 190
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public UpdateDocument(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Updates the document."
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 244
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->a(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$4;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$3;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 250
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
