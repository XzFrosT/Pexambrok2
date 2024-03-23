.class public Lcom/google/appinventor/components/runtime/background/BackgroundService;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/appinventor/components/runtime/Form;

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->getInputData()Landroidx/work/Data;

    move-result-object p1

    const-string p2, "PROCEDURE_NAME"

    invoke-virtual {p1, p2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a:Ljava/lang/String;

    .line 25
    sget-object p1, Lcom/google/appinventor/components/runtime/BackgroundFunctions;->form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a:Lcom/google/appinventor/components/runtime/Form;

    return-void
.end method

.method private a(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 3

    .line 84
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    .line 87
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(begin (require <com.google.youngandroid.runtime>)(get-var p$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkawa/standard/Scheme;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 89
    instance-of v0, p1, Lgnu/mapping/ProcedureN;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lgnu/mapping/ProcedureN;

    return-object p1

    :cond_0
    const-string v0, "BackgroundFunctions"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wanted a procedure, but got a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 4

    const-string p1, ""

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->c(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    .line 59
    :try_start_0
    invoke-virtual {v0}, Lgnu/mapping/ProcedureN;->numArgs()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 65
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 67
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v1

    move v1, v2

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0, p2}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lgnu/mapping/ProcedureN;->apply0()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 72
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/background/BackgroundService$1;

    invoke-direct {v0, p0, p2}, Lcom/google/appinventor/components/runtime/background/BackgroundService$1;-><init>(Lcom/google/appinventor/components/runtime/background/BackgroundService;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1

    .line 55
    :cond_4
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to locate procedure "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in form"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 5

    const/4 v0, 0x0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "global$Mnvars$Mnto$Mncreate"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    .line 106
    new-instance v2, Lgnu/mapping/SimpleSymbol;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 109
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v3, v1}, Lgnu/lists/LList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    check-cast v1, Lgnu/lists/LList;

    const/4 v3, 0x0

    .line 111
    invoke-virtual {v1, v3}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    .line 112
    invoke-virtual {v1, p1}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 117
    :goto_0
    instance-of v1, p1, Lgnu/mapping/ProcedureN;

    if-eqz v1, :cond_2

    .line 121
    check-cast p1, Lgnu/mapping/ProcedureN;

    invoke-virtual {p1}, Lgnu/mapping/ProcedureN;->apply0()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/mapping/ProcedureN;

    return-object p1

    :cond_2
    const-string v1, "BackgroundFunctions"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wanted a procedure, but got a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string p1, "null"

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private c(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->b(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    :try_start_0
    const-string v0, "Niotron"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Procedure Called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Call"

    .line 41
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method public onStopped()V
    .locals 0

    .line 33
    invoke-super {p0}, Landroidx/work/Worker;->onStopped()V

    return-void
.end method
