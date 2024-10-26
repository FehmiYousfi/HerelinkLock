.class public interface abstract Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;
.super Ljava/lang/Object;
.source "ResumptionVerifier.java"


# virtual methods
.method public abstract setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
.end method

.method public abstract skipRequestHelloVerify(Lorg/eclipse/californium/scandium/dtls/SessionId;)Z
.end method

.method public abstract verifyResumptionRequest(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;
.end method
