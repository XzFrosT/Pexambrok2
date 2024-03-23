.class public final Lcom/google/appinventor/components/runtime/CloudDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component allowing you to store data on a Internet connected database server (using Redis software). This allows the users of your App to share data with each other. By default data will be stored in a server maintained by MIT, however you can setup and run your own server. Set the \"RedisServer\" property and \"RedisPort\" Property to access your own server."
    designerHelpDescription = "Non-visible component that communicates with CloudDB server to store and retrieve information."
    iconName = "images/cloudDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "jedis.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/CloudDB$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CloudDB"

.field private static final a:Z = false

.field private static final d:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

.field private static final e:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

.field private static final f:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDSjCCAjKgAwIBAgIQRK+wgNajJ7qJMDmGLvhAazANBgkqhkiG9w0BAQUFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTAwMDkzMDIxMTIxOVoXDTIxMDkzMDE0MDExNVow\nPzEkMCIGA1UEChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQD\nEw5EU1QgUm9vdCBDQSBYMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB\nAN+v6ZdQCINXtMxiZfaQguzH0yxrMMpb7NnDfcdAwRgUi+DoM3ZJKuM/IUmTrE4O\nrz5Iy2Xu/NMhD2XSKtkyj4zl93ewEnu1lcCJo6m67XMuegwGMoOifooUMM0RoOEq\nOLl5CjH9UL2AZd+3UWODyOKIYepLYYHsUmu5ouJLGiifSKOeDNoJjj4XLh7dIN9b\nxiqKqy69cK3FCxolkHRyxXtqqzTWMIn/5WgTe1QLyNau7Fqckh49ZLOMxt+/yUFw\n7BZy1SbsOFU5Q9D8/RhcQPGX69Wam40dutolucbY38EVAjqr2m7xPi71XAicPNaD\naeQQmxkqtilX4+U9m5/wAl0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNV\nHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFMSnsaR7LHH62+FLkHX/xBVghYkQMA0GCSqG\nSIb3DQEBBQUAA4IBAQCjGiybFwBcqR7uKGY3Or+Dxz9LwwmglSBd49lZRNI+DT69\nikugdB/OEIKcdBodfpga3csTS7MgROSR6cz8faXbauX+5v3gTt23ADq1cEmv8uXr\nAvHRAosZy5Q6XkjEGB5YGV8eAlrwDPGxrancWYaLbumR9YbK+rlmM6pZW87ipxZz\nR8srzJmwN0jP41ZL9c8PDHIyh8bwRLtTcm1D9SZImlJnt1ir/md2cXjbDaJWFBM5\nJDGFoqgCWjBH4d1QB7wCCZAA62RjYJsWvIjJEubSfZGL+T0yjWW06XyxV3bqxbYo\nOb8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ\n-----END CERTIFICATE-----\n"

.field private static final i:Ljava/lang/String; = "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

.field private static final j:Ljava/lang/String; = "765978e4c340012f50733280368a0ccc4a14dfb7"

.field private static final k:Ljava/lang/String; = "local key = KEYS[1];local project = ARGV[1];local currentValue = redis.call(\'get\', project .. \":\" .. key);local decodedValue = cjson.decode(currentValue);local subTable = {};local subTable1 = {};if (type(decodedValue) == \'table\') then   local removedValue = table.remove(decodedValue, 1);  local newValue = cjson.encode(decodedValue);  if (newValue == \"{}\") then     newValue = \"[]\"   end   redis.call(\'set\', project .. \":\" .. key, newValue);  table.insert(subTable, key);  table.insert(subTable1, newValue);  table.insert(subTable, subTable1);  redis.call(\"publish\", project, cjson.encode(subTable));  return cjson.encode(removedValue);else   return error(\'You can only remove elements from a list\');end"

.field private static final l:Ljava/lang/String; = "68a7576e7dc283a8162d01e3e7c2d5c4ab3ff7a5"

