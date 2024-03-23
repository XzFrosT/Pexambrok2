.class Lcom/google/appinventor/components/runtime/AdmobMobileAds$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnAdInspectorClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobMobileAds;->OpenAdInspector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AdmobMobileAds;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdmobMobileAds;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds$2;->a:Lcom/google/appinventor/components/runtime/AdmobMobileAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInspectorClosed(Lcom/google/android/gms/ads/AdInspectorError;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobMobileAds$2;->a:Lcom/google/appinventor/components/runtime/AdmobMobileAds;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdmobMobileAds;->AdInspectorClosed()V

    return-void
.end method
