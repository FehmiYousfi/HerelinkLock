.class public Lcom/tananaev/adblib/AdbStream;
.super Ljava/lang/Object;
.source "AdbStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final adbConn:Lcom/tananaev/adblib/AdbConnection;

.field private volatile isClosed:Z

.field private final localId:I

.field private volatile pendingClose:Z

.field private final readQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private volatile remoteId:I

.field private final writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/tananaev/adblib/AdbConnection;I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    .line 61
    iput p2, p0, Lcom/tananaev/adblib/AdbStream;->localId:I

    .line 62
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    .line 63
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tananaev/adblib/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    iput-boolean p2, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    return-void
.end method


# virtual methods
.method addPayload([B)V
    .locals 3

    .line 73
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPayload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    monitor-enter p0

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 246
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, v0}, Lcom/tananaev/adblib/AdbStream;->notifyClose(Z)V

    .line 250
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    iget v0, p0, Lcom/tananaev/adblib/AdbStream;->localId:I

    iget v1, p0, Lcom/tananaev/adblib/AdbStream;->remoteId:I

    invoke-static {v0, v1}, Lcom/tananaev/adblib/AdbProtocol;->generateClose(II)[B

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v1, v1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v1

    .line 255
    :try_start_1
    iget-object v2, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v2, v2, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 256
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v0, v0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 257
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 250
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public dataAvailable()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    return v0
.end method

.method notifyClose(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 119
    iput-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->pendingClose:Z

    goto :goto_0

    .line 121
    :cond_0
    iput-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    .line 125
    :goto_0
    monitor-enter p0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    iget-object p1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    monitor-enter p1

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 127
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public read()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 149
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-nez v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 153
    :cond_0
    iget-boolean v2, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-nez v2, :cond_2

    .line 157
    iget-boolean v2, p0, Lcom/tananaev/adblib/AdbStream;->pendingClose:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 159
    iput-boolean v2, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    .line 161
    :cond_1
    monitor-exit v0

    return-object v1

    .line 154
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method readyForWrite()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method sendReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget v0, p0, Lcom/tananaev/adblib/AdbStream;->localId:I

    iget v1, p0, Lcom/tananaev/adblib/AdbStream;->remoteId:I

    invoke-static {v0, v1}, Lcom/tananaev/adblib/AdbProtocol;->generateReady(II)[B

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v1, v1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v2, v2, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 92
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v0, v0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateRemoteId(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/tananaev/adblib/AdbStream;->remoteId:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tananaev/adblib/AdbStream;->write([BZ)V

    const/4 p1, 0x1

    new-array v1, p1, [B

    aput-byte v0, v1, v0

    .line 176
    invoke-virtual {p0, v1, p1}, Lcom/tananaev/adblib/AdbStream;->write([BZ)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/tananaev/adblib/AdbStream;->write([BZ)V

    return-void
.end method

.method public write([BZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 199
    monitor-enter p0

    .line 201
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-nez v0, :cond_2

    .line 207
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    iget v0, p0, Lcom/tananaev/adblib/AdbStream;->localId:I

    iget v1, p0, Lcom/tananaev/adblib/AdbStream;->remoteId:I

    invoke-static {v0, v1, p1}, Lcom/tananaev/adblib/AdbProtocol;->generateWrite(II[B)[B

    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v0, v0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v0

    .line 213
    :try_start_1
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v1, v1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_1

    .line 216
    iget-object p1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object p1, p1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 217
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 205
    :cond_2
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 207
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public writeAsIs([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/tananaev/adblib/AdbStream;->writeAsIs([BZ)V

    return-void
.end method

.method public writeAsIs([BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 226
    iget v0, p0, Lcom/tananaev/adblib/AdbStream;->localId:I

    iget v1, p0, Lcom/tananaev/adblib/AdbStream;->remoteId:I

    invoke-static {v0, v1, p1}, Lcom/tananaev/adblib/AdbProtocol;->generateWrite(II[B)[B

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v0, v0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v1, v1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_0

    .line 232
    iget-object p1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object p1, p1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 233
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
