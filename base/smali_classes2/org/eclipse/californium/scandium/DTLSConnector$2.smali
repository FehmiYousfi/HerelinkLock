.class Lorg/eclipse/californium/scandium/DTLSConnector$2;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;


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


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$2;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$2;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$100(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    return-void
.end method
