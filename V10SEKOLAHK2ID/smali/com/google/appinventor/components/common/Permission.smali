.class public final enum Lcom/google/appinventor/components/common/Permission;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/Permission;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AccountManager:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Audio:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Bluetooth:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Camera:Lcom/google/appinventor/components/common/Permission;

.field public static final enum CoarseLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum FineLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum GetAccounts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Internet:Lcom/google/appinventor/components/common/Permission;

.field public static final enum LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ManageAccounts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum MockLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

.field public static final enum NetworkState:Lcom/google/appinventor/components/common/Permission;

.field public static final enum QueryAllPackages:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadContacts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field public static final enum UseCredentials:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Vibrate:Lcom/google/appinventor/components/common/Permission;

.field public static final enum WifiState:Lcom/google/appinventor/components/common/Permission;

.field public static final enum WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic a:[Lcom/google/appinventor/components/common/Permission;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "CoarseLocation"

    const/4 v2, 0x0

    const-string v3, "ACCESS_COARSE_LOCATION"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->CoarseLocation:Lcom/google/appinventor/components/common/Permission;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "FineLocation"

    const/4 v3, 0x1

    const-string v4, "ACCESS_FINE_LOCATION"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->FineLocation:Lcom/google/appinventor/components/common/Permission;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "MockLocation"

    const/4 v4, 0x2

    const-string v5, "ACCESS_MOCK_LOCATION"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->MockLocation:Lcom/google/appinventor/components/common/Permission;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "LocationExtraCommands"

    const/4 v5, 0x3

    const-string v6, "ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ReadExternalStorage"

    const/4 v6, 0x4

    const-string v7, "READ_EXTERNAL_STORAGE"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "WriteExternalStorage"

    const/4 v7, 0x5

    const-string v8, "WRITE_EXTERNAL_STORAGE"

    invoke-direct {v0, v1, v7, v8}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "Camera"

    const/4 v8, 0x6

    const-string v9, "CAMERA"

    invoke-direct {v0, v1, v8, v9}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Camera:Lcom/google/appinventor/components/common/Permission;

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "Audio"

    const/4 v9, 0x7

    const-string v10, "RECORD_AUDIO"

    invoke-direct {v0, v1, v9, v10}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Audio:Lcom/google/appinventor/components/common/Permission;

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "Vibrate"

    const/16 v10, 0x8

    const-string v11, "VIBRATE"

    invoke-direct {v0, v1, v10, v11}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Vibrate:Lcom/google/appinventor/components/common/Permission;

    .line 24
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "Internet"

    const/16 v11, 0x9

    const-string v12, "INTERNET"

    invoke-direct {v0, v1, v11, v12}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Internet:Lcom/google/appinventor/components/common/Permission;

    .line 25
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "NearFieldCommunication"

    const/16 v12, 0xa

    const-string v13, "NFC"

    invoke-direct {v0, v1, v12, v13}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

    .line 26
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "Bluetooth"

    const/16 v13, 0xb

    const-string v14, "BLUETOOTH"

    invoke-direct {v0, v1, v13, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Bluetooth:Lcom/google/appinventor/components/common/Permission;

    .line 27
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "BluetoothAdmin"

    const/16 v14, 0xc

    const-string v15, "BLUETOOTH_ADMIN"

    invoke-direct {v0, v1, v14, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

    .line 28
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "WifiState"

    const/16 v15, 0xd

    const-string v14, "ACCESS_WIFI_STATE"

    invoke-direct {v0, v1, v15, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->WifiState:Lcom/google/appinventor/components/common/Permission;

    .line 29
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "NetworkState"

    const/16 v14, 0xe

    const-string v15, "ACCESS_NETWORK_STATE"

    invoke-direct {v0, v1, v14, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->NetworkState:Lcom/google/appinventor/components/common/Permission;

    .line 30
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "AccountManager"

    const/16 v15, 0xf

    const-string v14, "ACCOUNT_MANAGER"

    invoke-direct {v0, v1, v15, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->AccountManager:Lcom/google/appinventor/components/common/Permission;

    .line 31
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ManageAccounts"

    const/16 v14, 0x10

    const-string v15, "MANAGE_ACCOUNTS"

    invoke-direct {v0, v1, v14, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ManageAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 32
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "GetAccounts"

    const/16 v15, 0x11

    const-string v14, "GET_ACCOUNTS"

    invoke-direct {v0, v1, v15, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->GetAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 33
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ReadContacts"

    const/16 v14, 0x12

    const-string v15, "READ_CONTACTS"

    invoke-direct {v0, v1, v14, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadContacts:Lcom/google/appinventor/components/common/Permission;

    .line 34
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "UseCredentials"

    const/16 v15, 0x13

    const-string v14, "USE_CREDENTIALS"

    invoke-direct {v0, v1, v15, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->UseCredentials:Lcom/google/appinventor/components/common/Permission;

    .line 35
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "QueryAllPackages"

    const/16 v14, 0x14

    const-string v15, "QUERY_ALL_PACKAGES"

    invoke-direct {v0, v1, v14, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->QueryAllPackages:Lcom/google/appinventor/components/common/Permission;

    const/16 v1, 0x15

    new-array v1, v1, [Lcom/google/appinventor/components/common/Permission;

    .line 14
    sget-object v15, Lcom/google/appinventor/components/common/Permission;->CoarseLocation:Lcom/google/appinventor/components/common/Permission;

    aput-object v15, v1, v2

    sget-object v15, Lcom/google/appinventor/components/common/Permission;->FineLocation:Lcom/google/appinventor/components/common/Permission;

    aput-object v15, v1, v3

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->MockLocation:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v5

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v6

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v7

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->Camera:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v8

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->Audio:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v9

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->Vibrate:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v10

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->Internet:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v11

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v12

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->Bluetooth:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v1, v13

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

    const/16 v4, 0xc

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->WifiState:Lcom/google/appinventor/components/common/Permission;

    const/16 v4, 0xd

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->NetworkState:Lcom/google/appinventor/components/common/Permission;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->AccountManager:Lcom/google/appinventor/components/common/Permission;

    const/16 v4, 0xf

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->ManageAccounts:Lcom/google/appinventor/components/common/Permission;

    const/16 v4, 0x10

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->GetAccounts:Lcom/google/appinventor/components/common/Permission;

    const/16 v4, 0x11

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->ReadContacts:Lcom/google/appinventor/components/common/Permission;

    const/16 v4, 0x12

    aput-object v3, v1, v4

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->UseCredentials:Lcom/google/appinventor/components/common/Permission;

    const/16 v4, 0x13

    aput-object v3, v1, v4

    aput-object v0, v1, v14

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->a:[Lcom/google/appinventor/components/common/Permission;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->a:Ljava/util/Map;

    .line 50
    invoke-static {}, Lcom/google/appinventor/components/common/Permission;->values()[Lcom/google/appinventor/components/common/Permission;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 51
    sget-object v4, Lcom/google/appinventor/components/common/Permission;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/google/appinventor/components/common/Permission;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/Permission;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/Permission;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->a:[Lcom/google/appinventor/components/common/Permission;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/Permission;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/common/Permission;->a:Ljava/lang/String;

    return-object v0
.end method
