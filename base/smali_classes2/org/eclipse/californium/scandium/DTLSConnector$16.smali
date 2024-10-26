.class Lorg/eclipse/californium/scandium/DTLSConnector$16;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->processNewClientHello(Lorg/eclipse/californium/scandium/dtls/Record;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$cause:Lorg/eclipse/californium/scandium/dtls/DtlsException;

.field final synthetic val$handshaker:Lorg/eclipse/californium/scandium/dtls/Handshaker;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DtlsException;)V
    .locals 0

    .line 2087
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$16;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$16;->val$handshaker:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iput-object p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$16;->val$cause:Lorg/eclipse/californium/scandium/dtls/DtlsException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2091
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$16;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$16;->val$handshaker:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$16;->val$cause:Lorg/eclipse/californium/scandium/dtls/DtlsException;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
