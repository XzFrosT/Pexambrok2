.class public Lgnu/kawa/slib/gui;
.super Lgnu/expr/ModuleBody;
.source "gui.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ngui.scm\nScheme\n*S Scheme\n*F\n+ 1 gui.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm\n*L\n1#1,178:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/gui;

.field public static final Button:Lgnu/expr/ModuleMethod;

.field public static final Column:Lgnu/expr/ModuleMethod;

.field public static final Image:Lkawa/lang/Macro;

.field public static final Label:Lgnu/expr/ModuleMethod;

.field static final Lit0:Ljava/lang/Class;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lkawa/lang/SyntaxRules;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lkawa/lang/SyntaxRules;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit33:Lgnu/mapping/SimpleSymbol;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/mapping/SimpleSymbol;

.field static final Lit36:Lgnu/mapping/SimpleSymbol;

.field static final Lit37:Lgnu/mapping/SimpleSymbol;

.field static final Lit38:Lgnu/mapping/SimpleSymbol;

.field static final Lit39:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit40:Lgnu/mapping/SimpleSymbol;

.field static final Lit41:Lgnu/mapping/SimpleSymbol;

.field static final Lit42:Lgnu/mapping/SimpleSymbol;

.field static final Lit43:Lgnu/mapping/SimpleSymbol;

.field static final Lit44:Lgnu/math/IntNum;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lkawa/lang/SyntaxRules;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final Row:Lgnu/expr/ModuleMethod;

.field public static final Text:Lgnu/expr/ModuleMethod;

.field public static final Window:Lgnu/expr/ModuleMethod;

.field public static final as$Mncolor:Lgnu/expr/ModuleMethod;

.field public static final button:Lgnu/expr/ModuleMethod;

.field public static final image$Mnheight:Lgnu/expr/ModuleMethod;

.field public static final image$Mnread:Lgnu/expr/ModuleMethod;

.field public static final image$Mnwidth:Lgnu/expr/ModuleMethod;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

.field static final loc$$St$DtgetHeight:Lgnu/mapping/Location;

.field static final loc$$St$DtgetWidth:Lgnu/mapping/Location;

.field public static final process$Mnkeywords:Lkawa/lang/Macro;

.field public static final run$Mnapplication:Lkawa/lang/Macro;

