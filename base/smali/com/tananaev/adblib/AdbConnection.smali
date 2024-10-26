.class public Lcom/tananaev/adblib/AdbConnection;
.super Ljava/lang/Object;
.source "AdbConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private volatile abortOnUnauthorised:Z

.field private volatile authorisationFailed:Z

.field private volatile connectAttempted:Z

.field private volatile connected:Z

.field private volatile connectionThread:Ljava/lang/Thread;

.field private volatile crypto:Lcom/tananaev/adblib/AdbCrypto;

.field private volatile inputStream:Ljava/io/InputStream;

.field private lastLocalId:I

.field private volatile maxData:I

.field private volatile openStreams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tananaev/adblib/AdbStream;",
            ">;"
        }
    .end annotation
.end field

.field volatile outputStream:Ljava/io/OutputStream;

.field private sentSignature:Z

.field private socket:Ljava/net/Socket;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tananaev/adblib/AdbConnection;->openStreams:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/tananaev/adblib/AdbConnection;->lastLocalId:I

    .line 96
    invoke-direct {p0}, Lcom/tananaev/adblib/AdbConnection;->createConnectionThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/tananaev/adblib/AdbConnection;->connectionThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/tananaev/adblib/AdbConnection;)Ljava/lang/Thread;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tananaev/adblib/AdbConnection;->connectionThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tananaev/adblib/AdbConnection;)Ljava/io/InputStream;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tananaev/adblib/AdbConnection;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/tananaev/adblib/AdbConnection;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/tananaev/adblib/AdbConnection;->connectAttempted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tananaev/adblib/AdbConnection;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/tananaev/adblib/AdbConnection;->connected:Z

    return p0
.end method

