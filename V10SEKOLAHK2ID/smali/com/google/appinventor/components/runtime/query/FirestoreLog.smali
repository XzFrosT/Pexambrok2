.class public Lcom/google/appinventor/components/runtime/query/FirestoreLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 51
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 52
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static setLogLevel(Ljava/lang/String;)V
    .locals 5

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting log level to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirestoreJDL"

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "warning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "debug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "warn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v4, :cond_1

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New logLevel unknown, leaving previous setting : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 p0, 0x5

    .line 20
    sput p0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    goto :goto_2

    :cond_2
    const/4 p0, 0x6

    .line 16
    sput p0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    goto :goto_2

    .line 13
    :cond_3
    sput v4, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    .line 27
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New logLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x379286 -> :sswitch_3
        0x5b09653 -> :sswitch_2
        0x5c4d208 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 41
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 42
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
