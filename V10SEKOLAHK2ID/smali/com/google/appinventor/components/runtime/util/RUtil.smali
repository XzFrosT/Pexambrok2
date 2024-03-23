.class public Lcom/google/appinventor/components/runtime/util/RUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_5

    const-string p2, "//"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    const-string p2, "/"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string v2, "file:"

    if-nez p2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 25
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x5

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge p2, v3, :cond_3

    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 31
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 33
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isAppSpecificExternalUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 35
    :cond_5
    sget-object p1, Lcom/google/appinventor/components/runtime/util/RUtil$1;->a:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/common/FileScope;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x13

    if-eq p1, v0, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 p0, 0x3

    if-eq p1, p0, :cond_6

    return v1

    :cond_6
    return v0

    .line 39
    :cond_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result p0

    if-eqz p0, :cond_8

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, p2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 37
    :cond_9
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, p2, :cond_a

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