.field public static final set$Mncontent:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v2, "value"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "name"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "invoke"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "getName"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "quote"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "attr"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "<gnu.kawa.xml.KAttr>"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "instance?"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "+"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "loop"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "<object>"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "primitive-array-get"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "quasiquote"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "$lookup$"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "arg"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "num-args"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "i"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "<int>"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "::"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    new-array v2, v0, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "run-application"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v0, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "\u000c\u0018\u000c\u0007\u0008"

    invoke-direct {v6, v7, v5, v0}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v0, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "gnu.kawa.models.Window"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "open"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v10, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-static {v8, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v8, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    const-string v12, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v8, 0xb7007

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v9, v4

    const-string v7, "\u0001"

    const-string v8, "\u0011\u0018\u0004\u0008\u0003"

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v3, v4

    invoke-direct {v1, v2, v3, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Lit24:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "Window"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v2, "set-content"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "Column"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "Row"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "Text"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "Label"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "image-height"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "image-width"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "image-read"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    new-array v2, v0, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v5, "text-field"

    invoke-direct {v3, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    aput-object v3, v2, v4

    new-array v3, v0, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "\u000c\u0018\u0003"

    invoke-direct {v6, v7, v5, v0}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v13, 0x2

    new-array v9, v13, [Ljava/lang/Object;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "make"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v9, v4

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "<gnu.kawa.models.DrawImage>"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v9, v0

    const-string v7, "\u0000"

    const-string v8, "\u0011\u0018\u0004\u0011\u0018\u000c\u0002"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v3, v4

    invoke-direct {v1, v2, v3, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Lit13:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "Image"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "Button"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "button"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "as-color"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    new-array v2, v0, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v5, "process-keywords"

    invoke-direct {v3, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v2, v4

    new-array v3, v0, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    const/4 v14, 0x4

    invoke-direct {v6, v7, v5, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v5, 0x1b

    new-array v9, v5, [Ljava/lang/Object;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "let"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v9, v4

    sget-object v5, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v9, v0

    sget-object v5, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v9, v13

    sget-object v5, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x3

    aput-object v5, v9, v15

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "field"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v9, v14

    sget-object v5, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "length"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v10, 0x402a

    invoke-static {v7, v8, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    invoke-static {v5, v7, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v8, 0x4029

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v9, v10

    sget-object v5, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    const/4 v8, 0x6

    aput-object v5, v9, v8

    sget-object v5, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v0, 0x501d

    invoke-static {v10, v15, v12, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v10, 0x5017

    invoke-static {v8, v0, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v8, 0x5014

    invoke-static {v7, v0, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v7, 0x5011

    invoke-static {v5, v0, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v7, 0x5010

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/4 v15, 0x7

    aput-object v0, v9, v15

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "if"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const/16 v10, 0x8

    aput-object v0, v9, v10

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "<"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v10, 0x6011

    invoke-static {v7, v8, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const/16 v8, 0x600f

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const/16 v7, 0x600c

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v10, 0x9

    aput-object v0, v9, v10

    sget-object v0, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0xa

    aput-object v0, v9, v8

    sget-object v0, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v8, 0x7026

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const/16 v7, 0x7011

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v8, 0xb

    aput-object v0, v9, v8

    sget-object v0, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v7, 0x7035

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v7, 0xc

    aput-object v0, v9, v7

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "cond"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const/16 v5, 0xd

    aput-object v0, v9, v5

    sget-object v0, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "<gnu.expr.Keyword>"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v10, 0x801d

    invoke-static {v7, v8, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v8, 0x8019

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0x800e

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v5, 0xe

    aput-object v0, v9, v5

    sget-object v0, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "gnu.expr.Keyword"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v8, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v7, v8}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    invoke-static {v5, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    const v7, 0xa00a

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v5, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0xa023

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0xa009

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v5, 0xf

    aput-object v0, v9, v5

    sget-object v0, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0xb01f

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0xb00a

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v5, 0x10

    aput-object v0, v9, v5

    sget-object v0, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v10, 0xb033

    invoke-static {v7, v8, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v8, 0xb031

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0xb02e

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v5, 0x11

    aput-object v0, v9, v5

    sget-object v0, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-static {v13}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v8

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0xc012

    invoke-static {v8, v10, v12, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const v10, 0xc010

    invoke-static {v7, v8, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v8, 0xc00d

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0xc007

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v5, 0x12

    aput-object v0, v9, v5

    sget-object v0, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v10, 0xd016

    invoke-static {v7, v8, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v8, 0xd012

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0xd007

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v5, 0x13

    aput-object v0, v9, v5

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "let*"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const/16 v5, 0x14

    aput-object v0, v9, v5

    sget-object v0, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0xe02c

    invoke-static {v8, v10, v12, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const v10, 0xe017

    invoke-static {v7, v8, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v8, 0xe014

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0xe00e

    invoke-static {v0, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v5, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v10, "<java.lang.String>"

    invoke-direct {v8, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v16, v1

    const v1, 0xf031

    invoke-static {v14, v4, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    invoke-static {v13, v4, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0xf030

    invoke-static {v1, v4, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0xf02b

    invoke-static {v15, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0xf023

    invoke-static {v10, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v10, 0xf023

    invoke-static {v1, v4, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0xf010

    invoke-static {v8, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0xf00d

    invoke-static {v7, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0xf007

    invoke-static {v5, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v4, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v13, "getObjectValue"

    invoke-direct {v10, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x1001c

    invoke-static {v10, v13, v12, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const v13, 0x1001c

    invoke-static {v8, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x1001b

    invoke-static {v8, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const v10, 0x10016

    invoke-static {v7, v8, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v8, 0x1000e

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0x10007

    invoke-static {v4, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v4, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v5, 0xf007

    invoke-static {v1, v4, v12, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0xe00d

    invoke-static {v0, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, v9, v1

    sget-object v0, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v5, 0x11022

    invoke-static {v1, v4, v12, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0x1101d

    invoke-static {v0, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, v9, v1

    sget-object v0, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0x12012

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0x12010

    invoke-static {v4, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v5, 0x1200d

    invoke-static {v1, v4, v12, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v4, v12, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0x12007

    invoke-static {v0, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, v9, v1

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "else"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const/16 v1, 0x18

    aput-object v0, v9, v1

    sget-object v0, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v4, 0x1401f

    invoke-static {v0, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, v9, v1

    sget-object v0, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0x15012

    invoke-static {v5, v7, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v7, 0x15010

    invoke-static {v4, v5, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v5, 0x1500d

    invoke-static {v1, v4, v12, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v4, v12, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0x15007

    invoke-static {v0, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v1, v12, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, v9, v1

    const-string v7, "\u0001\u0001\u0001\u0001"

    const-string v8, "\u0011\u0018\u0004\u0091\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\t\u000b\u0018,\u0008\u0011\u0018\u0004\u0011\u00184\u0011\u0018<\u0008\u0011\u0018D\u0011\u0018L\u0008\u0011\u0018\u0004a\u0008\u0011\u0018T\u0008\u0011\u0018\\\t\u000b\u0018d\u0008\u0011\u0018l\u00a9\u0011\u0018ty\t\u0013\t\u0003\u0011\u0018|\u0008\u0011\u0018\u0084\t\u000b\u0018\u008c\u0018\u0094\u0099\u0011\u0018\u009ci\u0011\u0018\u00a4\u0011\u0018\u00ac\u0008\t\u0013\t\u0003\u0018\u00b4\u0018\u00bc\u0008\u0011\u0018\u00c41\t\u001b\t\u0003\u0018\u00cc\u0018\u00d4"

    const/4 v10, 0x0

    move-object v5, v11

    const/16 v0, 0xc

    const/16 v1, 0xb

    const/16 v4, 0xa

    const/4 v12, 0x6

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x5

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v5, 0x0

    aput-object v11, v3, v5

    move-object/from16 v5, v16

    const/4 v6, 0x4

    invoke-direct {v5, v2, v3, v6}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v5, Lgnu/kawa/slib/gui;->Lit8:Lkawa/lang/SyntaxRules;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "<gnu.kawa.models.Column>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "<gnu.kawa.models.Row>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "*.getHeight"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "*.getWidth"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "cell-spacing"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v3, "text"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-class v2, Ljava/awt/Color;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    new-instance v2, Lgnu/kawa/slib/gui;

    invoke-direct {v2}, Lgnu/kawa/slib/gui;-><init>()V

    sput-object v2, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, v3}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, v3}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, v3}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/kawa/slib/gui;->Lit8:Lkawa/lang/SyntaxRules;

    sget-object v5, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v2, v3, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/gui;->process$Mnkeywords:Lkawa/lang/Macro;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v3, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    const/4 v7, 0x1

    invoke-direct {v2, v3, v7, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->as$Mncolor:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0x1000

    const/4 v8, 0x2

    invoke-direct {v2, v3, v8, v5, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->button:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/4 v8, 0x3

    invoke-direct {v2, v3, v8, v5, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->Button:Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit13:Lkawa/lang/SyntaxRules;

    sget-object v8, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v2, v5, v8}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/gui;->Image:Lkawa/lang/Macro;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/4 v8, 0x4

    invoke-direct {v2, v3, v8, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->image$Mnread:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v2, v3, v15, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->image$Mnwidth:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v2, v3, v12, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->image$Mnheight:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x7

    invoke-direct {v2, v3, v6, v5, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->Label:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v2, v3, v14, v5, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->Text:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v2, v3, v13, v5, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->Row:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v2, v3, v4, v5, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->Column:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v5, 0x2002

    invoke-direct {v2, v3, v1, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/gui;->set$Mncontent:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v1, v3, v0, v2, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Window:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit24:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/gui;->run$Mnapplication:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .locals 5

    .line 61
    new-instance v0, Lgnu/kawa/models/Button;

    invoke-direct {v0}, Lgnu/kawa/models/Button;-><init>()V

    .line 62
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    instance-of v4, v3, Lgnu/expr/Keyword;

    if-eqz v4, :cond_0

    :try_start_0
    check-cast v3, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-static {v0, v3, v4}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "gnu.expr.Keyword.getName()"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    :cond_0
    instance-of v4, v3, Lgnu/kawa/xml/KAttr;

    if-eqz v4, :cond_1

    .line 14
    :try_start_1
    check-cast v3, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v3

    .line 62
    invoke-static {v0, v4, v3}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception p0

    .line 14
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "attr"

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 62
    :cond_1
    invoke-static {v0, v3}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static varargs Column([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 151
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_5

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    instance-of v5, v4, Lgnu/expr/Keyword;

    const-string v6, "box-keyword"

    if-eqz v5, :cond_0

    :try_start_1
    move-object v5, v0

    check-cast v5, Lgnu/kawa/models/Box;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast v4, Lgnu/expr/Keyword;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v4}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    aget-object v6, p0, v6

    invoke-static {v5, v4, v6}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "gnu.expr.Keyword.getName()"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p0

    .line 152
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v6, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 12
    :cond_0
    instance-of v5, v4, Lgnu/kawa/xml/KAttr;

    if-eqz v5, :cond_1

    .line 14
    :try_start_3
    check-cast v4, Lgnu/kawa/xml/KAttr;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 15
    invoke-virtual {v4}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v4}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v4

    .line 152
    :try_start_4
    move-object v7, v0

    check-cast v7, Lgnu/kawa/models/Box;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-static {v7, v5, v4}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_2
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v6, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_3
    move-exception p0

    .line 14
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "attr"

    invoke-direct {v0, p0, v2, v1, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 152
    :cond_1
    :try_start_5
    move-object v5, v0

    check-cast v5, Lgnu/kawa/models/Box;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-static {v5, v4}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_4
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v3, "box-non-keyword"

    invoke-direct {v1, p0, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_2
    return-object v0

    :catch_5
    move-exception p0

    const/16 v0, 0x97

    const/16 v1, 0x19

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    .line 153
    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static varargs Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;
    .locals 5

    .line 101
    new-instance v0, Lgnu/kawa/models/Label;

    invoke-direct {v0}, Lgnu/kawa/models/Label;-><init>()V

    .line 102
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    instance-of v4, v3, Lgnu/expr/Keyword;

    if-eqz v4, :cond_0

    :try_start_0
    check-cast v3, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-static {v0, v3, v4}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "gnu.expr.Keyword.getName()"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    :cond_0
    instance-of v4, v3, Lgnu/kawa/xml/KAttr;

    if-eqz v4, :cond_1

    .line 14
    :try_start_1
    check-cast v3, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v3

    .line 102
    invoke-static {v0, v4, v3}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception p0

    .line 14
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "attr"

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 102
    :cond_1
    invoke-static {v0, v3}, Lgnu/kawa/slib/gui;->labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static varargs Row([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 146
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_5

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    instance-of v5, v4, Lgnu/expr/Keyword;

    const-string v6, "box-keyword"

    if-eqz v5, :cond_0

    :try_start_1
    move-object v5, v0

    check-cast v5, Lgnu/kawa/models/Box;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast v4, Lgnu/expr/Keyword;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v4}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    aget-object v6, p0, v6

    invoke-static {v5, v4, v6}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "gnu.expr.Keyword.getName()"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p0

    .line 147
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v6, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 12
    :cond_0
    instance-of v5, v4, Lgnu/kawa/xml/KAttr;

    if-eqz v5, :cond_1

    .line 14
    :try_start_3
    check-cast v4, Lgnu/kawa/xml/KAttr;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 15
    invoke-virtual {v4}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v4}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v4

    .line 147
    :try_start_4
    move-object v7, v0

    check-cast v7, Lgnu/kawa/models/Box;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-static {v7, v5, v4}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_2
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v6, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_3
    move-exception p0

    .line 14
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "attr"

    invoke-direct {v0, p0, v2, v1, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 147
    :cond_1
    :try_start_5
    move-object v5, v0

    check-cast v5, Lgnu/kawa/models/Box;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-static {v5, v4}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_4
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v3, "box-non-keyword"

    invoke-direct {v1, p0, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_2
    return-object v0

    :catch_5
    move-exception p0

    const/16 v0, 0x92

    const/16 v1, 0x19

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    .line 148
    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static varargs Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;
    .locals 5

    .line 124
    new-instance v0, Lgnu/kawa/models/Text;

    invoke-direct {v0}, Lgnu/kawa/models/Text;-><init>()V

    .line 125
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    instance-of v4, v3, Lgnu/expr/Keyword;

    if-eqz v4, :cond_0

    :try_start_0
    check-cast v3, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-static {v0, v3, v4}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "gnu.expr.Keyword.getName()"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    :cond_0
    instance-of v4, v3, Lgnu/kawa/xml/KAttr;

    if-eqz v4, :cond_1

    .line 14
    :try_start_1
    check-cast v3, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v3

    .line 125
    invoke-static {v0, v4, v3}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception p0

    .line 14
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "attr"

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 125
    :cond_1
    invoke-static {v0, v3}, Lgnu/kawa/slib/gui;->textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static varargs Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;
    .locals 5

    .line 176
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/models/Display;->makeWindow()Lgnu/kawa/models/Window;

    move-result-object v0

    .line 177
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    instance-of v4, v3, Lgnu/expr/Keyword;

    if-eqz v4, :cond_0

    :try_start_0
    check-cast v3, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-static {v0, v3, v4}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "gnu.expr.Keyword.getName()"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    :cond_0
    instance-of v4, v3, Lgnu/kawa/xml/KAttr;

    if-eqz v4, :cond_1

    .line 14
    :try_start_1
    check-cast v3, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v3

    .line 177
    invoke-static {v0, v4, v3}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception p0

    .line 14
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "attr"

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 177
    :cond_1
    invoke-static {v0, v3}, Lgnu/kawa/slib/gui;->windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static asColor(Ljava/lang/Object;)Ljava/awt/Color;
    .locals 4

    .line 24
    instance-of v0, p0, Ljava/awt/Color;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Ljava/awt/Color;

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Ljava/awt/Color;

    :try_start_0
    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/awt/Color;-><init>(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    const-string v3, "java.lang.Integer.intValue()"

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_1
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Ljava/awt/Color;

    invoke-static {p0}, Lgnu/math/IntNum;->intValue(Ljava/lang/Object;)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/awt/Color;-><init>(I)V

    :goto_0
    move-object p0, v0

    goto :goto_1

    .line 31
    :cond_2
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Color;

    :goto_1
    return-object p0
.end method

.method static asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 1

    .line 138
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/kawa/models/Display;->coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object p0

    return-object p0
.end method

.method static boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 131
    sget-object v0, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lgnu/kawa/models/Box;->setCellSpacing(Ljava/lang/Object;)V

    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p2, "unknown box attribute ~s"

    const/4 v0, 0x0

    aput-object p2, p0, v0

    const/4 p2, 0x1

    aput-object p1, p0, p2

    .line 135
    invoke-static {v0, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
    .locals 0

    .line 142
    invoke-static {p1}, Lgnu/kawa/slib/gui;->asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/models/Box;->add(Lgnu/kawa/models/Viewable;)V

    return-void
.end method

.method public static varargs button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .locals 5

    .line 56
    new-instance v0, Lgnu/kawa/models/Button;

    invoke-direct {v0}, Lgnu/kawa/models/Button;-><init>()V

    .line 57
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    instance-of v4, v3, Lgnu/expr/Keyword;

    if-eqz v4, :cond_0

    :try_start_0
    check-cast v3, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-static {v0, v3, v4}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "gnu.expr.Keyword.getName()"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    :cond_0
    instance-of v4, v3, Lgnu/kawa/xml/KAttr;

    if-eqz v4, :cond_1

    .line 14
    :try_start_1
    check-cast v3, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v3

    .line 57
    invoke-static {v0, v4, v3}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception p0

    .line 14
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "attr"

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 57
    :cond_1
    invoke-static {v0, v3}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "foreground"

    if-ne p1, v0, :cond_0

    .line 36
    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/models/Button;->setForeground(Ljava/awt/Color;)V

    :goto_0
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_3

    :cond_0
    const-string v0, "background"

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/models/Button;->setBackground(Ljava/awt/Color;)V

    goto :goto_0

    :cond_1
    const-string v0, "action"

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lgnu/kawa/models/Button;->setAction(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "text"

    if-ne p1, v0, :cond_4

    if-nez p2, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Button;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "disabled"

    if-ne p1, v3, :cond_6

    :try_start_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p2, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setDisabled(Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Lgnu/mapping/WrongType;

    const-string v0, "gnu.kawa.models.Button.setDisabled(boolean)"

    invoke-direct {p1, p0, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :cond_6
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "unknown button attribute ~s"

    aput-object p2, p0, v2

    aput-object p1, p0, v0

    .line 49
    invoke-static {v2, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method static buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    .line 51
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static imageHeight(Ljava/awt/image/BufferedImage;)I
    .locals 3

    .line 77
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    const/16 v0, 0x4d

    const/4 v1, 0x3

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p0
.end method

.method public static imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static imageWidth(Ljava/awt/image/BufferedImage;)I
    .locals 3

    .line 74
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    const/16 v0, 0x4a

    const/4 v1, 0x3

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p0
.end method

.method static labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 82
    sget-object v0, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p2, "unknown label attribute ~s"

    const/4 v0, 0x0

    aput-object p2, p0, v0

    const/4 p2, 0x1

    aput-object p1, p0, p2

    .line 90
    invoke-static {v0, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .locals 0

    .line 156
    invoke-interface {p0, p1}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
.end method

.method static textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 108
    sget-object v0, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p2, "unknown text attribute ~s"

    const/4 v0, 0x0

    aput-object p2, p0, v0

    const/4 p2, 0x1

    aput-object p1, p0, p2

    .line 116
    invoke-static {v0, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "title"

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Lgnu/kawa/models/Window;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "content"

    if-ne p1, v0, :cond_2

    invoke-interface {p0, p2}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    :goto_1
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_2

    :cond_2
    const-string v0, "menubar"

    if-ne p1, v0, :cond_3

    invoke-interface {p0, p2}, Lgnu/kawa/models/Window;->setMenuBar(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p2, "unknown window attribute ~s"

    const/4 v0, 0x0

    aput-object p2, p0, v0

    const/4 p2, 0x1

    aput-object p1, p0, p2

    .line 167
    invoke-static {v0, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method static windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .locals 0

    .line 172
    invoke-interface {p0, p1}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 76
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    check-cast p2, Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lgnu/kawa/slib/gui;->imageHeight(Ljava/awt/image/BufferedImage;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "image-height"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 73
    :cond_1
    :try_start_1
    check-cast p2, Ljava/awt/image/BufferedImage;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lgnu/kawa/slib/gui;->imageWidth(Ljava/awt/image/BufferedImage;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "image-width"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 70
    :cond_2
    :try_start_2
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p1}, Lgnu/kawa/slib/gui;->imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "image-read"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 23
    :cond_3
    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 155
    :try_start_0
    check-cast p2, Lgnu/kawa/models/Window;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3}, Lgnu/kawa/slib/gui;->setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 v0, 0x1

    const-string/jumbo v1, "set-content"

    invoke-direct {p3, p1, v1, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 174
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_0
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Column([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 145
    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Row([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_2
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;

    move-result-object p1

    return-object p1

    .line 100
    :pswitch_3
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;

    move-result-object p1

    return-object p1

    .line 174
    :cond_0
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;

    move-result-object p1

    return-object p1

    .line 60
    :cond_1
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object p1

    return-object p1

    .line 55
    :cond_2
    invoke-static {p2}, Lgnu/kawa/slib/gui;->button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x4

    const v4, -0xbffff

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 76
    :cond_0
    instance-of v0, p2, Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_1

    return v4

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 73
    :cond_2
    instance-of v0, p2, Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_3

    return v4

    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 70
    :cond_4
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_5
    return v4

    .line 23
    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 155
    instance-of v0, p2, Lgnu/kawa/models/Window;

    if-nez v0, :cond_0

    const p1, -0xbffff

    return p1

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 150
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 145
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 123
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 100
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 174
    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 60
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 55
    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
