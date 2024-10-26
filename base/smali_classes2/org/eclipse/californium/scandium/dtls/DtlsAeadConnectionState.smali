.class public Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;
.super Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
.source "DtlsAeadConnectionState.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final encryptionKey:Ljavax/crypto/SecretKey;

.field private final iv:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 67
    invoke-static {p3}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 68
    invoke-static {p4}, Lorg/eclipse/californium/scandium/util/SecretUtil;->createIv(Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;)Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->iv:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "IV must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Encryption key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    .line 213
    invoke-static {p3}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->readSecretKey(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 214
    invoke-static {p3}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->readIv(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->iv:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    return-void
.end method


# virtual methods
.method public decrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 134
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getRecordIvLength()I

    move-result v6

    .line 135
    array-length v0, p2

    sub-int/2addr v0, v6

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 147
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Record;->generateAdditionalData(I)[B

    move-result-object v4

    .line 149
    new-instance v1, Lorg/eclipse/californium/elements/util/DatagramWriter;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(IZ)V

    .line 150
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->iv:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    invoke-virtual {v2, v1}, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v1, p2, v2, v6}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([BII)V

    .line 152
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v8

    .line 154
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "decrypt: {} bytes"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v8}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nonce: {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adata: {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getTransformation()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AES/CCM/NoPadding"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 164
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/Record;->writeExplicitNonce(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 165
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object p1

    .line 166
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The explicit nonce used by the sender does not match the values provided in the DTLS record"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Used    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Expected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 176
    :cond_1
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    array-length p1, p2

    sub-int v7, p1, v6

    move-object v3, v8

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->decrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;[B[B[BII)[B

    move-result-object p1

    .line 178
    invoke-static {v8}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    return-object p1

    .line 137
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Ciphertext too short!"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_3
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

    .line 73
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 74
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->iv:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    return-void
.end method

.method public encrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(IZ)V

    .line 105
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->iv:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 106
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Record;->writeExplicitNonce(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 107
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    .line 108
    array-length v1, p2

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/Record;->generateAdditionalData(I)[B

    move-result-object p1

    .line 110
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "encrypt: {} bytes"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nonce: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adata: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {v1, v2, v0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->encrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p1

    .line 122
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getFixedIvLength()I

    move-result p2

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getRecordIvLength()I

    move-result v2

    invoke-static {v0, p2, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    .line 124
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->LOGGER:Lorg/slf4j/Logger;

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "==> {} bytes"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public isDestroyed()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->iv:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/security/auth/Destroyable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

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

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DtlsAeadConnectionState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 185
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cipher suite: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Compression method: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IV: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->iv:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

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

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Encryption key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {p1, v0}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljavax/crypto/SecretKey;)V

    .line 199
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;->iv:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    invoke-static {p1, v0}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;)V

    return-void
.end method
