.class public Lgnu/kawa/slib/cut;
.super Lgnu/expr/ModuleBody;
.source "cut.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ncut.scm\nScheme\n*S Scheme\n*F\n+ 1 cut.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm\n*L\n51#1:51\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

.field public static final $Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/cut;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final cut:Lkawa/lang/Macro;

.field public static final cute:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "rest-slot"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "apply"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lambda"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "let"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<...>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "cute"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/cut;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v12, "\u000c\u0018\u0003"

    invoke-direct {v6, v12, v5, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v1, [Ljava/lang/Object;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v7, "srfi-26-internal-cute"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v9, v4

    const-string v7, "\u0000"

    const-string v8, "\u0011\u0018\u0004\t\u0010\t\u0010\t\u0010\u0002"

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v3, v4

    invoke-direct {v0, v2, v3, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/cut;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v5, "cut"

    invoke-direct {v3, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/cut;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v2, v4

    new-array v3, v1, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-direct {v6, v12, v5, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v1, [Ljava/lang/Object;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v7, "srfi-26-internal-cut"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v9, v4

    const-string v7, "\u0000"

    const-string v8, "\u0011\u0018\u0004\t\u0010\t\u0010\u0002"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v3, v4

    invoke-direct {v0, v2, v3, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/cut;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    sget-object v5, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v1

    sget-object v5, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x2

    aput-object v5, v3, v6

    const/4 v5, 0x4

    new-array v7, v5, [Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v10, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u0008"

    invoke-direct {v9, v10, v8, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v12, v6, [Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v12, v4

    sget-object v8, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v12, v1

    const-string v10, "\u0003\u0001\u0001\u0003"

    const-string v11, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c\u0019\u0008\u0005\u0003\u0008\t\u0013\u0008\u001d\u001b"

    const/4 v13, 0x1

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v14, v7, v4

    new-instance v8, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v10, v1, [Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v10, v4

    const-string v11, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u000c\u0002\u0008"

    invoke-direct {v9, v11, v10, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v4

    sget-object v12, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v1

    sget-object v12, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v6

    sget-object v13, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v11, v2

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v14, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    const v15, 0x57048

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    aput-object v12, v11, v5

    const-string v17, "\u0003\u0001\u0001\u0003"

    const-string v18, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c)\u0011\u0005\u0003\u0018\u0014\u0008\u0011\u0018\u001c\t\u0013\u0011\u001d\u001b\u0018$"

    const/16 v20, 0x1

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v19, v11

    invoke-direct/range {v15 .. v20}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v8, v7, v1

    new-instance v8, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v11, v1, [Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v4

    const-string v12, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u0002\u001b"

    invoke-direct {v9, v12, v11, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v11, v2, [Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v4

    sget-object v12, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x5d016

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    aput-object v12, v11, v1

    sget-object v12, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x5d03b

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v23, "\u0003\u0001\u0003\u0000"

    const-string v24, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\t\u000b)\u0011\u0015\u0013\u0018\u0014\u001a"

    const/16 v26, 0x1

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v25, v11

    invoke-direct/range {v21 .. v26}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v8, v7, v6

    new-instance v8, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "\u000c\u0018\u000c\u0007\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u001f#"

    invoke-direct {v9, v12, v11, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v11, v2, [Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v4

    sget-object v12, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v1

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x62039

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v17, "\u0001\u0001\u0003\u0001\u0000"

    const-string v18, "\u0011\u0018\u0004\t\u00039)\u0011\u0018\u000c\u0008\u001b\u000b)\u0011\u0015\u0013\u0018\u0014\""

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v19, v11

    invoke-direct/range {v15 .. v20}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v8, v7, v2

    invoke-direct {v0, v3, v7, v10}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/cut;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v3, v4

    sget-object v7, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v3, v1

    sget-object v7, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v3, v6

    new-array v7, v5, [Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v10, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u0008"

    invoke-direct {v9, v10, v8, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v12, v6, [Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v12, v4

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v10, "begin"

    invoke-direct {v8, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v12, v1

    const-string v10, "\u0003\u0001\u0003"

    const-string v11, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003\u0008)\u0011\u0018\u000c\u0008\u000b\u0008\u0015\u0013"

    const/4 v13, 0x1

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v15, v7, v4

    new-instance v8, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v10, v1, [Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v10, v4

    const-string v11, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u000c\u0002\u0008"

    invoke-direct {v9, v11, v10, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v10, v5, [Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v10, v4

    sget-object v11, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v10, v1

    sget-object v12, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v10, v6

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x3d03e

    invoke-static {v11, v12, v14, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v18, "\u0003\u0001\u0003"

    const-string v19, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\u0008\u0011\u0018\u0014\t\u000b\u0011\u0015\u0013\u0018\u001c"

    const/16 v21, 0x1

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v21}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v8, v7, v1

    new-instance v8, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v10, v1, [Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v10, v4

    const-string v11, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0002\u0013"

    invoke-direct {v9, v11, v10, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v10, v2, [Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v10, v4

    sget-object v11, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x4102b

    invoke-static {v11, v12, v14, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    aput-object v11, v10, v1

    sget-object v11, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x4103c

    invoke-static {v11, v12, v14, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    aput-object v11, v10, v6

    const-string v24, "\u0003\u0003\u0000"

    const-string v25, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c)\u0011\r\u000b\u0018\u0014\u0012"

    const/16 v27, 0x1

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v26, v10

    invoke-direct/range {v22 .. v27}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v8, v7, v6

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0017\u001b"

    invoke-direct {v12, v9, v8, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v15, v1, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v15, v4

    const-string v13, "\u0003\u0003\u0001\u0000"

    const-string v14, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003)\u0011\r\u000b\u0008\u0013\u001a"

    const/16 v16, 0x1

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v7, v2

    invoke-direct {v0, v3, v7, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/cut;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/kawa/slib/cut;

    invoke-direct {v0}, Lgnu/kawa/slib/cut;-><init>()V

    sput-object v0, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/cut;->Lit1:Lkawa/lang/SyntaxRules;

    invoke-static {v1, v2, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

    .line 51
    sget-object v0, Lgnu/kawa/slib/cut;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->cut:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/cut;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit7:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->cute:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 51
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
