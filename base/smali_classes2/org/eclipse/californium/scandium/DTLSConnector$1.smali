.class Lorg/eclipse/californium/scandium/DTLSConnector$1;
.super Lorg/eclipse/californium/scandium/dtls/SessionAdapter;
.source "DTLSConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$1;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/SessionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public contextEstablished(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 353
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$1;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$000(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public handshakeFailed(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Throwable;)V
    .locals 0

    .line 358
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$1;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$000(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
