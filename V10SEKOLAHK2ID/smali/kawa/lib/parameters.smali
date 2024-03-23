.class public Lkawa/lib/parameters;
.super Lgnu/expr/ModuleBody;
.source "parameters.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nparameters.scm\nScheme\n*S Scheme\n*F\n+ 1 parameters.scm\n/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm\n*L\n2#1,18:2\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$as$Mnlocation$Pc:Lgnu/expr/ModuleMethod;

.field public static final $Prvt$parameterize$Pc:Lkawa/lang/Macro;

.field public static final $instance:Lkawa/lib/parameters;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final make$Mnparameter:Lgnu/expr/ModuleMethod;

.field public static final parameterize:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "save"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quasiquote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "gnu.mapping.Location"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "$lookup$"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "v"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "p"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "parameterize"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/parameters;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x2

    new-array v5, v3, [Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "\u000c\u0018\u000c\u0008\u0003"

    invoke-direct {v7, v8, v6, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v10, v1, [Ljava/lang/Object;

    sget-object v6, Lkawa/lib/parameters;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v10, v4

    const-string v8, "\u0000"

    const-string v9, "\u0011\u0018\u0004\u0002"

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v12, v5, v4

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxPattern;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "\u000c\u0018<,\u000c\u0007\u000c\u000f\u0008\u0013\u001b"

    const/4 v9, 0x4

    invoke-direct {v14, v8, v7, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v7, v1, [Ljava/lang/Object;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v10, "parameterize%"

    invoke-direct {v8, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v4

    const-string v15, "\u0001\u0001\u0000\u0000"

    const-string v16, "\u0011\u0018\u00041!\t\u0003\u0008\u000b\u0012\t\u0010\u001a"

    const/16 v18, 0x0

    move-object v13, v6

    move-object/from16 v17, v7

    invoke-direct/range {v13 .. v18}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v5, v9}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/parameters;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v5, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v2, v4

    new-array v5, v3, [Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "\u000c\u0018\u000c\u0008\u000c\u0007\u000b"

    invoke-direct {v11, v8, v7, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v14, v3, [Ljava/lang/Object;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v8, "try-finally"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    aput-object v7, v14, v4

    sget-object v7, Lkawa/lib/parameters;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v14, v1

    const-string v12, "\u0001\u0000"

    const-string v13, "\u0011\u0018\u0004!\u0011\u0018\u000c\n\u0008\u0011\u0018\u000c\u0003"

    const/4 v15, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v15}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v5, v4

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v10, "\u000c\u0018<,\u000c\u0007\u000c\u000f\u0008\u0013\u000c\u001f#"

    const/4 v11, 0x5

    invoke-direct {v7, v10, v8, v11}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "let*"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    aput-object v10, v8, v4

    sget-object v4, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v8, v1

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v10, "::"

    invoke-direct {v4, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    aput-object v4, v8, v3

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "<gnu.mapping.Location>"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x3

    aput-object v3, v8, v4

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v10, "as-location%"

    invoke-direct {v3, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/parameters;->Lit1:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v8, v9

    sget-object v3, Lkawa/lib/parameters;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v8, v11

    sget-object v3, Lkawa/lib/parameters;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lkawa/lib/parameters;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lkawa/lib/parameters;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lkawa/lib/parameters;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v14, "setWithSave"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v13, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    invoke-static {v10, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    const-string v12, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v13, 0x1e00d

    invoke-static {v9, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v10, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lkawa/lib/parameters;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x1e030

    invoke-static {v13, v14, v12, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    const v14, 0x1e02e

    invoke-static {v10, v13, v12, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const v13, 0x1e00c

    invoke-static {v9, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v9, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const v10, 0x1e006

    invoke-static {v3, v9, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v3, v9, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const/4 v9, 0x6

    aput-object v3, v8, v9

    sget-object v3, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v9, 0x7

    aput-object v3, v8, v9

    sget-object v3, Lkawa/lib/parameters;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lkawa/lib/parameters;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lkawa/lib/parameters;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v14, "setRestore"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v13, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    invoke-static {v10, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v10, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    const v10, 0x2000b

    invoke-static {v3, v9, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    sget-object v9, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lkawa/lib/parameters;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x2002d

    invoke-static {v10, v13, v12, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const v13, 0x2002b

    invoke-static {v9, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const v10, 0x2000a

    invoke-static {v3, v9, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const/16 v9, 0x8

    aput-object v3, v8, v9

    const-string v18, "\u0001\u0001\u0000\u0001\u0000"

    const-string v19, "\u0011\u0018\u0004\u00c1y\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\u0008\u0003)\u0011\u0018,\u0008\u000b\u00184\u0008\u0011\u0018<\t\u0012!\u0011\u0018D\u001b\""

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v20, v8

    invoke-direct/range {v16 .. v21}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v5, v11}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/parameters;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "make-parameter"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/parameters;

    invoke-direct {v0}, Lkawa/lib/parameters;-><init>()V

    sput-object v0, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    sget-object v3, Lkawa/lib/parameters;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v5, 0x2001

    invoke-direct {v0, v2, v1, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/parameters;->make$Mnparameter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/parameters;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1001

    invoke-direct {v0, v2, v4, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/parameters;->$Prvt$as$Mnlocation$Pc:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/parameters;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/parameters;->$Prvt$parameterize$Pc:Lkawa/lang/Macro;

    .line 2
    sget-object v0, Lkawa/lib/parameters;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/parameters;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/parameters;->parameterize:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static asLocation$Pc(Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 4

    .line 14
    instance-of v0, p0, Lgnu/mapping/LocationProc;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 15
    :try_start_0
    check-cast p0, Lgnu/mapping/LocationProc;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "gnu.mapping.LocationProc.getLocation()"

    invoke-direct {v2, v0, v3, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 16
    :cond_0
    check-cast p0, Lgnu/mapping/Location;

    .line 17
    :goto_0
    instance-of v0, p0, Lgnu/mapping/ThreadLocation;

    if-eqz v0, :cond_1

    .line 18
    :try_start_1
    check-cast p0, Lgnu/mapping/ThreadLocation;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object p0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "gnu.mapping.ThreadLocation.getLocation()"

    invoke-direct {v2, v0, v3, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 19
    :cond_1
    :goto_1
    check-cast p0, Lgnu/mapping/Location;

    return-object p0
.end method

.method public static makeParameter(Ljava/lang/Object;)Lgnu/mapping/LocationProc;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/parameters;->makeParameter(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/LocationProc;

    move-result-object p0

    return-object p0
.end method

.method public static makeParameter(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/LocationProc;
    .locals 3

    if-eqz p1, :cond_0

    .line 8
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    :cond_0
    new-instance v0, Lgnu/mapping/ThreadLocation;

    invoke-direct {v0}, Lgnu/mapping/ThreadLocation;-><init>()V

    .line 10
    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 11
    new-instance p0, Lgnu/mapping/LocationProc;

    :try_start_0
    check-cast p1, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0, p1}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    const-string v2, "gnu.mapping.LocationProc.<init>(gnu.mapping.Location,gnu.mapping.Procedure)"

    invoke-direct {v0, p0, v2, v1, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 13
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lkawa/lib/parameters;->asLocation$Pc(Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {p2}, Lkawa/lib/parameters;->makeParameter(Ljava/lang/Object;)Lgnu/mapping/LocationProc;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-static {p2, p3}, Lkawa/lib/parameters;->makeParameter(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/LocationProc;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 13
    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 6
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 2
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
