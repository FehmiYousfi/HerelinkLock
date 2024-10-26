.class public abstract Lse/vidstige/jadb/server/SocketServer;
.super Ljava/lang/Object;
.source "SocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private isStarted:Z

.field private final lockObject:Ljava/lang/Object;

.field private final port:I

.field private socket:Ljava/net/ServerSocket;

.field private thread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lse/vidstige/jadb/server/SocketServer;->isStarted:Z

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->lockObject:Ljava/lang/Object;

    .line 18
    iput p1, p0, Lse/vidstige/jadb/server/SocketServer;->port:I

    return-void
.end method

.method private serverReady()V
    .locals 2

    .line 53
    iget-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 54
    :try_start_0
    iput-boolean v1, p0, Lse/vidstige/jadb/server/SocketServer;->isStarted:Z

    .line 55
    iget-object v1, p0, Lse/vidstige/jadb/server/SocketServer;->lockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitForServer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lse/vidstige/jadb/server/SocketServer;->isStarted:Z

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lse/vidstige/jadb/server/SocketServer;->lockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 64
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract createResponder(Ljava/net/Socket;)Ljava/lang/Runnable;
.end method

.method public getPort()I
    .locals 1

    .line 29
    iget v0, p0, Lse/vidstige/jadb/server/SocketServer;->port:I

    return v0
.end method

.method public run()V
    .locals 4

    .line 36
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lse/vidstige/jadb/server/SocketServer;->port:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->socket:Ljava/net/ServerSocket;

    .line 37
    iget-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->socket:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 39
    invoke-direct {p0}, Lse/vidstige/jadb/server/SocketServer;->serverReady()V

    .line 42
    :goto_0
    iget-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 43
    new-instance v2, Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lse/vidstige/jadb/server/SocketServer;->createResponder(Ljava/net/Socket;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v3, "AdbClientWorker"

    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 45
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Fake Adb Server"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->thread:Ljava/lang/Thread;

    .line 23
    iget-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 24
    iget-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    invoke-direct {p0}, Lse/vidstige/jadb/server/SocketServer;->waitForServer()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 71
    iget-object v0, p0, Lse/vidstige/jadb/server/SocketServer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method
