.class public Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/google/appinventor/components/runtime/Component;

.field private a:Lcom/google/appinventor/components/runtime/Form;

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/google/appinventor/components/runtime/util/ScopedFile;",
            "Lcom/google/appinventor/components/runtime/util/FileAccessMode;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/LinkedHashMap;

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/Set;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/List;

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Z

    const/4 v1, 0x0

    .line 221
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->b:Z

    .line 222
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V
    .locals 2

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/LinkedHashMap;

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/Set;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/List;

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Z

    const/4 v1, 0x0

    .line 221
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->b:Z

    .line 222
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->c:Z

    .line 236
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Form;

    .line 237
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Component;

    .line 238
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/List;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z
    .locals 0

    .line 213
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z
    .locals 0

    .line 213
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->b:Z

    return p0
.end method


# virtual methods
.method public addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 4

    .line 265
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Component;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/lang/String;

    const/16 v1, 0x83a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 268
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 267
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 269
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw p1

    .line 271
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileOperation;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resolved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->b:Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->b:Z

    .line 275
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p1, p3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getNeededPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 277
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method public build()Lcom/google/appinventor/components/runtime/util/FileOperation;
    .locals 7

    .line 303
    new-instance v6, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Component;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Z

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public setAskPermission(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->c:Z

    return-object p0
.end method

.method public setAsynchronous(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Z

    return-object p0
.end method

.method public setComponent(Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Component;

    return-object p0
.end method

.method public setForm(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
