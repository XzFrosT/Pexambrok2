.class public Lcom/google/appinventor/components/runtime/EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/EventDispatcher$b;,
        Lcom/google/appinventor/components/runtime/EventDispatcher$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;
    .locals 2

    .line 87
    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/EventDispatcher$b;-><init>(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 90
    sget-object v1, Lcom/google/appinventor/components/runtime/EventDispatcher;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static varargs a(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$a;",
            ">;",
            "Lcom/google/appinventor/components/runtime/Component;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 221
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    .line 223
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->a(Lcom/google/appinventor/components/runtime/EventDispatcher$a;)Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->b(Lcom/google/appinventor/components/runtime/EventDispatcher$a;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-interface {p0, p2, v2, v1, p3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static b(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;
    .locals 1

    .line 96
    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    return-object p0
.end method

.method public static varargs dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 4

    .line 192
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/OptionHelper;->optionListsFromValues(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 194
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/Component;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 195
    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 196
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->a(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    move-result-object v1

    .line 197
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->a(Lcom/google/appinventor/components/runtime/EventDispatcher$b;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 198
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 199
    invoke-static {v0, v1, p0, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->a(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    xor-int/lit8 v1, v2, 0x1

    .line 201
    invoke-interface {v0, p0, p1, v1, p2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method public static makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registerEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 111
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->a(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    move-result-object p0

    .line 112
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->a(Lcom/google/appinventor/components/runtime/EventDispatcher$b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 115
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->a(Lcom/google/appinventor/components/runtime/EventDispatcher$b;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    new-instance p0, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/EventDispatcher$1;)V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V
    .locals 0

    .line 175
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->b(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->a(Lcom/google/appinventor/components/runtime/EventDispatcher$b;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public static unregisterAllEventsForDelegation()V
    .locals 2

    .line 162
    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    .line 163
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->a(Lcom/google/appinventor/components/runtime/EventDispatcher$b;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static unregisterEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 136
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->a(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    move-result-object p0

    .line 137
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->a(Lcom/google/appinventor/components/runtime/EventDispatcher$b;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_3

    .line 138
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 142
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    .line 143
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->a(Lcom/google/appinventor/components/runtime/EventDispatcher$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    .line 152
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
