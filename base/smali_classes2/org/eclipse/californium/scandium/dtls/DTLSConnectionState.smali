.class public abstract Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
.super Ljava/lang/Object;
.source "DTLSConnectionState.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# static fields
.field public static final NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;


# instance fields
.field protected final cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field protected final compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState$1;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState$1;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 155
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 156
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-void

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Compression method must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Cipher suite must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;Ljavax/crypto/SecretKey;)Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
    .locals 2

    .line 105
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState$2;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$CipherType:[I

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherType()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p4, 0x3

    if-ne v0, p4, :cond_0

    .line 111
    new-instance p4, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;)V

    return-object p4

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cipher type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherType()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;

    invoke-direct {p3, p0, p1, p2, p4}, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object p3

    .line 107
    :cond_2
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    return-object p0
.end method

.method public static fromReader(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
    .locals 2

    .line 127
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState$2;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$CipherType:[I

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherType()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 131
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DtlsAeadConnectionState;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-object v0

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cipher type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherType()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_1
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DtlsBlockConnectionState;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-object v0
.end method


# virtual methods
.method public abstract decrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract encrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    return-object v0
.end method

.method getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-object v0
.end method

.method public hasValidCipherSuite()Z
    .locals 2

    .line 180
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
.end method
