.class Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientHelloIdentifier"
.end annotation


# instance fields
.field private final clientHelloMessageSeq:I

.field private final clientHelloRandom:Lorg/eclipse/californium/scandium/dtls/Random;

.field private final nanos:J


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/elements/util/DatagramReader;J)V
    .locals 2

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 853
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->clientHelloMessageSeq:I

    const/16 v0, 0x8

    .line 854
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/Random;

    invoke-direct {v1, v0}, Lorg/eclipse/californium/scandium/dtls/Random;-><init>([B)V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->clientHelloRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 858
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->clientHelloRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    :goto_0
    const/16 v0, 0x40

    .line 860
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->nanos:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/elements/util/DatagramReader;JLorg/eclipse/californium/scandium/dtls/Connection$1;)V
    .locals 0

    .line 840
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;J)V

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 2

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getMessageSeq()I

    move-result v0

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->clientHelloMessageSeq:I

    .line 848
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->clientHelloRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    .line 849
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->nanos:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/scandium/dtls/ClientHello;Lorg/eclipse/californium/scandium/dtls/Connection$1;)V
    .locals 0

    .line 840
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;-><init>(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 0

    .line 840
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;)J
    .locals 2

    .line 840
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->nanos:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;Lorg/eclipse/californium/scandium/dtls/ClientHello;)Z
    .locals 0

    .line 840
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->isStartedByClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)Z

    move-result p0

    return p0
.end method

.method private isStartedByClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)Z
    .locals 2

    .line 864
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->clientHelloRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/Random;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->clientHelloMessageSeq:I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getMessageSeq()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private write(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 3

    .line 873
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->clientHelloMessageSeq:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 874
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->clientHelloRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V

    .line 875
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->nanos:J

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    return-void
.end method
