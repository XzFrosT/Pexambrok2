.class Lcom/google/appinventor/components/runtime/FirebaseDB$7;
.super Lcom/google/appinventor/components/runtime/FirebaseDB$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->AppendValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB;

.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Ljava/lang/Object;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->a:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/FirebaseDB$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V

    return-void
.end method


# virtual methods
.method a(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .locals 3

    const-string v0, "Invalid JSON object in database (shouldn\'t happen!)"

    .line 734
    invoke-virtual {p1}, Lcom/firebase/client/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 736
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "Previous value was empty."

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 737
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 740
    :cond_0
    :try_start_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 741
    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 750
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 751
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    :try_start_1
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 758
    invoke-virtual {p1, v0}, Lcom/firebase/client/MutableData;->setValue(Ljava/lang/Object;)V

    .line 759
    invoke-static {p1}, Lcom/firebase/client/Transaction;->success(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 755
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "Could not convert value to JSON."

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 756
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 761
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "You can only append to a list."

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 762
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 743
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 744
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 747
    :catch_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 748
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1
.end method
