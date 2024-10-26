.class Lorg/eclipse/californium/scandium/DTLSConnector$14;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->processDatagram(Ljava/net/DatagramPacket;Ljava/net/InetSocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$firstRecord:Lorg/eclipse/californium/scandium/dtls/Record;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 0

    .line 1570
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$14;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$14;->val$firstRecord:Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1574
    sget-boolean v0, Lorg/eclipse/californium/scandium/DTLSConnector;->MDC_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$14;->val$firstRecord:Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PEER"

    invoke-static {v1, v0}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$14;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$14;->val$firstRecord:Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1100(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;)V

    .line 1578
    sget-boolean v0, Lorg/eclipse/californium/scandium/DTLSConnector;->MDC_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 1579
    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    :cond_1
    return-void
.end method