.method static synthetic access$202(Lcom/tananaev/adblib/AdbConnection;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/tananaev/adblib/AdbConnection;->connected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tananaev/adblib/AdbConnection;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tananaev/adblib/AdbConnection;->openStreams:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tananaev/adblib/AdbConnection;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/tananaev/adblib/AdbConnection;->sentSignature:Z

    return p0
.end method

.method static synthetic access$402(Lcom/tananaev/adblib/AdbConnection;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/tananaev/adblib/AdbConnection;->sentSignature:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tananaev/adblib/AdbConnection;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/tananaev/adblib/AdbConnection;->abortOnUnauthorised:Z

    return p0
.end method

.method static synthetic access$602(Lcom/tananaev/adblib/AdbConnection;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/tananaev/adblib/AdbConnection;->authorisationFailed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/tananaev/adblib/AdbConnection;)Lcom/tananaev/adblib/AdbCrypto;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tananaev/adblib/AdbConnection;->crypto:Lcom/tananaev/adblib/AdbCrypto;

    return-object p0
.end method

.method static synthetic access$802(Lcom/tananaev/adblib/AdbConnection;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/tananaev/adblib/AdbConnection;->maxData:I

    return p1
.end method

.method static synthetic access$900(Lcom/tananaev/adblib/AdbConnection;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/tananaev/adblib/AdbConnection;->cleanupStreams()V

    return-void
.end method

.method private cleanupStreams()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection;->openStreams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tananaev/adblib/AdbStream;

    .line 378
    :try_start_0
    invoke-virtual {v1}, Lcom/tananaev/adblib/AdbStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection;->openStreams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static create(Ljava/net/Socket;Lcom/tananaev/adblib/AdbCrypto;)Lcom/tananaev/adblib/AdbConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/tananaev/adblib/AdbConnection;

    invoke-direct {v0}, Lcom/tananaev/adblib/AdbConnection;-><init>()V

    .line 111
    iput-object p1, v0, Lcom/tananaev/adblib/AdbConnection;->crypto:Lcom/tananaev/adblib/AdbCrypto;

    .line 113
    iput-object p0, v0, Lcom/tananaev/adblib/AdbConnection;->socket:Ljava/net/Socket;

    .line 114
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/tananaev/adblib/AdbConnection;->inputStream:Ljava/io/InputStream;

    .line 115
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    const/4 p1, 0x1

    .line 118
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-object v0
.end method

.method private createConnectionThread()Ljava/lang/Thread;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tananaev/adblib/AdbConnection$1;

    invoke-direct {v1, p0, p0}, Lcom/tananaev/adblib/AdbConnection$1;-><init>(Lcom/tananaev/adblib/AdbConnection;Lcom/tananaev/adblib/AdbConnection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private waitForConnection(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    monitor-enter p0

    .line 351
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 352
    :goto_0
    iget-boolean p1, p0, Lcom/tananaev/adblib/AdbConnection;->connected:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/tananaev/adblib/AdbConnection;->connectAttempted:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v0, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 356
    :cond_0
    iget-boolean p1, p0, Lcom/tananaev/adblib/AdbConnection;->connected:Z

    if-nez p1, :cond_3

    .line 357
    iget-boolean p1, p0, Lcom/tananaev/adblib/AdbConnection;->connectAttempted:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 358
    monitor-exit p0

    return p1

    .line 359
    :cond_1
    iget-boolean p1, p0, Lcom/tananaev/adblib/AdbConnection;->authorisationFailed:Z

    if-eqz p1, :cond_2

    .line 360
    new-instance p1, Lcom/tananaev/adblib/AdbAuthenticationFailedException;

    invoke-direct {p1}, Lcom/tananaev/adblib/AdbAuthenticationFailedException;-><init>()V

    throw p1

    .line 362
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection;->connectionThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 402
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection;->connectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection;->connectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 270
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/tananaev/adblib/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    return-void
.end method

.method public connect(JLjava/util/concurrent/TimeUnit;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/tananaev/adblib/AdbAuthenticationFailedException;
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lcom/tananaev/adblib/AdbConnection;->connected:Z

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-static {}, Lcom/tananaev/adblib/AdbProtocol;->generateConnect()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 295
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lcom/tananaev/adblib/AdbConnection;->connectAttempted:Z

    .line 300
    iput-boolean p4, p0, Lcom/tananaev/adblib/AdbConnection;->abortOnUnauthorised:Z

    const/4 p4, 0x0

    .line 301
    iput-boolean p4, p0, Lcom/tananaev/adblib/AdbConnection;->authorisationFailed:Z

    .line 302
    iget-object p4, p0, Lcom/tananaev/adblib/AdbConnection;->connectionThread:Ljava/lang/Thread;

    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 304
    invoke-direct {p0, p1, p2, p3}, Lcom/tananaev/adblib/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 296
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 290
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxData()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Lcom/tananaev/adblib/AdbConnection;->connectAttempted:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 258
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lcom/tananaev/adblib/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    .line 260
    iget v0, p0, Lcom/tananaev/adblib/AdbConnection;->maxData:I

    return v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connect() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 318
    iget v0, p0, Lcom/tananaev/adblib/AdbConnection;->lastLocalId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tananaev/adblib/AdbConnection;->lastLocalId:I

    .line 320
    iget-boolean v1, p0, Lcom/tananaev/adblib/AdbConnection;->connectAttempted:Z

    if-eqz v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    .line 323
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v1, v2, v3}, Lcom/tananaev/adblib/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    .line 326
    new-instance v1, Lcom/tananaev/adblib/AdbStream;

    invoke-direct {v1, p0, v0}, Lcom/tananaev/adblib/AdbStream;-><init>(Lcom/tananaev/adblib/AdbConnection;I)V

    .line 327
    iget-object v2, p0, Lcom/tananaev/adblib/AdbConnection;->openStreams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v2

    .line 331
    :try_start_0
    iget-object v3, p0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lcom/tananaev/adblib/AdbProtocol;->generateOpen(ILjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 332
    iget-object p1, p0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 333
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    monitor-enter v1

    .line 337
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 338
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    invoke-virtual {v1}, Lcom/tananaev/adblib/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    .line 342
    :cond_0
    new-instance p1, Ljava/net/ConnectException;

    const-string v0, "Stream open actively rejected by remote peer"

    invoke-direct {p1, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 338
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 333
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 321
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "connect() must be called first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
