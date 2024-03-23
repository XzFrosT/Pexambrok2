.class public final Lcom/google/appinventor/components/runtime/AsyncTask;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Run Functions Asynchronously or in the <br> Background when the App is Closed(Coming Soon) "
    iconName = "images/asyncTask.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/google/appinventor/components/runtime/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/AsyncTask;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 3

    .line 152
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    .line 155
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

    .line 157
    instance-of v0, p1, Lgnu/mapping/ProcedureN;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lgnu/mapping/ProcedureN;

    return-object p1

    .line 160
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/AsyncTask;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wanted a procedure, but got a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/AsyncTask;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 4

    .line 209
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/AsyncTask;->c(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 215
    :try_start_0
    invoke-virtual {v0}, Lgnu/mapping/ProcedureN;->numArgs()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 221
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 223
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v1

    move v1, v2

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v0, p2}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 216
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lgnu/mapping/ProcedureN;->apply0()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 228
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/AsyncTask;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/AsyncTask$5;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    return-object p1

    .line 211
    :cond_3
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to locate procedure "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in form "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 212
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

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

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "global$Mnvars$Mnto$Mncreate"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AsyncTask;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    .line 174
    new-instance v2, Lgnu/mapping/SimpleSymbol;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 177
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v3, v1}, Lgnu/lists/LList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    check-cast v1, Lgnu/lists/LList;

    const/4 v3, 0x0

    .line 179
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

    .line 180
    invoke-virtual {v1, p1}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 185
    :goto_0
    instance-of v1, p1, Lgnu/mapping/ProcedureN;

    if-eqz v1, :cond_2

    .line 189
    check-cast p1, Lgnu/mapping/ProcedureN;

    invoke-virtual {p1}, Lgnu/mapping/ProcedureN;->apply0()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/mapping/ProcedureN;

    return-object p1

    .line 191
    :cond_2
    sget-object v1, Lcom/google/appinventor/components/runtime/AsyncTask;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wanted a procedure, but got a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string p1, "null"

    goto :goto_1

    .line 192
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private c(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AsyncTask;->a(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AsyncTask;->b(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public Call(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure in the current screen with the given name."
    .end annotation

    const-string v0, "Call"

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/AsyncTask;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public CallAfterDelay(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure on the UI thread after waiting delay milliseconds on a separate thread."
    .end annotation

    .line 99
    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/AsyncTask$3;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CallAfterDelayWithArgs(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure on the UI thread with the given arguments after waiting delay milliseconds on a separate thread."
    .end annotation

    .line 121
    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/AsyncTask$4;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CallAsynchronous(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure in the current screen on a thread separate from the UI thread."
    .end annotation

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/AsyncTask$1;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CallAsynchronousWithArgs(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure in the current screen on a thread separate from the UI thread with the given list of arguments."
    .end annotation

    .line 82
    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/AsyncTask$2;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CallFinishedWithResult(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "After an asynchronous procedure call, this event is run with the results of the invocation."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "CallFinishedWithResult"

    .line 143
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CallWithArgs(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure in the current screen with a list of arguments."
    .end annotation

    const-string v0, "CallWithArgs"

    .line 59
    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/AsyncTask;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
