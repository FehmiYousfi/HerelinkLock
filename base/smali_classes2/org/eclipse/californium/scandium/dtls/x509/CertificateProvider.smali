.class public interface abstract Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;
.super Ljava/lang/Object;
.source "CertificateProvider.java"


# virtual methods
.method public abstract getSupportedCertificateKeyAlgorithms()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
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

.method public abstract requestCertificateIdentity(Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/ConnectionId;",
            "Z",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Lorg/eclipse/californium/scandium/util/ServerNames;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;)",
            "Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;"
        }
    .end annotation
.end method

.method public abstract setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
.end method
