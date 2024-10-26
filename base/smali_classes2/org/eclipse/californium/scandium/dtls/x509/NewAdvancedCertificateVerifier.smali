.class public interface abstract Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;
.super Ljava/lang/Object;
.source "NewAdvancedCertificateVerifier.java"


# virtual methods
.method public abstract getAcceptedIssuers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedCertificateTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
.end method

.method public abstract verifyCertificate(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;
.end method
