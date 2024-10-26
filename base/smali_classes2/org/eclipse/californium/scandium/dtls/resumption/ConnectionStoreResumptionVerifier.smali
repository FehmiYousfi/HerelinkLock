.class public Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;
.super Ljava/lang/Object;
.source "ConnectionStoreResumptionVerifier.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;


# instance fields
.field private volatile connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;->setConnectionStore(Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V

    return-void
.end method


# virtual methods
.method public hasConnectionStore()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setConnectionStore(Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Connection store must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 0

    return-void
.end method

.method public skipRequestHelloVerify(Lorg/eclipse/californium/scandium/dtls/SessionId;)Z
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->find(Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 93
    :cond_0
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    :cond_1
    return v1
.end method

.method public verifyResumptionRequest(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;
    .locals 1

    .line 101
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {p2, p3}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->find(Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p2

    .line 102
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/DTLSSession;Ljava/lang/Object;)V

    return-object p3
.end method
