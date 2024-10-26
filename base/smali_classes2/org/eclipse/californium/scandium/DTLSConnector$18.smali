.class Lorg/eclipse/californium/scandium/DTLSConnector$18;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->send(Lorg/eclipse/californium/elements/RawData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

.field final synthetic val$message:Lorg/eclipse/californium/elements/RawData;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;JLorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 2539
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-wide p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$now:J

    iput-object p4, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$message:Lorg/eclipse/californium/elements/RawData;

    iput-object p5, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x1

    .line 2544
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2545
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-wide v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$now:J

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$message:Lorg/eclipse/californium/elements/RawData;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1400(Lorg/eclipse/californium/scandium/DTLSConnector;JLorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    goto :goto_0

    .line 2547
    :cond_0
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1500()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "DTLSConnector drops {} outgoing bytes to {}, connector not running!"

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$message:Lorg/eclipse/californium/elements/RawData;

    invoke-virtual {v3}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$message:Lorg/eclipse/californium/elements/RawData;

    invoke-virtual {v4}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2549
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$message:Lorg/eclipse/californium/elements/RawData;

    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Connector is not running."

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2550
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v1, v1, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v1, :cond_1

    .line 2551
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v1, v1, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v1, v0}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2566
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1600(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 2555
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2556
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Exception thrown by executor thread [{}]"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2559
    :cond_2
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1500()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "DTLSConnector drops {} outgoing bytes to {} {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$message:Lorg/eclipse/californium/elements/RawData;

    invoke-virtual {v6}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$message:Lorg/eclipse/californium/elements/RawData;

    invoke-virtual {v5}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2561
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v2, v2, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v2, :cond_3

    .line 2562
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v2, v2, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v2, v0}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    .line 2564
    :cond_3
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->val$message:Lorg/eclipse/californium/elements/RawData;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 2566
    :goto_2
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$18;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1600(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v0
.end method
