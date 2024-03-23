.class Lcom/google/appinventor/components/runtime/NiotronAirtable$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic a:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;Lorg/json/JSONArray;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 593
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->a:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->a(Lcom/google/appinventor/components/runtime/NiotronAirtable;)I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->a(Lcom/google/appinventor/components/runtime/NiotronAirtable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->GotAllRows(IILjava/lang/String;)V

    return-void
.end method
