.class abstract Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;
.super Ljava/lang/Thread;
.source "UDPConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/UDPConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "NetworkStageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/elements/UDPConnector;


# direct methods
.method protected constructor <init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    .line 434
    sget-object p1, Lorg/eclipse/californium/elements/UDPConnector;->ELEMENTS_THREAD_GROUP:Ljava/lang/ThreadGroup;

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 435
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Exception in network stage thread [{}]:"

    const-string v1, "Network stage thread [{}] was stopped successfully at:"

    .line 439
    sget-object v2, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Starting network stage thread [{}]"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    iget-boolean v2, v2, Lorg/eclipse/californium/elements/UDPConnector;->running:Z

    if-eqz v2, :cond_2

    .line 442
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->work()V

    .line 443
    iget-object v2, p0, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    iget-boolean v2, v2, Lorg/eclipse/californium/elements/UDPConnector;->running:Z

    if-nez v2, :cond_0

    .line 444
    sget-object v2, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Network stage thread [{}] was stopped successfully"

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 458
    sget-object v3, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v2

    .line 452
    iget-object v3, p0, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    iget-boolean v3, v3, Lorg/eclipse/californium/elements/UDPConnector;->running:Z

    if-eqz v3, :cond_1

    .line 453
    sget-object v3, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_1
    sget-object v3, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 450
    sget-object v3, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 448
    sget-object v3, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected abstract work()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
