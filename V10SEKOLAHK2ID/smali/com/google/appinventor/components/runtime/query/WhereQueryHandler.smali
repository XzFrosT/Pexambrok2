.class public Lcom/google/appinventor/components/runtime/query/WhereQueryHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/query/QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "value"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->isWrappedDate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->unwrapDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->isWrappedTimestamp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->unwrapTimestamp(Ljava/lang/Object;)Lcom/google/firebase/Timestamp;

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->isWrappedGeoPoint(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->unwrapGeoPoint(Ljava/lang/Object;)Lcom/google/firebase/firestore/GeoPoint;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public handle(Lcom/google/firebase/firestore/Query;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 3

    .line 13
    :try_start_0
    check-cast p2, Lorg/json/JSONObject;

    const-string v0, "fieldPath"

    .line 15
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "opStr"

    .line 16
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/query/WhereQueryHandler;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "=="

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v2, ">"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/firestore/Query;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v2, ">="

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/firestore/Query;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v2, "<"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/firestore/Query;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v2, "<="

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 28
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/firestore/Query;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    :goto_0
    return-object p1

    .line 30
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown operator type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "FirestoreJDL"

    const-string v0, "Error processing where"

    .line 33
    invoke-static {p2, v0, p1}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
