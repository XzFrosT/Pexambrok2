.class Lcom/google/appinventor/components/runtime/CloudDB$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->RemoveFirstFromList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$8;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 901
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$8;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    const/4 v0, 0x1

    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$8;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$8;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v3, "local key = KEYS[1];local project = ARGV[1];local currentValue = redis.call(\'get\', project .. \":\" .. key);local decodedValue = cjson.decode(currentValue);local subTable = {};local subTable1 = {};if (type(decodedValue) == \'table\') then   local removedValue = table.remove(decodedValue, 1);  local newValue = cjson.encode(decodedValue);  if (newValue == \"{}\") then     newValue = \"[]\"   end   redis.call(\'set\', project .. \":\" .. key, newValue);  table.insert(subTable, key);  table.insert(subTable1, newValue);  table.insert(subTable, subTable1);  redis.call(\"publish\", project, cjson.encode(subTable));  return cjson.encode(removedValue);else   return error(\'You can only remove elements from a list\');end"

    const-string v4, "68a7576e7dc283a8162d01e3e7c2d5c4ab3ff7a5"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/CloudDB$8;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB$8;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->FirstRemoved(Ljava/lang/Object;)V
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 905
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$8;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v1}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$8;->a:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->a(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    :goto_0
    return-void
.end method
