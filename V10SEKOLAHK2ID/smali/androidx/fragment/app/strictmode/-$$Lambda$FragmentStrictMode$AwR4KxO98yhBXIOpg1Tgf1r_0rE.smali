.class public final synthetic Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$AwR4KxO98yhBXIOpg1Tgf1r_0rE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/fragment/app/strictmode/Violation;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$AwR4KxO98yhBXIOpg1Tgf1r_0rE;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$AwR4KxO98yhBXIOpg1Tgf1r_0rE;->f$1:Landroidx/fragment/app/strictmode/Violation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$AwR4KxO98yhBXIOpg1Tgf1r_0rE;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$AwR4KxO98yhBXIOpg1Tgf1r_0rE;->f$1:Landroidx/fragment/app/strictmode/Violation;

    invoke-static {v0, v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->lambda$AwR4KxO98yhBXIOpg1Tgf1r_0rE(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V

    return-void
.end method
