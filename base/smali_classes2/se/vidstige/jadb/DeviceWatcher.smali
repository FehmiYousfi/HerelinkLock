.class public Lse/vidstige/jadb/DeviceWatcher;
.super Ljava/lang/Object;
.source "DeviceWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final connection:Lse/vidstige/jadb/JadbConnection;

.field private final listener:Lse/vidstige/jadb/DeviceDetectionListener;

.field private transport:Lse/vidstige/jadb/Transport;


# direct methods
.method public constructor <init>(Lse/vidstige/jadb/Transport;Lse/vidstige/jadb/DeviceDetectionListener;Lse/vidstige/jadb/JadbConnection;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lse/vidstige/jadb/DeviceWatcher;->transport:Lse/vidstige/jadb/Transport;

    .line 12
    iput-object p2, p0, Lse/vidstige/jadb/DeviceWatcher;->listener:Lse/vidstige/jadb/DeviceDetectionListener;

    .line 13
    iput-object p3, p0, Lse/vidstige/jadb/DeviceWatcher;->connection:Lse/vidstige/jadb/JadbConnection;

    return-void
.end method

.method private watch()V
    .locals 3

    .line 25
    :goto_0
    :try_start_0
    iget-object v0, p0, Lse/vidstige/jadb/DeviceWatcher;->listener:Lse/vidstige/jadb/DeviceDetectionListener;

    iget-object v1, p0, Lse/vidstige/jadb/DeviceWatcher;->connection:Lse/vidstige/jadb/JadbConnection;

    iget-object v2, p0, Lse/vidstige/jadb/DeviceWatcher;->transport:Lse/vidstige/jadb/Transport;

    invoke-virtual {v2}, Lse/vidstige/jadb/Transport;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lse/vidstige/jadb/JadbConnection;->parseDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lse/vidstige/jadb/DeviceDetectionListener;->onDetect(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    iget-object v1, p0, Lse/vidstige/jadb/DeviceWatcher;->listener:Lse/vidstige/jadb/DeviceDetectionListener;

    invoke-interface {v1, v0}, Lse/vidstige/jadb/DeviceDetectionListener;->onException(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 28
    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v1, p0, Lse/vidstige/jadb/DeviceWatcher;->transport:Lse/vidstige/jadb/Transport;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lse/vidstige/jadb/DeviceWatcher;->listener:Lse/vidstige/jadb/DeviceDetectionListener;

    invoke-interface {v1, v0}, Lse/vidstige/jadb/DeviceDetectionListener;->onException(Ljava/lang/Exception;)V

    .line 32
    :cond_0
    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lse/vidstige/jadb/DeviceWatcher;->watch()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lse/vidstige/jadb/DeviceWatcher;->transport:Lse/vidstige/jadb/Transport;

    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lse/vidstige/jadb/DeviceWatcher;->transport:Lse/vidstige/jadb/Transport;

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
