.class public final synthetic Landroidx/profileinstaller/-$$Lambda$ProfileInstallerInitializer$xsq4ys9qdRd5X8yDRjUwLiGqGVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/profileinstaller/ProfileInstallerInitializer;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/-$$Lambda$ProfileInstallerInitializer$xsq4ys9qdRd5X8yDRjUwLiGqGVM;->f$0:Landroidx/profileinstaller/ProfileInstallerInitializer;

    iput-object p2, p0, Landroidx/profileinstaller/-$$Lambda$ProfileInstallerInitializer$xsq4ys9qdRd5X8yDRjUwLiGqGVM;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/profileinstaller/-$$Lambda$ProfileInstallerInitializer$xsq4ys9qdRd5X8yDRjUwLiGqGVM;->f$0:Landroidx/profileinstaller/ProfileInstallerInitializer;

    iget-object v1, p0, Landroidx/profileinstaller/-$$Lambda$ProfileInstallerInitializer$xsq4ys9qdRd5X8yDRjUwLiGqGVM;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->lambda$delayAfterFirstFrame$0$ProfileInstallerInitializer(Landroid/content/Context;)V

    return-void
.end method
