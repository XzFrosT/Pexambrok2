.class Lcom/google/appinventor/components/runtime/NiotronAirtable$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->a(ILjava/lang/String;Ljava/util/List;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/util/List;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$13;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$13;->a:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$13;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$13;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$13;->a:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$13;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->GotRow(ILjava/util/List;)V

    return-void
.end method
