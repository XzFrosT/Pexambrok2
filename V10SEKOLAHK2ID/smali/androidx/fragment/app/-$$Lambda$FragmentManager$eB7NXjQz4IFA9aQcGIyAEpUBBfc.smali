.class public final synthetic Landroidx/fragment/app/-$$Lambda$FragmentManager$eB7NXjQz4IFA9aQcGIyAEpUBBfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/-$$Lambda$FragmentManager$eB7NXjQz4IFA9aQcGIyAEpUBBfc;->f$0:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/-$$Lambda$FragmentManager$eB7NXjQz4IFA9aQcGIyAEpUBBfc;->f$0:Landroidx/fragment/app/FragmentManager;

    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->lambda$new$0$FragmentManager(Landroid/content/res/Configuration;)V

    return-void
.end method
