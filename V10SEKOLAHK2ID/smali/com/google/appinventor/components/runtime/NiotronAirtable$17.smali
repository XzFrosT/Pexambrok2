.class Lcom/google/appinventor/components/runtime/NiotronAirtable$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->CreateRow(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    .line 197
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->createRow(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$17;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->createRow(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Airtable Component"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
