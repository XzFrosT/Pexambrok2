.class Lcom/google/appinventor/components/runtime/FirebaseDB$4;
.super Lcom/google/appinventor/components/runtime/FirebaseDB$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->RemoveFirst(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->a:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/FirebaseDB$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V

    return-void
.end method


# virtual methods
.method a(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .locals 4

    const-string v0, "Invalid JSON object in database (shouldn\'t happen!)"

    .line 641
    invoke-virtual {p1}, Lcom/firebase/client/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 643
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "Previous value was empty."

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 644
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 647
    :cond_0
    :try_start_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 648
    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 657
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 658
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "The list was empty"

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 660
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 662
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/Object;

    .line 664
    :try_start_1
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 669
    invoke-virtual {p1, v0}, Lcom/firebase/client/MutableData;->setValue(Ljava/lang/Object;)V

    .line 670
    invoke-static {p1}, Lcom/firebase/client/Transaction;->success(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 666
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "Could not convert value to JSON."

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 667
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 672
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "You can only remove elements from a list."

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 673
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 650
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 651
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 654
    :catch_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->a:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->a:Ljava/lang/String;

    .line 655
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1
.end method
