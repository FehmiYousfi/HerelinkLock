.class Lorg/mockito/internal/configuration/plugins/PluginFinder;
.super Ljava/lang/Object;
.source "PluginFinder.java"


# instance fields
.field private final pluginSwitch:Lorg/mockito/plugins/PluginSwitch;


# direct methods
.method public constructor <init>(Lorg/mockito/plugins/PluginSwitch;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/mockito/internal/configuration/plugins/PluginFinder;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    return-void
.end method


# virtual methods
.method findPluginClass(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 26
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 27
    new-instance v2, Lorg/mockito/internal/configuration/plugins/PluginFileReader;

    invoke-direct {v2}, Lorg/mockito/internal/configuration/plugins/PluginFileReader;-><init>()V

    invoke-virtual {v2, v1}, Lorg/mockito/internal/configuration/plugins/PluginFileReader;->readPluginClass(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 40
    :goto_1
    invoke-static {v1}, Lorg/mockito/internal/util/io/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 33
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/mockito/internal/configuration/plugins/PluginFinder;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-interface {v3, v2}, Lorg/mockito/plugins/PluginSwitch;->isEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    invoke-static {v1}, Lorg/mockito/internal/util/io/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problems reading plugin implementation from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :goto_2
    invoke-static {v1}, Lorg/mockito/internal/util/io/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_2
    return-object v1
.end method
