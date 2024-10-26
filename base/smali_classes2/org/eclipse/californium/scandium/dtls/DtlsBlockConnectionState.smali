.class public Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;
.super Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
.source "DtlsBlockConnectionState.java"


# instance fields
.field private final encryptionKey:Ljavax/crypto/SecretKey;

.field private final macKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 60
    invoke-static {p3}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 61
    invoke-static {p4}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->macKey:Ljavax/crypto/SecretKey;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MAC key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Encryption key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    .line 146
    invoke-static {p3}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->readSecretKey(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->macKey:Ljavax/crypto/SecretKey;

    .line 147
    invoke-static {p3}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->readSecretKey(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public decrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 94
    array-length v0, p2

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getRecordIvLength()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 96
    array-length v0, p2

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getRecordIvLength()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Record;->generateAdditionalData(I)[B

    move-result-object p1

    .line 102
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->macKey:Ljavax/crypto/SecretKey;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CbcBlockCipher;->decrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Ciphertext too short!"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Ciphertext doesn\'t fit block size!"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Ciphertext must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 67
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->macKey:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public encrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Record;->generateAdditionalData(I)[B

    move-result-object p1

    .line 83
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->macKey:Ljavax/crypto/SecretKey;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CbcBlockCipher;->encrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method getMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->macKey:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->macKey:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/crypto/SecretKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/crypto/SecretKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DtlsBlockConnectionState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 118
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cipher suite: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Compression method: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MAC key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->macKey:Ljavax/crypto/SecretKey;

    const-string v3, "null"

    const-string v4, "not null"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Encryption key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->macKey:Ljavax/crypto/SecretKey;

    invoke-static {p1, v0}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljavax/crypto/SecretKey;)V

    .line 132
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {p1, v0}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljavax/crypto/SecretKey;)V

    return-void
.end method
