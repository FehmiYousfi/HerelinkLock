.class Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;
.super Ljava/lang/Object;
.source "Handshaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/Handshaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionTask"
.end annotation


# instance fields
.field private final force:Z

.field private final task:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 2099
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2100
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;->task:Ljava/lang/Runnable;

    .line 2101
    iput-boolean p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;->force:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Runnable;ZLorg/eclipse/californium/scandium/dtls/Handshaker$1;)V
    .locals 0

    .line 2081
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2106
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$600(Lorg/eclipse/californium/scandium/dtls/Handshaker;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v0

    .line 2108
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2110
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object v1, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$600(Lorg/eclipse/californium/scandium/dtls/Handshaker;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    const-string v3, "Execution rejected while execute task of peer: {}"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2111
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;->force:Z

    if-eqz v0, :cond_0

    .line 2112
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void
.end method
