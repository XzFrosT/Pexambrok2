.class Lcom/google/appinventor/components/runtime/NiotronAirtable$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->a(ILcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAirtable;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;I)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->a:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->RowUpdated(I)V

    return-void
.end method
