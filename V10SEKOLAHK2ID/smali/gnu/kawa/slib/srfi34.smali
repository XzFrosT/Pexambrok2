.class public Lgnu/kawa/slib/srfi34;
.super Lgnu/expr/ModuleBody;
.source "srfi34.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/raise$Mnobject$Mnexception;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi34.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi34.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm\n*L\n1#1,18:1\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$$Lsraise$Mnobject$Mnexception$Gr:Ljava/lang/Class;

.field public static final $Prvt$guard$Mnaux:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/srfi34;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final guard:Lkawa/lang/Macro;

.field public static final raise:Lgnu/expr/ModuleMethod;

.field public static final with$Mnexception$Mnhandler:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 29

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<raise-object-exception>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "ex"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "if"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "let"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "temp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "=>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "else"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "guard-aux"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-array v7, v3, [Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v8, v5, [Ljava/lang/Object;

    sget-object v10, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v8, v4

    const-string v10, "\u000c\u0018\u000c\u0007L\u000c\u0002\u000c\u000f\r\u0017\u0010\u0008\u0008\u0008"

    invoke-direct {v9, v10, v8, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v12, v5, [Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v12, v4

    const-string v10, "\u0001\u0001\u0003"

    const-string v11, "\u0011\u0018\u0004\t\u000b\u0008\u0015\u0013"

    const/4 v13, 0x1

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v14, v7, v4

    new-instance v8, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v10, v5, [Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v10, v4

    const-string v11, "\u000c\u0018\u000c\u0007<\u000c\u000f\u000c\u0002\u000c\u0017\u0008\u0008"

    invoke-direct {v9, v11, v10, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v4

    sget-object v12, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v5

    sget-object v13, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v11, v6

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v14, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v15, 0x43014

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    aput-object v12, v11, v1

    const-string v17, "\u0001\u0001\u0001"

    const-string v18, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c!\t\u0013\u0018\u001c\u0008\u0003"

    const/16 v20, 0x0

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v19, v11

    invoke-direct/range {v15 .. v20}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v8, v7, v5

    new-instance v8, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v11, v5, [Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v4

    const-string v12, "\u000c\u0018\u000c\u0007<\u000c\u000f\u000c\u0002\u000c\u0017\u0008\u000c\u001f\r\' \u0008\u0008"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v11, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v11, v13, [Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v4

    sget-object v12, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v11, v5

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v11, v6

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x48014

    invoke-static {v12, v15, v14, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    aput-object v3, v11, v1

    sget-object v3, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v11, v10

    const-string v23, "\u0001\u0001\u0001\u0001\u0003"

    const-string v24, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c!\t\u0013\u0018\u001c\u0008\u0011\u0018$\t\u0003\t\u001b\u0008%#"

    const/16 v26, 0x1

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v25, v11

    invoke-direct/range {v21 .. v26}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v8, v7, v6

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v8, Lkawa/lang/SyntaxPattern;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v11, "\u000c\u0018\u000c\u0007\u001c\u000c\u000f\u0008\u0008"

    invoke-direct {v8, v11, v9, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v4, [Ljava/lang/Object;

    const-string v19, "\u0001\u0001"

    const-string v20, "\u000b"

    const/16 v22, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v8

    move-object/from16 v21, v9

    invoke-direct/range {v17 .. v22}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v3, v7, v1

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v8, Lkawa/lang/SyntaxPattern;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v11, "\u000c\u0018\u000c\u0007\u001c\u000c\u000f\u0008\u000c\u0017\r\u001f\u0018\u0008\u0008"

    invoke-direct {v8, v11, v9, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v10, [Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v4

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v5

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v6

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v1

    const-string v25, "\u0001\u0001\u0001\u0003"

    const-string v26, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c\u0011\u0018\u000c\u0008\u0011\u0018\u001c\t\u0003\t\u0013\u0008\u001d\u001b"

    const/16 v28, 0x1

    move-object/from16 v23, v3

    move-object/from16 v24, v8

    move-object/from16 v27, v9

    invoke-direct/range {v23 .. v28}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v3, v7, v10

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v8, Lkawa/lang/SyntaxPattern;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v11, "\u000c\u0018\u000c\u0007L\u000c\u000f\u000c\u0017\r\u001f\u0018\u0008\u0008\u0008"

    invoke-direct {v8, v11, v9, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v6, [Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v4

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v5

    const-string v19, "\u0001\u0001\u0001\u0003"

    const-string v20, "\u0011\u0018\u0004\t\u000bA\u0011\u0018\u000c\t\u0013\u0008\u001d\u001b\u0008\u0003"

    const/16 v22, 0x1

    move-object/from16 v17, v3

    move-object/from16 v18, v8

    move-object/from16 v21, v9

    invoke-direct/range {v17 .. v22}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v3, v7, v13

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v8, Lkawa/lang/SyntaxPattern;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v11, "\u000c\u0018\u000c\u0007L\u000c\u000f\u000c\u0017\r\u001f\u0018\u0008\u0008\u000c\'\r/(\u0008\u0008"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v9, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v4

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v5

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v6

    const-string v25, "\u0001\u0001\u0001\u0003\u0001\u0003"

    const-string v26, "\u0011\u0018\u0004\t\u000bA\u0011\u0018\u000c\t\u0013\u0008\u001d\u001b\u0008\u0011\u0018\u0014\t\u0003\t#\u0008-+"

    move-object/from16 v23, v3

    move-object/from16 v24, v8

    move-object/from16 v27, v9

    invoke-direct/range {v23 .. v28}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v3, v7, v12

    invoke-direct {v0, v2, v7, v12}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v7, "guard"

    invoke-direct {v3, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/srfi34;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v2, v4

    new-array v3, v5, [Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxRule;

    new-instance v8, Lkawa/lang/SyntaxPattern;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v11, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    invoke-direct {v8, v11, v9, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v15, "try-catch"

    invoke-direct {v11, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v4

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v5

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v6

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v15, "<java.lang.Throwable>"

    invoke-direct {v11, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v1

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v10

    sget-object v10, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v15, "instance?"

    invoke-direct {v11, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x1b016

    invoke-static {v6, v5, v14, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x1b013    # 1.54999E-40f

    invoke-static {v15, v1, v14, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x1b008

    invoke-static {v11, v1, v14, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v11, "field"

    invoke-direct {v6, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v15, "as"

    invoke-direct {v11, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x1c02c

    invoke-static {v4, v12, v14, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v12, 0x1c013

    invoke-static {v15, v4, v14, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v12, 0x1c00f

    invoke-static {v11, v4, v14, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v13, "quote"

    invoke-direct {v11, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v15, "value"

    invoke-direct {v13, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v5, 0x1c031

    invoke-static {v13, v15, v14, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    invoke-static {v11, v13, v14, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x1c030

    invoke-static {v5, v11, v14, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    invoke-static {v4, v5, v14, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v5, 0x1c008

    invoke-static {v6, v4, v14, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    sget-object v6, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v12, 0x1d008

    invoke-static {v6, v11, v14, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    invoke-static {v4, v6, v14, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v5, 0x1b008

    invoke-static {v1, v4, v14, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v4, 0x1b004

    invoke-static {v10, v1, v14, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v5, v14, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v9, v4

    sget-object v1, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x6

    aput-object v1, v9, v4

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v4, "primitive-throw"

    invoke-direct {v1, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v6, 0x1e022

    invoke-static {v4, v5, v14, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v5, 0x1e011

    invoke-static {v1, v4, v14, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v9, v4

    const-string v19, "\u0001\u0000\u0000"

    const-string v20, "\u0011\u0018\u0004!\u0011\u0018\u000c\u0012\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$)\u0008\t\u0003\u0018,\u0008\u0011\u00184\u0011\u0018<\n"

    const/16 v22, 0x0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v21, v9

    invoke-direct/range {v17 .. v22}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x0

    aput-object v7, v3, v1

    const/4 v1, 0x3

    invoke-direct {v0, v2, v3, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "raise"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "with-exception-handler"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/slib/srfi34;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi34;-><init>()V

    sput-object v0, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    const-class v0, Lgnu/kawa/slib/raise$Mnobject$Mnexception;

    sput-object v0, Lgnu/kawa/slib/srfi34;->$Prvt$$Lsraise$Mnobject$Mnexception$Gr:Ljava/lang/Class;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    sget-object v2, Lgnu/kawa/slib/srfi34;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x2002

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi34;->with$Mnexception$Mnhandler:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi34;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1001

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi34;->raise:Lgnu/expr/ModuleMethod;

    .line 3
    sget-object v0, Lgnu/kawa/slib/srfi34;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/srfi34;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi34;->guard:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/srfi34;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi34;->$Prvt$guard$Mnaux:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static raise(Ljava/lang/Object;)V
    .locals 1

    .line 18
    new-instance v0, Lgnu/kawa/slib/raise$Mnobject$Mnexception;

    invoke-direct {v0, p0}, Lgnu/kawa/slib/raise$Mnobject$Mnexception;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static withExceptionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    :try_start_0
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lgnu/kawa/slib/raise$Mnobject$Mnexception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p0, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p1, p1, Lgnu/kawa/slib/raise$Mnobject$Mnexception;->value:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 17
    invoke-static {p2}, Lgnu/kawa/slib/srfi34;->raise(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11
    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi34;->withExceptionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 17
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11
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

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
