.class public Lkawa/lib/misc_syntax;
.super Lgnu/expr/ModuleBody;
.source "misc_syntax.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmisc_syntax.scm\nScheme\n*S Scheme\n*F\n+ 1 misc_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm\n*L\n1#1,75:1\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$define$Mnconstant:Lgnu/mapping/Location;

.field public static final $instance:Lkawa/lib/misc_syntax;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxPattern;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lkawa/lang/SyntaxRules;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lkawa/lang/SyntaxPattern;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxTemplate;

.field static final Lit16:Lkawa/lang/SyntaxPattern;

.field static final Lit17:Lkawa/lang/SyntaxTemplate;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lkawa/lang/SyntaxPattern;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lkawa/lang/SyntaxTemplate;

.field static final Lit22:Lkawa/lang/SyntaxTemplate;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxTemplate;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lkawa/lang/SyntaxPattern;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lkawa/lang/SyntaxPattern;

.field public static final include:Lkawa/lang/Macro;

.field public static final include$Mnrelative:Lkawa/lang/Macro;

.field public static final module$Mnuri:Lkawa/lang/Macro;

.field public static final provide:Lkawa/lang/Macro;

.field public static final resource$Mnurl:Lkawa/lang/Macro;

.field public static final test$Mnbegin:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%test-begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "require"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "else"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "cond-expand"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "srfi-64"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quasiquote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "$lookup$"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "\u0001\u0001"

    const-string v4, "\u000b"

    invoke-direct {v0, v3, v4, v2, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4, v2, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit21:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "\u0008\u000b"

    invoke-direct {v0, v3, v5, v2, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "\u000c\u0007\u000c\u000f\u0008"

    const/4 v6, 0x2

    invoke-direct {v0, v5, v2, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit19:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "include-relative"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    sget-object v8, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v1

    const-string v8, "\u0001\u0001\u0003"

    const-string v9, "\u0011\u0018\u0004\u0008\u0015\u0013"

    invoke-direct {v0, v8, v9, v7, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit17:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "\r\u0017\u0010\u0008\u0008"

    const/4 v9, 0x3

    invoke-direct {v0, v8, v7, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit16:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "\u0003"

    invoke-direct {v0, v3, v8, v7, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4, v7, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v5, v3, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit13:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v3, "include"

    invoke-direct {v0, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "resource-url"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/misc_syntax;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v1

    new-array v4, v2, [Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "\u000c\u0018\u000c\u0007\u0008"

    invoke-direct {v11, v8, v7, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v7, 0x6

    new-array v14, v7, [Ljava/lang/Object;

    sget-object v7, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "gnu.text.URLPath"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v15, "valueOf"

    invoke-direct {v13, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v13, v15}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    invoke-static {v10, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    const-string v15, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v12, 0x26007

    invoke-static {v7, v10, v15, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    aput-object v7, v14, v1

    sget-object v7, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v14, v2

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "module-uri"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/misc_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x2700b

    invoke-static {v10, v12, v15, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    sget-object v12, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v1, "resolve"

    invoke-direct {v2, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v12, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v10, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v7, v1, v15, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    aput-object v1, v14, v6

    sget-object v1, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v7, "toURL"

    invoke-direct {v2, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    aput-object v1, v14, v9

    sget-object v1, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v7, "openConnection"

    invoke-direct {v2, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v14, v2

    sget-object v1, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v10, "getURL"

    invoke-direct {v7, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v7, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    invoke-static {v1, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v14, v7

    const-string v12, "\u0001"

    const-string v13, "\u0011\u0018\u0004\u0008\u0008\u0011\u0018\u000c\u0099\u0008\u0011\u0018\u000ca\u0008\u0011\u0018\u000c)\u0011\u0018\u0014\u0008\u0003\u0018\u001c\u0018$\u0018,"

    const/4 v1, 0x0

    move-object v10, v5

    move-object v7, v15

    move v15, v1

    invoke-direct/range {v10 .. v15}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x0

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit11:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "\u000c\u0007\u0008"

    invoke-direct {v0, v1, v3, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit9:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v4, "test-begin"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/misc_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v6, [Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-direct {v11, v8, v10, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v14, v2, [Ljava/lang/Object;

    sget-object v8, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v14, v4

    sget-object v4, Lkawa/lib/misc_syntax;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x1501e

    invoke-static {v10, v12, v7, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const v12, 0x15015

    invoke-static {v8, v10, v7, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v10, Lkawa/lib/misc_syntax;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lkawa/lib/misc_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lkawa/lib/misc_syntax;->Lit30:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v6, 0x15036

    invoke-static {v2, v9, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    invoke-static {v15, v2, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v9, 0x15035

    invoke-static {v2, v6, v7, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v6, 0x1502c

    invoke-static {v13, v2, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v9, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v6, 0x15026

    invoke-static {v10, v2, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v9, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    invoke-static {v8, v2, v7, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v6, 0x15008

    invoke-static {v4, v2, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v14, v4

    sget-object v2, Lkawa/lib/misc_syntax;->Lit31:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x2

    aput-object v2, v14, v4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v6, 0x16020

    invoke-static {v2, v4, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v14, v4

    const-string v12, "\u0001"

    const-string v13, "\u0011\u0018\u0004\u0011\u0018\u000c\u0008\u0011\u0018\u0014\t\u0003\u0018\u001c"

    const/4 v15, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x0

    aput-object v5, v3, v2

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v8, 0x2

    invoke-direct {v9, v6, v5, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v5, 0x3

    new-array v12, v5, [Ljava/lang/Object;

    sget-object v5, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v12, v2

    sget-object v2, Lkawa/lib/misc_syntax;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v10, 0x1901e

    invoke-static {v6, v8, v7, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v8, 0x19015

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sget-object v6, Lkawa/lib/misc_syntax;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lkawa/lib/misc_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lkawa/lib/misc_syntax;->Lit30:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x19036

    invoke-static {v13, v14, v7, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    invoke-static {v11, v13, v7, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x19035

    invoke-static {v11, v13, v7, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const v13, 0x1902c

    invoke-static {v10, v11, v7, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v10, v11, v7, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const v11, 0x19026

    invoke-static {v6, v10, v7, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v6, v10, v7, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x19008

    invoke-static {v2, v5, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v12, v5

    sget-object v2, Lkawa/lib/misc_syntax;->Lit31:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x2

    aput-object v2, v12, v5

    const-string v10, "\u0001\u0001"

    const-string v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0008\u0011\u0018\u0014\t\u0003\u0008\u000b"

    const/4 v13, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x1

    aput-object v4, v3, v2

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "\u000c\u0007\u000b"

    invoke-direct {v0, v1, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit5:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "::"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "<int>"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x7b

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v6, 0xd016

    invoke-static {v4, v5, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v5, 0xd010

    invoke-static {v3, v4, v7, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const v4, 0xd00c

    invoke-static {v2, v3, v7, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u0001\u0001\u0001"

    const-string v4, "\u0018\u0004"

    invoke-direct {v0, v2, v4, v1, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "\u0013"

    invoke-direct {v0, v2, v4, v1, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit3:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v5, "define-constant"

    invoke-direct {v1, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    aput-object v1, v4, v3

    const-string v1, "\u0018\u0004"

    invoke-direct {v0, v2, v1, v4, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit1:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "provide"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/misc_syntax;

    invoke-direct {v0}, Lkawa/lib/misc_syntax;-><init>()V

    sput-object v0, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    const-string v0, "kawa.lib.prim_syntax"

    const-string v1, "define$Mnconstant"

    .line 1
    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->$Prvt$define$Mnconstant:Lgnu/mapping/Location;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    const/4 v3, 0x0

    const/16 v4, 0x1001

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->provide:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->test$Mnbegin:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x2

    invoke-direct {v1, v2, v5, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string/jumbo v5, "source-location"

    const-string v6, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:29"

    invoke-virtual {v1, v5, v6}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->module$Mnuri:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit11:Lkawa/lang/SyntaxRules;

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->resource$Mnurl:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string/jumbo v5, "source-location"

    const-string v6, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:54"

    invoke-virtual {v1, v5, v6}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->include:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x4

    invoke-direct {v1, v2, v5, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v2, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->include$Mnrelative:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit1:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v4, Lkawa/lib/misc_syntax;->Lit2:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "%provide%"

    aput-object v5, v4, v2

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v5, Lkawa/lib/misc_syntax;->Lit3:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    check-cast v2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v2

    invoke-static {p0, v2}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lkawa/lib/misc_syntax;->Lit4:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    invoke-static {v1, p0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Lgnu/mapping/WrongType;

    const-string/jumbo v1, "symbol->string"

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 6
    :cond_0
    sget-object v1, Lkawa/lib/misc_syntax;->Lit5:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "provide requires a quoted feature-name"

    .line 15
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_0
    invoke-static {p0, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit9:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/functions/GetModuleClass;->getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static lambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit13:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    const-string/jumbo v3, "syntax-case"

    if-eqz v1, :cond_0

    .line 65
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit14:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 66
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v4, Lkawa/lib/misc_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    new-instance v4, Lkawa/lib/misc_syntax$frame;

    invoke-direct {v4}, Lkawa/lib/misc_syntax$frame;-><init>()V

    iput-object v1, v4, Lkawa/lib/misc_syntax$frame;->k:Ljava/lang/Object;

    .line 57
    :try_start_0
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lkawa/lib/ports;->openInputFile(Lgnu/text/Path;)Lgnu/mapping/InPort;

    move-result-object p0

    iput-object p0, v4, Lkawa/lib/misc_syntax$frame;->p:Lgnu/mapping/InPort;

    .line 58
    invoke-virtual {v4}, Lkawa/lib/misc_syntax$frame;->lambda4f()Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit16:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit17:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    const-string v3, "open-input-file"

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 67
    :cond_0
    invoke-static {v3, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static lambda5(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 70
    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit19:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    check-cast p0, Lgnu/lists/PairWithPosition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-virtual {p0}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lkawa/lib/misc_syntax;->Lit21:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkawa/lib/misc_syntax;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, v3}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v3

    sget-object v4, Lkawa/lib/misc_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/text/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "path-pair"

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "syntax-case"

    .line 75
    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 54
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lkawa/lib/misc_syntax;->lambda5(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p2}, Lkawa/lib/misc_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_2
    invoke-static {p2}, Lkawa/lib/misc_syntax;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 0
    :cond_3
    invoke-static {p2}, Lkawa/lib/misc_syntax;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 0
    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 54
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 29
    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
