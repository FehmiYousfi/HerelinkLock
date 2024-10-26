.class Lorg/eclipse/californium/scandium/DTLSConnector$3;
.super Lorg/eclipse/californium/scandium/dtls/SessionAdapter;
.source "DTLSConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$3;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$3;->val$connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/SessionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public contextEstablished(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V
    .locals 0

    .line 555
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$3;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {p2, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$200(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    return-void
.end method

.method public handshakeCompleted(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 2

    .line 560
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$3;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$3;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/DtlsHealth;->endHandshake(Z)V

    .line 563
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getConnection()Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getStartNanos()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$3;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$300(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public handshakeFailed(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Throwable;)V
    .locals 6

    .line 571
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$3;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$3;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/DtlsHealth;->endHandshake(Z)V

    .line 574
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->takeDeferredApplicationData()Ljava/util/List;

    move-result-object v0

    .line 575
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Handshake with [{}] failed, report error to deferred {} messages"

    invoke-interface {v2, v5, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 578
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/elements/RawData;

    .line 579
    invoke-virtual {v2, p2}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getConnection()Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v0

    .line 583
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isRemovingConnection()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$3;->val$connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    goto/16 :goto_1

    .line 585
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isProbing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 586
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    const-string v0, "Handshake with [{}] failed within probe!"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 587
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v2

    if-ne v1, v2, :cond_7

    .line 588
    instance-of v0, p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    if-eqz v0, :cond_5

    .line 589
    check-cast p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;->getAlert()Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 590
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getDescription()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CLOSE_NOTIFY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    if-ne v0, v1, :cond_4

    .line 591
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    const-string v0, "Handshake with [{}] closed after session was established!"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 594
    :cond_4
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    const-string v1, "Handshake with [{}] failed after session was established! {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 600
    :cond_5
    instance-of v0, p2, Lorg/eclipse/californium/scandium/dtls/ConnectionEvictedException;

    if-eqz v0, :cond_6

    .line 601
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    const-string v1, "Handshake with [{}] never get APPLICATION_DATA"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 604
    :cond_6
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    const-string v1, "Handshake with [{}] failed after session was established!"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 608
    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 609
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    const-string v0, "Handshake with [{}] failed, but has an established session!"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 612
    :cond_8
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    const-string v0, "Handshake with [{}] aborted, connection preserved!"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
