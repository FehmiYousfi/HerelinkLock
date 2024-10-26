.class public final Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;
.super Ljava/lang/Object;
.source "AeadBlockCipher.java"


# static fields
.field public static final AES_CCM:Ljava/lang/String; = "AES/CCM"

.field public static final AES_CCM_NO_PADDING:Ljava/lang/String; = "AES/CCM/NoPadding"

.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;[B[B[BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getTransformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->isAesCcm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v1 .. v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;->decrypt(Ljavax/crypto/SecretKey;[B[B[BIII)[B

    move-result-object p0

    return-object p0

    .line 108
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->jreDecrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;[B[B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static final encrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getTransformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->isAesCcm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getRecordIvLength()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;->encrypt(ILjavax/crypto/SecretKey;[B[B[BI)[B

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getRecordIvLength()I

    move-result v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->jreEncrypt(ILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static final isAesCcm(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "AES/CCM/NoPadding"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AES/CCM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isSupported(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    .line 77
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{} is not supported!"

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 79
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "{} is not restricted!"

    invoke-interface {v2, v4, p0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    :cond_1
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Max. allowed key length for {} is {} bits"

    invoke-interface {v2, v4, p0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    mul-int/lit8 p1, p1, 0x8

    if-gt p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static final jreDecrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;[B[B[BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 154
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-direct {v1, p0, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 p0, 0x2

    .line 155
    invoke-virtual {v0, p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 156
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 157
    invoke-virtual {v0, p4, p5, p6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static final jreEncrypt(ILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 177
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    invoke-direct {v1, p1, p3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 p1, 0x1

    .line 178
    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 179
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 180
    array-length p1, p5

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p1

    add-int/2addr p1, p0

    .line 181
    new-array p1, p1, [B

    .line 182
    array-length v3, p5

    const/4 v2, 0x0

    move-object v1, p5

    move-object v4, p1

    move v5, p0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    return-object p1
.end method
