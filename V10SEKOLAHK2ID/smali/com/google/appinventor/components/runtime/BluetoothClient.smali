.class public final Lcom/google/appinventor/components/runtime/BluetoothClient;
.super Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bluetooth client component"
    iconName = "images/bluetooth_client_new.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.BLUETOOTH, android.permission.BLUETOOTH_ADMIN"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "00001101-0000-1000-8000-00805F9B34FB"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "BluetoothClient"

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->DisconnectOnError(Z)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->secure:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 318
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->createInsecureRfcommSocketToServiceRecord(Ljava/lang/Object;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->createRfcommSocketToServiceRecord(Ljava/lang/Object;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object p2

    .line 324
    :goto_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->connectToBluetoothSocket(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->setConnection(Ljava/lang/Object;)V

    .line 326
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->logTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected to Bluetooth device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 206
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 212
    :cond_1
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getDeviceClass(Ljava/lang/Object;)I

    move-result p1

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 253
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 255
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x1f5

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 260
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 261
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x1f6

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    :cond_1
    const-string v2, " "

    .line 268
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 270
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 273
    :cond_2
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 274
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x1f7

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 279
    :cond_3
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 280
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 281
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x1f8

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 286
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 287
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x1f9

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    :cond_5
    const/4 v0, 0x1

    .line 294
    :try_start_0
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 304
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->a(Ljava/lang/Object;Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 307
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 308
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x1fb

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 296
    :catch_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x1fa

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-virtual {p2, p0, p1, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public AddressesAndNames()Ljava/util/List;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The addresses and names of paired Bluetooth devices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBondedDevices(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 183
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public Connect(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and the Serial Port Profile (SPP). Returns true if the connection was successful."
    .end annotation

    const-string v0, "Connect"

    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    .line 225
    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ConnectWithUUID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and UUID. Returns true if the connection was successful."
    .end annotation

    const-string v0, "ConnectWithUUID"

    .line 238
    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public DisconnectOnError(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->disconnectOnError:Z

    return-void
.end method

.method public DisconnectOnError()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Disconnects BluetoothClient automatically when an error occurs."
    .end annotation

    .line 69
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->disconnectOnError:Z

    return v0
.end method

.method public IsDevicePaired(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the Bluetooth device with the specified address is paired."
    .end annotation

    .line 132
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "IsDevicePaired"

    if-nez v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v0, 0x1f5

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 139
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v0, 0x1f6

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    :cond_1
    const-string v3, " "

    .line 147
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 149
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_2
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 153
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v0, 0x1f7

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 158
    :cond_3
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 159
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method a(Lcom/google/appinventor/components/runtime/Component;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/Set;

    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p2, :cond_5

    return v1

    :cond_2
    if-nez p2, :cond_3

    return v1

    .line 102
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_5

    return v1

    .line 111
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