.field private static final m:Ljava/lang/String; = "local key = KEYS[1];local toAppend = cjson.decode(ARGV[1]);local project = ARGV[2];local currentValue = redis.call(\'get\', project .. \":\" .. key);local newTable;local subTable = {};local subTable1 = {};if (currentValue == false) then   newTable = {};else   newTable = cjson.decode(currentValue);  if not (type(newTable) == \'table\') then     return error(\'You can only append to a list\');  end end table.insert(newTable, toAppend);local newValue = cjson.encode(newTable);redis.call(\'set\', project .. \":\" .. key, newValue);table.insert(subTable1, newValue);table.insert(subTable, key);table.insert(subTable, subTable1);redis.call(\"publish\", project, cjson.encode(subTable));return newValue;"

.field private static final n:Ljava/lang/String; = "d6cc0f65b29878589f00564d52c8654967e9bcf8"


# instance fields
.field private volatile a:I

.field private final a:Landroid/app/Activity;

.field private a:Landroid/net/ConnectivityManager;

.field private a:Landroid/os/Handler;

.field private volatile a:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/CloudDB$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile a:Ljava/util/concurrent/ExecutorService;

.field private a:Ljavax/net/ssl/SSLSocketFactory;

.field private a:Lredis/clients/jedis/Jedis;

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private c:Z

.field private volatile d:Z

.field private e:Z

.field private volatile f:Z

.field private g:Ljava/lang/String;

.field private volatile g:Z

