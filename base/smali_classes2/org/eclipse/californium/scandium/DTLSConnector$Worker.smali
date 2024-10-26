.class public abstract Lorg/eclipse/californium/scandium/DTLSConnector$Worker;
.super Ljava/lang/Thread;
.source "DTLSConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;


# direct methods
.method protected constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Ljava/lang/String;)V
    .locals 0

    .line 3120
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    .line 3121
    sget-object p1, Lorg/eclipse/californium/elements/util/NamedThreadFactory;->SCANDIUM_THREAD_GROUP:Ljava/lang/ThreadGroup;

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public run()V
    .locals 5

    const-string v0, "Worker thread [{}] has terminated"

    .line 3127
    :try_start_0
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Starting worker thread [{}]"

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3128
    :goto_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 3130
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->doWork()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3144
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "Exception thrown by worker thread [{}]"

    if-eqz v2, :cond_0

    .line 3145
    :try_start_3
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3147
    :cond_0
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3138
    :catch_1
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "Worker thread [{}] has been interrupted"

    if-eqz v1, :cond_1

    .line 3139
    :try_start_4
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3141
    :cond_1
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3132
    :catch_2
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "Worker thread [{}] IO has been interrupted"

    if-eqz v1, :cond_2

    .line 3133
    :try_start_5
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3135
    :cond_2
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 3152
    :cond_3
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3153
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 3155
    :cond_4
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 3152
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3153
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 3155
    :cond_5
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    throw v1
.end method
