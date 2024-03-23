.class public Lgnu/kawa/slib/DefineRecordType;
.super Lgnu/expr/ModuleBody;
.source "DefineRecordType.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefineRecordType.scm\nScheme\n*S Scheme\n*F\n+ 1 DefineRecordType.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm\n*L\n19#1:19\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$$Pcdefine$Mnrecord$Mnfield:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/DefineRecordType;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final define$Mnrecord$Mntype:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "tmp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "slot-set!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "slot-ref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "::"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "obj"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "define"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "%define-record-field"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/DefineRecordType;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x2

    new-array v5, v3, [Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v13, 0x3

    invoke-direct {v7, v8, v6, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v14, 0x5

    new-array v10, v14, [Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v10, v4

    sget-object v6, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v10, v1

    sget-object v6, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v10, v3

    sget-object v6, Lgnu/kawa/slib/DefineRecordType;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v10, v13

    sget-object v6, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x4

    aput-object v6, v10, v15

    const-string v8, "\u0001\u0001\u0001"

    const-string v9, "\u0011\u0018\u0004Y\t\u0013\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003\u0008\u0011\u0018\u001c\u0011\u0018\u000c\u0008\u0011\u0018$\u0008\u000b"

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v12, v5, v4

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    invoke-direct {v7, v9, v8, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v8, 0xa

    new-array v9, v8, [Ljava/lang/Object;

    sget-object v10, Lgnu/kawa/slib/DefineRecordType;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v9, v4

    sget-object v10, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v9, v1

    sget-object v10, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v9, v3

    sget-object v10, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v9, v13

    sget-object v10, Lgnu/kawa/slib/DefineRecordType;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v9, v15

    sget-object v10, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v9, v14

    sget-object v10, Lgnu/kawa/slib/DefineRecordType;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm"

    const v8, 0x33028

    invoke-static {v10, v11, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const/4 v10, 0x6

    aput-object v8, v9, v10

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v11, "<void>"

    invoke-direct {v8, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    const/4 v11, 0x7

    aput-object v8, v9, v11

    sget-object v8, Lgnu/kawa/slib/DefineRecordType;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v22, 0x8

    aput-object v8, v9, v22

    sget-object v8, Lgnu/kawa/slib/DefineRecordType;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x3401d

    invoke-static {v8, v10, v12, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const/16 v10, 0x9

    aput-object v8, v9, v10

    const-string v18, "\u0001\u0001\u0001\u0001"

    const-string v19, "\u0011\u0018\u0004\u00e1\u0011\u0018\u000cY\t\u0013\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0003\u0008\u0011\u0018$\u0011\u0018\u0014\u0008\u0011\u0018,\u0008\u000b\u0008\u0011\u0018\u000ci\t\u001bA\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0003\u00184\u0011\u0018\u001c\u0011\u0018<\u0008\u0011\u0018D\u0011\u0018\u0014)\u0011\u0018,\u0008\u000b\u0018L"

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v21}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v5, v15}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "define-record-type"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/DefineRecordType;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v2, v4

    new-array v5, v1, [Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "\u000c\u0018\u000c\u0007<\u000c\u000f\r\u0017\u0010\u0008\u0008\u000c\u001f-\u000c\'\u000c/3 \u0018\u0008"

    invoke-direct {v7, v9, v8, v11}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v8, 0xf

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/DefineRecordType;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v4

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v14, "define-simple-class"

    invoke-direct {v9, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v1

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v8, v3

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v9, 0x1e01b

    invoke-static {v1, v3, v12, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    aput-object v1, v8, v13

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v8, v15

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v3, "<boolean>"

    invoke-direct {v1, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x5

    aput-object v1, v8, v3

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v3, "instance?"

    invoke-direct {v1, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x6

    aput-object v1, v8, v3

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v8, v11

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v3, "let"

    invoke-direct {v1, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    aput-object v1, v8, v22

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v8, v10

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v3, "make"

    invoke-direct {v1, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xa

    aput-object v1, v8, v3

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xb

    aput-object v1, v8, v3

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xc

    aput-object v1, v8, v3

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v9, 0x23005

    invoke-static {v1, v3, v12, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v8, v3

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xe

    aput-object v1, v8, v3

    const-string v18, "\u0001\u0001\u0003\u0001\u0003\u0003\u0002"

    const-string v19, "\u0011\u0018\u0004Y\u0011\u0018\u000c\t\u0003\t\u0010\u0008%\u0008#\u00b9\u0011\u0018\u0014!\t\u001b\u0018\u001c\u0011\u0018$\u0011\u0018,\u0008\u0011\u00184\u0011\u0018<\u0008\u0003\u01c1\u0011\u0018\u0014)\t\u000b\u0008\u0015\u0013\u0011\u0018$\t\u0003\u0008\u0011\u0018Dy\u0008\u0011\u0018L\u0011\u0018$\t\u0003\u0008\u0011\u0018T\u0008\u0003\u0099\u0011\u0018\u0004\u0008\u0015\u0011\u0018\\\u0011\u0018L)\u0011\u0018d\u0008\u0013\u0008\u0013\u0018l\u0008%\u0011\u0018t\t\u0003\t#\t+2"

    const/16 v21, 0x1

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v20, v8

    invoke-direct/range {v16 .. v21}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v5, v4

    invoke-direct {v0, v2, v5, v11}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/kawa/slib/DefineRecordType;

    invoke-direct {v0}, Lgnu/kawa/slib/DefineRecordType;-><init>()V

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->$instance:Lgnu/kawa/slib/DefineRecordType;

    .line 19
    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/DefineRecordType;->Lit1:Lkawa/lang/SyntaxRules;

    invoke-static {v1, v2, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->define$Mnrecord$Mntype:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/DefineRecordType;->$instance:Lgnu/kawa/slib/DefineRecordType;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->$Prvt$$Pcdefine$Mnrecord$Mnfield:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/DefineRecordType;->$instance:Lgnu/kawa/slib/DefineRecordType;

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

    .line 19
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
