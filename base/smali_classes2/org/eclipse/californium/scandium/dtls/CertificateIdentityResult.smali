.class public final Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeResult;
.source "CertificateIdentityResult.java"


# instance fields
.field private final certificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final privateKey:Ljava/security/PrivateKey;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->privateKey:Ljava/security/PrivateKey;

    .line 109
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->publicKey:Ljava/security/PublicKey;

    .line 110
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->certificateChain:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/Object;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p4}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 91
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->privateKey:Ljava/security/PrivateKey;

    .line 92
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->publicKey:Ljava/security/PublicKey;

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->certificateChain:Ljava/util/List;

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Public key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Private key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/security/PrivateKey;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/ConnectionId;",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p4}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 61
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->privateKey:Ljava/security/PrivateKey;

    const/4 p1, 0x0

    .line 65
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->publicKey:Ljava/security/PublicKey;

    .line 66
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->certificateChain:Ljava/util/List;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Certificate chain must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Certificate chain must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Private key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->certificateChain:Ljava/util/List;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method
