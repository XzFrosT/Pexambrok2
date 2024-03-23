.class Lcom/google/appinventor/components/runtime/Map$7;
.super Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->Save(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Map;

.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/util/List;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 612
    iput-object v0, v8, Lcom/google/appinventor/components/runtime/Map$7;->a:Lcom/google/appinventor/components/runtime/Map;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/Map$7;->a:Ljava/util/List;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    return-void
.end method


# virtual methods
.method protected processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map$7;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object p1

    .line 616
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 617
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Map$7;->a:Lcom/google/appinventor/components/runtime/Map;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map$7;->a:Ljava/util/List;

    invoke-static {p1, v1, v0}, Lcom/google/appinventor/components/runtime/Map;->a(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method
