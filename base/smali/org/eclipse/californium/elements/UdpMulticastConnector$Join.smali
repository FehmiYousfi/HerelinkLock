.class Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;
.super Ljava/lang/Object;
.source "UdpMulticastConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/UdpMulticastConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Join"
.end annotation


# instance fields
.field private final multicastGroup:Ljava/net/InetAddress;

.field private final networkInterface:Ljava/net/NetworkInterface;


# direct methods
.method private constructor <init>(Ljava/net/InetAddress;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->multicastGroup:Ljava/net/InetAddress;

    const/4 p1, 0x0

    .line 323
    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->networkInterface:Ljava/net/NetworkInterface;

    return-void
.end method

.method private constructor <init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->multicastGroup:Ljava/net/InetAddress;

    .line 328
    iput-object p2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->networkInterface:Ljava/net/NetworkInterface;

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Lorg/eclipse/californium/elements/UdpMulticastConnector$1;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/InetAddress;Lorg/eclipse/californium/elements/UdpMulticastConnector$1;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;-><init>(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/InetAddress;
    .locals 0

    .line 316
    iget-object p0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->multicastGroup:Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic access$200(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/NetworkInterface;
    .locals 0

    .line 316
    iget-object p0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->networkInterface:Ljava/net/NetworkInterface;

    return-object p0
.end method
