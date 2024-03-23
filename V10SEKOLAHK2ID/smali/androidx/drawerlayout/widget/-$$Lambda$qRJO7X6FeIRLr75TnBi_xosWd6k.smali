.class public final synthetic Landroidx/drawerlayout/widget/-$$Lambda$qRJO7X6FeIRLr75TnBi_xosWd6k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/-$$Lambda$qRJO7X6FeIRLr75TnBi_xosWd6k;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroidx/drawerlayout/widget/-$$Lambda$qRJO7X6FeIRLr75TnBi_xosWd6k;->f$0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