.field private volatile h:Ljava/lang/String;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 273
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->b:Z

    const-string v1, ""

    .line 116
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->b:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    .line 118
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Z

    .line 120
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->d:Z

    const/4 v2, 0x0

    .line 214
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->g:Ljava/lang/String;

    const/4 v3, 0x1

    .line 215
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->e:Z

    .line 220
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lredis/clients/jedis/Jedis;

    const-string v4, "DEFAULT"

    .line 221
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Ljava/lang/String;

    .line 223
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->f:Z

    .line 224
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->g:Z

    .line 227
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 231
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Z

    .line 239
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/List;

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/os/Handler;

    .line 279
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/app/Activity;

    .line 281
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->b:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    const/16 p1, 0x18ed

    .line 284
    iput p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:I

    .line 285
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6

    const-string v0, "Read"

    :try_start_0
    const-string v1, "file://"

    .line 1288
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    .line 1289
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const-string v2, "/"

    .line 1291
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1294
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1295
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 1296
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x1

    aput-object v1, v3, p1

    .line 1300
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1

    .line 1292
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid fileName, was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ReadFrom"

    invoke-direct {v1, p1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1304
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception p1

    .line 1302
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1311
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 1312
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1313
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->terminate()V

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 1241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lredis/clients/jedis/Jedis;

    if-nez v0, :cond_0

    return-void

    .line 1245
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    .line 1250
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lredis/clients/jedis/Jedis;

    .line 1254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/CloudDB$4;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1264
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->a()V

    if-eqz p1, :cond_1

    .line 1266
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->b()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->d:Z

    return p0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/CloudDB;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Z

    return p1
.end method

.method private a()[Ljava/security/cert/X509Certificate;
    .locals 4

    const/4 v0, 0x0

    .line 1399
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 1398
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 1400
    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1401
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 1402
    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CloudDB"

    const-string v3, "Getting System Certificates"

    .line 1404
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 341
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 345
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 347
    :try_start_1
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Z

    .line 351
    new-instance v0, Lcom/google/appinventor/components/runtime/CloudDB$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/CloudDB$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/appinventor/components/runtime/CloudDB;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->g:Z

    return p0
.end method

.method private c()V
    .locals 2

    .line 1159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1163
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB Token property cannot be blank"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB ProjectID property cannot be blank."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 12

    monitor-enter p0

    .line 1338
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1339
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "X.509"

    .line 1342
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 1343
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1344
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 1345
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1346
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1347
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1348
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1349
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v4, "-----BEGIN CERTIFICATE-----\nMIIDSjCCAjKgAwIBAgIQRK+wgNajJ7qJMDmGLvhAazANBgkqhkiG9w0BAQUFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTAwMDkzMDIxMTIxOVoXDTIxMDkzMDE0MDExNVow\nPzEkMCIGA1UEChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQD\nEw5EU1QgUm9vdCBDQSBYMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB\nAN+v6ZdQCINXtMxiZfaQguzH0yxrMMpb7NnDfcdAwRgUi+DoM3ZJKuM/IUmTrE4O\nrz5Iy2Xu/NMhD2XSKtkyj4zl93ewEnu1lcCJo6m67XMuegwGMoOifooUMM0RoOEq\nOLl5CjH9UL2AZd+3UWODyOKIYepLYYHsUmu5ouJLGiifSKOeDNoJjj4XLh7dIN9b\nxiqKqy69cK3FCxolkHRyxXtqqzTWMIn/5WgTe1QLyNau7Fqckh49ZLOMxt+/yUFw\n7BZy1SbsOFU5Q9D8/RhcQPGX69Wam40dutolucbY38EVAjqr2m7xPi71XAicPNaD\naeQQmxkqtilX4+U9m5/wAl0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNV\nHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFMSnsaR7LHH62+FLkHX/xBVghYkQMA0GCSqG\nSIb3DQEBBQUAA4IBAQCjGiybFwBcqR7uKGY3Or+Dxz9LwwmglSBd49lZRNI+DT69\nikugdB/OEIKcdBodfpga3csTS7MgROSR6cz8faXbauX+5v3gTt23ADq1cEmv8uXr\nAvHRAosZy5Q6XkjEGB5YGV8eAlrwDPGxrancWYaLbumR9YbK+rlmM6pZW87ipxZz\nR8srzJmwN0jP41ZL9c8PDHIyh8bwRLtTcm1D9SZImlJnt1ir/md2cXjbDaJWFBM5\nJDGFoqgCWjBH4d1QB7wCCZAA62RjYJsWvIjJEubSfZGL+T0yjWW06XyxV3bqxbYo\nOb8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ\n-----END CERTIFICATE-----\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1350
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 1351
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1357
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v4, 0x0

    .line 1358
    invoke-virtual {v1, v4, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1361
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v9, v5, v7

    .line 1362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "root"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v9}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "comodo"

    .line 1369
    invoke-virtual {v1, v5, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    const-string v2, "inter"

    .line 1370
    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    const-string v2, "dstx3"

    .line 1371
    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1373
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1372
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 1374
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v1, "TLS"

    .line 1382
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 1383
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-virtual {v1, v4, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1384
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1390
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CloudDB"

    const-string v2, "Could not setup SSL Trust Store for CloudDB"

    .line 1386
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Could Not setup SSL Trust Store for CloudDB: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public AppendValueToList(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost."
    .end annotation

    .line 943
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    .line 945
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 948
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 951
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Value failed to convert to JSON."

    const-string v0, "JSON Creation Error."

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 954
    :cond_0
    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 957
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/appinventor/components/runtime/CloudDB$9;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the tag from CloudDB."
    .end annotation

    .line 1016
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    .line 1017
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$10;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB$10;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public CloudConnected()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "returns True if we are on the network and will likely be able to connect to the CloudDB server."
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public CloudDBError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an error occurred while communicating with the CloudDB Redis server."
    .end annotation

    const-string v0, "CloudDB"

    .line 1143
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB$3;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that CloudDB data has changed for the given tag and value."
    .end annotation

    if-eqz p2, :cond_0

    .line 1118
    :try_start_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1119
    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1122
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Value failed to convert from JSON."

    const-string v0, "JSON Retrieval Error."

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p2, ""

    .line 1126
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/CloudDB$2;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public DefaultRedisServer(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Default Redis Server to use."
        userVisible = false
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->g:Ljava/lang/String;

    .line 448
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->e:Z

    if-eqz v0, :cond_0

    .line 449
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public FirstRemoved(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered by the \"RemoveFirstFromList\" function. The argument \"value\" is the object that was the first in the list, and which is now removed."
    .end annotation

    .line 839
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    if-eqz p1, :cond_0

    .line 841
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 842
    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CloudDB"

    const-string v1, "error while converting to JSON..."

    .line 845
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 849
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB$7;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public GetTagList()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags."
    .end annotation

    .line 1059
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    .line 1060
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$12;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/CloudDB$12;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_1
    const-string v0, "Not connected to the Internet, cannot list tags"

    .line 1090
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Value for a tag, doesn\'t return the value but will cause a GotValue event to fire when the value is looked up."
    .end annotation

    .line 742
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    .line 743
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 746
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 747
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/CloudDB$6;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/CloudDB$6;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_1
    const-string p1, "Cannot fetch variables while off-line."

    .line 807
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 982
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    if-nez p2, :cond_0

    .line 987
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trouble getting "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from the server."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 995
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 996
    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Value failed to convert from JSON."

    const-string v0, "JSON Retrieval Error."

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string p1, "GotValue"

    .line 1003
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialize()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->b()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method public ProjectID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the ProjectID for this CloudDB project."
    .end annotation

    .line 476
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    .line 477
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->b:Ljava/lang/String;

    return-object v0
.end method

.method public ProjectID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->b:Ljava/lang/String;

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->b:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 492
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "CloudDB ProjectID property cannot be blank."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public RedisPort()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Redis Server port to use. Defaults to 6381"
    .end annotation

    .line 465
    iget v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:I

    return v0
.end method

.method public RedisPort(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "6381"
        editorType = "integer"
    .end annotation

    .line 456
    iget v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:I

    if-eq p1, v0, :cond_0

    .line 457
    iput p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:I

    const/4 p1, 0x1

    .line 458
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Z)V

    :cond_0
    return-void
.end method

.method public RedisServer()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Redis Server to use to store data. A setting of \"DEFAULT\" means that the MIT server will be used."
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DEFAULT"

    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Ljava/lang/String;

    return-object v0
.end method

.method public RedisServer(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    const-string v0, "DEFAULT"

    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 405
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->e:Z

    if-nez p1, :cond_2

    .line 406
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->e:Z

    .line 407
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->g:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Ljava/lang/String;

    .line 414
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->e:Z

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Ljava/lang/String;

    .line 420
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public RemoveFirstFromList(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered."
    .end annotation

    .line 895
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    .line 899
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB$8;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Store a value at a tag."
    .end annotation

    .line 581
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    .line 583
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 588
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file:///"

    .line 589
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/storage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 592
    :cond_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 590
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    const-string p2, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-eqz v0, :cond_6

    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/List;

    monitor-enter v0

    .line 607
    :try_start_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 617
    :goto_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    :try_start_2
    invoke-virtual {v3, v2, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    :try_start_3
    new-instance p2, Lcom/google/appinventor/components/runtime/CloudDB$a;

    invoke-direct {p2, p1, v3}, Lcom/google/appinventor/components/runtime/CloudDB$a;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 624
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5

    .line 626
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/google/appinventor/components/runtime/CloudDB$5;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/CloudDB$5;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 719
    :cond_5
    monitor-exit v0

    goto :goto_4

    .line 621
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "JSON Error putting value."

    const-string/jumbo v1, "value is not convertable"

    invoke-direct {p1, p2, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 719
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_6
    const-string p1, "Cannot store values off-line."

    .line 721
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    :goto_4
    return-void

    .line 598
    :catch_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Value failed to convert to JSON."

    const-string v0, "JSON Creation Error."

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public TagList(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TagList"

    .line 1104
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Token()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This field contains the authentication token used to login to the backed Redis server. For the \"DEFAULT\" server, do not edit this value, the system will fill it in for you. A system administrator may also provide a special value to you which can be used to share data between multiple projects from multiple people. If using your own Redis server, set a password in the server\'s config and enter it here."
        userVisible = false
    .end annotation

    .line 532
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->c()V

    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    return-object v0
.end method

.method public Token(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    .line 507
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 508
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "CloudDB Token property cannot be blank."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UpdateDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/CloudDB$11;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public UseSSL(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .line 545
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->f:Z

    if-eq v0, p1, :cond_0

    .line 546
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->f:Z

    const/4 p1, 0x1

    .line 547
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Z)V

    :cond_0
    return-void
.end method

.method public UseSSL()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set to true to use SSL to talk to CloudDB/Redis server. This should be set to True for the \"DEFAULT\" server."
        userVisible = false
    .end annotation

    .line 555
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->f:Z

    return v0
.end method

.method public getBackground()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 1168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public declared-synchronized getJedis()Lredis/clients/jedis/Jedis;
    .locals 1

    monitor-enter p0

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lredis/clients/jedis/Jedis;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1228
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis(Z)Lredis/clients/jedis/Jedis;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lredis/clients/jedis/Jedis;

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Lredis/clients/jedis/Jedis;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJedis(Z)Lredis/clients/jedis/Jedis;
    .locals 13

    const-string p1, "in getJedis()"

    const-string v0, "CloudDB"

    .line 1172
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 1181
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1182
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1184
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->c:Ljava/lang/String;

    .line 1192
    :goto_0
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->f:Z

    if-eqz v4, :cond_2

    .line 1195
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->d()V

    .line 1196
    new-instance v4, Lredis/clients/jedis/JedisShardInfo;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Ljava/lang/String;

    iget v7, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:I

    const/16 v8, 0x4e20

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 1198
    invoke-virtual {v4, v3}, Lredis/clients/jedis/JedisShardInfo;->setPassword(Ljava/lang/String;)V

    .line 1199
    new-instance v3, Lredis/clients/jedis/Jedis;

    invoke-direct {v3, v4}, Lredis/clients/jedis/Jedis;-><init>(Lredis/clients/jedis/JedisShardInfo;)V

    goto :goto_1

    .line 1201
    :cond_2
    new-instance v4, Lredis/clients/jedis/JedisShardInfo;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB;->h:Ljava/lang/String;

    iget v6, p0, Lcom/google/appinventor/components/runtime/CloudDB;->a:I

    const/16 v7, 0x4e20

    invoke-direct {v4, v5, v6, v7}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;II)V

    .line 1203
    invoke-virtual {v4, v3}, Lredis/clients/jedis/JedisShardInfo;->setPassword(Ljava/lang/String;)V

    .line 1204
    new-instance v3, Lredis/clients/jedis/Jedis;

    invoke-direct {v3, v4}, Lredis/clients/jedis/Jedis;-><init>(Lredis/clients/jedis/JedisShardInfo;)V
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v3

    :catch_0
    move-exception v3

    .line 1218
    invoke-static {v0, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lredis/clients/jedis/exceptions/JedisDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CloudDB disabled, restart to re-enable."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1220
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->d:Z

    return-object v2

    :catch_1
    move-exception v1

    .line 1213
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1214
    invoke-virtual {v1}, Lredis/clients/jedis/exceptions/JedisConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    return-object v2
.end method

.method public varargs jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lredis/clients/jedis/exceptions/JedisException;
        }
    .end annotation

    .line 1321
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 1323
    :try_start_0
    invoke-virtual {v0, p2, p3, p4}, Lredis/clients/jedis/Jedis;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisNoScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1330
    :catch_0
    invoke-virtual {v0, p1, p3, p4}, Lredis/clients/jedis/Jedis;->eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onClear()V
    .locals 1

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->g:Z

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 334
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->onClear()V

    return-void
.end method
