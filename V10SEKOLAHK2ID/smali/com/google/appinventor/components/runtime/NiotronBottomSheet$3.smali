.class Lcom/google/appinventor/components/runtime/NiotronBottomSheet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronBottomSheet;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronBottomSheet;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$3;->a:Lcom/google/appinventor/components/runtime/NiotronBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$3;->a:Lcom/google/appinventor/components/runtime/NiotronBottomSheet;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->BottomSheetDismissed()V

    return-void
.end method
