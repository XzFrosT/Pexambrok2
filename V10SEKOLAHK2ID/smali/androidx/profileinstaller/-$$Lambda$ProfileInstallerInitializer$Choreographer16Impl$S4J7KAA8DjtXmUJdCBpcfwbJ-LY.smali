.class public final synthetic Landroidx/profileinstaller/-$$Lambda$ProfileInstallerInitializer$Choreographer16Impl$S4J7KAA8DjtXmUJdCBpcfwbJ-LY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/-$$Lambda$ProfileInstallerInitializer$Choreographer16Impl$S4J7KAA8DjtXmUJdCBpcfwbJ-LY;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Landroidx/profileinstaller/-$$Lambda$ProfileInstallerInitializer$Choreographer16Impl$S4J7KAA8DjtXmUJdCBpcfwbJ-LY;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Landroidx/profileinstaller/ProfileInstallerInitializer$Choreographer16Impl;->lambda$postFrameCallback$0(Ljava/lang/Runnable;J)V

    return-void
.end method
