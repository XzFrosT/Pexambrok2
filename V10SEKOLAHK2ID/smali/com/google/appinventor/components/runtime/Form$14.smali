.class Lcom/google/appinventor/components/runtime/Form$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/Component;

.field final synthetic a:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:Lcom/google/appinventor/components/runtime/Form;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:Lcom/google/appinventor/components/runtime/Component;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1095
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ErrorMessages;->formatMessage(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:Lcom/google/appinventor/components/runtime/Component;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:Ljava/lang/String;

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form$14;->a:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
