.class public final synthetic Landroidx/appcompat/app/-$$Lambda$AppLocalesStorageHelper$SerialExecutor$9uAXZdsWa7s5WwQwWJXdzYxUqQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/-$$Lambda$AppLocalesStorageHelper$SerialExecutor$9uAXZdsWa7s5WwQwWJXdzYxUqQk;->f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    iput-object p2, p0, Landroidx/appcompat/app/-$$Lambda$AppLocalesStorageHelper$SerialExecutor$9uAXZdsWa7s5WwQwWJXdzYxUqQk;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/-$$Lambda$AppLocalesStorageHelper$SerialExecutor$9uAXZdsWa7s5WwQwWJXdzYxUqQk;->f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    iget-object v1, p0, Landroidx/appcompat/app/-$$Lambda$AppLocalesStorageHelper$SerialExecutor$9uAXZdsWa7s5WwQwWJXdzYxUqQk;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->lambda$execute$0$AppLocalesStorageHelper$SerialExecutor(Ljava/lang/Runnable;)V

    return-void
.end method
