.class Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;

.field final synthetic a:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;Ljava/lang/Exception;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$2;->a:Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$2;->a:Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->a:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$2;->a:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
