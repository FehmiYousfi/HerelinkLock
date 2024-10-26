.class public final Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeResult;
.source "CertificateVerificationResult.java"


# instance fields
.field private final certificatePath:Ljava/security/cert/CertPath;

.field private final exception:Lorg/eclipse/californium/scandium/dtls/HandshakeException;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/security/PublicKey;Ljava/lang/Object;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->certificatePath:Ljava/security/cert/CertPath;

    .line 86
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->publicKey:Ljava/security/PublicKey;

    .line 87
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->exception:Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/security/cert/CertPath;Ljava/lang/Object;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    .line 66
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->certificatePath:Ljava/security/cert/CertPath;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->publicKey:Ljava/security/PublicKey;

    .line 68
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->exception:Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/HandshakeException;Ljava/lang/Object;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->certificatePath:Ljava/security/cert/CertPath;

    .line 107
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->publicKey:Ljava/security/PublicKey;

    .line 108
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->exception:Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exception must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCertificatePath()Ljava/security/cert/CertPath;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->certificatePath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getException()Lorg/eclipse/californium/scandium/dtls/HandshakeException;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->exception:Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method
