.class Lcom/google/appinventor/components/runtime/TimePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/TimePicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TimePicker;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->a:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 176
    invoke-virtual {p1}, Landroid/widget/TimePicker;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->a:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/TimePicker;->a(Lcom/google/appinventor/components/runtime/TimePicker;I)I

    .line 178
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->a:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {p1, p3}, Lcom/google/appinventor/components/runtime/TimePicker;->b(Lcom/google/appinventor/components/runtime/TimePicker;I)I

    .line 179
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->a:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TimePicker;->a(Lcom/google/appinventor/components/runtime/TimePicker;)I

    move-result p2

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->a:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/TimePicker;->b(Lcom/google/appinventor/components/runtime/TimePicker;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/TimePicker;->a(Lcom/google/appinventor/components/runtime/TimePicker;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 184
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->a:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TimePicker;->a(Lcom/google/appinventor/components/runtime/TimePicker;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/TimePicker$1$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/TimePicker$1$1;-><init>(Lcom/google/appinventor/components/runtime/TimePicker$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
