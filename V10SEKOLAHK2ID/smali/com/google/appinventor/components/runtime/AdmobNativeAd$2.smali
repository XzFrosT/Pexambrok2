.class Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobNativeAd;->LoadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdmobNativeAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 6

    .line 59
    :try_start_0
    new-instance v0, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    invoke-direct {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;-><init>()V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Ljava/lang/String;

    .line 60
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->b:Ljava/lang/String;

    .line 61
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withPrimaryTextTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->c:Ljava/lang/String;

    .line 62
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withSecondaryTextTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->d:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withTertiaryTextTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->e:Ljava/lang/String;

    .line 64
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withCallToActionBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->f:Ljava/lang/String;

    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withCallToActionTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->build()Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->a(Lcom/google/appinventor/components/runtime/AdmobNativeAd;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 68
    new-instance v1, Lcom/google/android/ads/nativetemplates/TemplateView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->a(Lcom/google/appinventor/components/runtime/AdmobNativeAd;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "medium_template"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "small_template"

    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/google/android/ads/nativetemplates/TemplateView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->a(Lcom/google/appinventor/components/runtime/AdmobNativeAd;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, -0x2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    const/16 v5, 0xa0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->dp(I)I

    move-result v4

    :goto_1
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/google/android/ads/nativetemplates/TemplateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->a(Lcom/google/appinventor/components/runtime/AdmobNativeAd;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 71
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->a(Lcom/google/appinventor/components/runtime/AdmobNativeAd;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->setStyles(Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;)V

    .line 73
    invoke-virtual {v1, p1}, Lcom/google/android/ads/nativetemplates/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 74
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->AdLoaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 76
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$2;->a:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->a(Lcom/google/appinventor/components/runtime/AdmobNativeAd;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Invalid hex value given in Load Ad Block"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
