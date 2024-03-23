.class Lcom/google/appinventor/components/runtime/AppLovinBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinBanner;->SdkKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AppLovinBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinBanner;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$1;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$1;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a(Lcom/google/appinventor/components/runtime/AppLovinBanner;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$1;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->a(Lcom/google/appinventor/components/runtime/AppLovinBanner;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->setMuted(Z)V

    .line 89
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinBanner$1;->a:Lcom/google/appinventor/components/runtime/AppLovinBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinBanner;->SdkInitialized()V

    return-void
.end method
