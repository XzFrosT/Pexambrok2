.class Lcom/google/appinventor/components/runtime/NiotronAirtable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->GetCell(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$1;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$1;->a:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$1;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$1;->a:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->a(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Airtable Component"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
