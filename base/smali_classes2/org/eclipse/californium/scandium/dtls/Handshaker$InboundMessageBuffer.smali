.class Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;
.super Ljava/lang/Object;
.source "Handshaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/Handshaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InboundMessageBuffer"
.end annotation


# instance fields
.field private changeCipherSpec:Lorg/eclipse/californium/scandium/dtls/Record;

.field private queue:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 1

    .line 581
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 583
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->changeCipherSpec:Lorg/eclipse/californium/scandium/dtls/Record;

    .line 585
    new-instance p1, Ljava/util/TreeSet;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer$1;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer$1;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;)V

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->queue:Ljava/util/SortedSet;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Handshaker$1;)V
    .locals 0

    .line 581
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    return-void
.end method


# virtual methods
.method getNextRecord()Lorg/eclipse/californium/scandium/dtls/Record;
    .locals 5

    .line 606
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isChangeCipherSpecMessageExpected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->changeCipherSpec:Lorg/eclipse/californium/scandium/dtls/Record;

    if-eqz v0, :cond_0

    .line 608
    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->changeCipherSpec:Lorg/eclipse/californium/scandium/dtls/Record;

    return-object v0

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->queue:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->queue:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/Record;

    .line 613
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageSeq()I

    move-result v2

    .line 614
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$200(Lorg/eclipse/californium/scandium/dtls/Handshaker;)I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 617
    :cond_1
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->queue:Ljava/util/SortedSet;

    invoke-static {v3, v0, v4}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$300(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)V

    .line 618
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$200(Lorg/eclipse/californium/scandium/dtls/Handshaker;)I

    move-result v3

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method getNextRecord(Lorg/eclipse/californium/scandium/dtls/Record;)Lorg/eclipse/californium/scandium/dtls/Record;
    .locals 8

    .line 649
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v0

    .line 650
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$400(Lorg/eclipse/californium/scandium/dtls/Handshaker;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 652
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v0

    .line 653
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/Handshaker$2;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 699
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v0

    const-string v1, "Cannot process message of type [{}], discarding..."

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 679
    :cond_0
    check-cast v0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 680
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageSeq()I

    move-result v1

    .line 681
    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v5}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$200(Lorg/eclipse/californium/scandium/dtls/Handshaker;)I

    move-result v5

    if-ne v1, v5, :cond_1

    return-object p1

    .line 683
    :cond_1
    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v5}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$200(Lorg/eclipse/californium/scandium/dtls/Handshaker;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-le v1, v5, :cond_2

    .line 684
    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object v5, v5, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$200(Lorg/eclipse/californium/scandium/dtls/Handshaker;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    const-string v0, "Queued newer {} message from current epoch, message_seq [{}] > next_receive_seq [{}]"

    invoke-interface {v5, v0, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->queue:Ljava/util/SortedSet;

    invoke-static {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$500(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)Z

    return-object v3

    .line 692
    :cond_2
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$200(Lorg/eclipse/californium/scandium/dtls/Handshaker;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Discarding old {} message_seq [{}] < next_receive_seq [{}]"

    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 666
    :cond_3
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isChangeCipherSpecMessageExpected()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    .line 668
    :cond_4
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->changeCipherSpec:Lorg/eclipse/californium/scandium/dtls/Record;

    if-nez v0, :cond_5

    .line 670
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Change Cipher Spec is not expected and therefore kept for later processing!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 671
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->changeCipherSpec:Lorg/eclipse/californium/scandium/dtls/Record;

    return-object v3

    .line 675
    :cond_5
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Change Cipher Spec is received again!"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-object v3

    .line 703
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record epoch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match dtls context "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method isEmpty()Z
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->queue:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    return v0
.end method
