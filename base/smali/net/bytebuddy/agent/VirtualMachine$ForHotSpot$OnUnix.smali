.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;
.super Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnUnix"
.end annotation


# static fields
.field private static final ATTACH_FILE_PREFIX:Ljava/lang/String; = ".attach_pid"

.field private static final DEFAULT_ATTEMPTS:I = 0xa

.field private static final DEFAULT_PAUSE:J = 0xc8L

.field private static final DEFAULT_TIMEOUT:J = 0x1388L

.field private static final SOCKET_FILE_PREFIX:Ljava/lang/String; = ".java_pid"

.field private static final TEMPORARY_DIRECTORY:Ljava/lang/String; = "/tmp"


# instance fields
.field private final attempts:I

.field private final pause:J

.field private final socket:Ljava/lang/Object;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final timeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;IJJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;-><init>(Ljava/lang/String;)V

    .line 232
    iput-object p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    .line 233
    iput p3, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->attempts:I

    .line 234
    iput-wide p4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->pause:J

    .line 235
    iput-wide p6, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeout:J

    .line 236
    iput-object p8, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static assertAvailability()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 247
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocket;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "java.vm.name"

    .line 249
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hotspot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-class v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot apply attachment on non-Hotspot compatible VM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "POSIX sockets are not supported on the current system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static attach(Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    new-instance v9, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;

    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocket;->newInstance()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v3, 0xa

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x1388

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;-><init>(Ljava/lang/String;Ljava/lang/Object;IJJLjava/util/concurrent/TimeUnit;)V

    return-object v9
.end method


# virtual methods
.method protected connect()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Could not delete attach file: "

    const-string v1, "net.bytebuddy"

    const-string v2, "Could not create attach file: "

    .line 270
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".java_pid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/tmp"

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".attach_pid"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/cwd/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 273
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :catch_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kill -3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 287
    iget v4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->attempts:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    .line 291
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    .line 292
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while sending signal to target VM: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    add-int/lit8 v4, v4, -0x1

    .line 298
    :try_start_3
    iget-object v6, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->pause:J

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    if-gtz v4, :cond_3

    :goto_1
    if-eqz v5, :cond_7

    .line 304
    iget v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->attempts:I

    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_5

    .line 305
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 306
    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->pause:J

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    move v2, v4

    goto :goto_2

    .line 308
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_6

    .line 314
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_9

    .line 315
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    .line 309
    :cond_6
    :try_start_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target VM did not respond: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target VM did not respond to signal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 312
    :try_start_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Interrupted during wait for process"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 314
    :goto_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_8

    .line 315
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_8
    throw v2

    .line 319
    :cond_9
    :goto_4
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeout:J

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFUNIXSocket;->setSoTimeout(I)V

    .line 320
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    new-instance v1, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    invoke-direct {v1, v3}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFUNIXSocket;->connect(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public detach()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocket;->close()V

    return-void
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
