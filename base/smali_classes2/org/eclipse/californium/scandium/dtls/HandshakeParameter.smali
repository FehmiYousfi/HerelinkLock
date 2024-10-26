.class public Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;
.super Ljava/lang/Object;
.source "HandshakeParameter.java"


# instance fields
.field private final certificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

.field private final keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 53
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    .line 54
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;->certificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "certificate type must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key exchange must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;->certificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object v0
.end method

.method public getKeyExchangeAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyExgAl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cert.type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;->certificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
