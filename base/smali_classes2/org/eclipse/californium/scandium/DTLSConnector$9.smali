.class Lorg/eclipse/californium/scandium/DTLSConnector$9;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile lastNanos:J

.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$healthStatusIntervalMillis:I


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;I)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->val$healthStatusIntervalMillis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->lastNanos:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1090
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    .line 1091
    iget v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->val$healthStatusIntervalMillis:I

    if-lez v2, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->lastNanos:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->val$healthStatusIntervalMillis:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1093
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v2, v2, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v3, v3, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getLoggingTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v4, v4, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxConnections()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v5}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$700(Lorg/eclipse/californium/scandium/DTLSConnector;)Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->remainingCapacity()I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v6}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$000(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/californium/scandium/DtlsHealth;->dump(Ljava/lang/String;III)V

    .line 1095
    iput-wide v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->lastNanos:J

    goto :goto_0

    .line 1096
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    instance-of v0, v0, Lorg/eclipse/californium/scandium/DtlsHealthExtended;

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    check-cast v0, Lorg/eclipse/californium/scandium/DtlsHealthExtended;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v1, v1, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxConnections()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$9;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$700(Lorg/eclipse/californium/scandium/DTLSConnector;)Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->remainingCapacity()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/DtlsHealthExtended;->setConnections(I)V

    :cond_1
    :goto_0
    return-void
.end method
