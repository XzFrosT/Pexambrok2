.class Lcom/google/appinventor/components/runtime/YandexTranslate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/YandexTranslate;->RequestTranslation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/YandexTranslate;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->a:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "RequestTranslation"

    const/4 v1, 0x0

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->a:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/YandexTranslate;->a(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->a:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->a:Lcom/google/appinventor/components/runtime/YandexTranslate;

    const/16 v4, 0x89b

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :catch_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->a:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->a:Lcom/google/appinventor/components/runtime/YandexTranslate;

    const/16 v4, 0x89a

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
