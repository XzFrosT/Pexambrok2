.class public final synthetic Landroidx/appcompat/app/-$$Lambda$2a8cTI6tsRhz2rkuRGsIc5Hrno8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/-$$Lambda$2a8cTI6tsRhz2rkuRGsIc5Hrno8;->f$0:Landroidx/appcompat/app/AppCompatDialog;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/-$$Lambda$2a8cTI6tsRhz2rkuRGsIc5Hrno8;->f$0:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDialog;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
