.class Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;
.super Ljava/lang/Object;
.source "AsyncResumptionVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->verifyResumptionRequest(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;

.field final synthetic val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

.field final synthetic val$serverName:Lorg/eclipse/californium/scandium/util/ServerNames;

.field final synthetic val$sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;->this$0:Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;->val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;->val$serverName:Lorg/eclipse/californium/scandium/util/ServerNames;

    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;->val$sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 149
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;->this$0:Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;->val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;->val$serverName:Lorg/eclipse/californium/scandium/util/ServerNames;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;->val$sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->access$001(Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;->this$0:Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->access$100(Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;)Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;->apply(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    return-void
.end method
