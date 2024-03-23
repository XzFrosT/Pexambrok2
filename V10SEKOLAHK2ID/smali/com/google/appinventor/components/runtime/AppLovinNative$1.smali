.class Lcom/google/appinventor/components/runtime/AppLovinNative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinNative;->SdkKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/AppLovinNative;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinNative;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$1;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$1;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/AppLovinNative;->a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$1;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/AppLovinNative;->a(Lcom/google/appinventor/components/runtime/AppLovinNative;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->setMuted(Z)V

    .line 80
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinNative$1;->a:Lcom/google/appinventor/components/runtime/AppLovinNative;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinNative;->SdkInitialized()V

    return-void
.end method
