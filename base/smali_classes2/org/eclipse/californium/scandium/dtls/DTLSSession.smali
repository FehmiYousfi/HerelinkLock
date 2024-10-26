.class public final Lorg/eclipse/californium/scandium/dtls/DTLSSession;
.super Ljava/lang/Object;
.source "DTLSSession.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# static fields
.field private static final MAX_FRAGMENT_LENGTH_DEFAULT:I = 0x4000

.field private static final VERSION:I = 0x2


# instance fields
.field private cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field private compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

.field private creationTime:J

.field private ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field private extendedMasterSecret:Z

.field private hostName:Ljava/lang/String;

.field private masterSecret:Ljavax/crypto/SecretKey;

.field private maxFragmentLength:I

.field private peerIdentity:Ljava/security/Principal;

.field private peerSupportsSni:Z

.field private protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

.field private receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

.field private recordSizeLimit:Ljava/lang/Integer;

.field private sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

.field private serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

.field private sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

.field private signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/SessionId;->emptySessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    .line 96
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    const/16 v0, 0x4000

    .line 113
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    .line 122
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 140
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    .line 161
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 167
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/SessionId;->emptySessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    .line 96
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    const/16 v0, 0x4000

    .line 113
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    .line 122
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 140
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    .line 161
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 167
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    .line 191
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setHostName(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 7

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/SessionId;->emptySessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    .line 96
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    const/16 v0, 0x4000

    .line 113
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    .line 122
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 140
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    .line 161
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 167
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    const/16 v1, 0x40

    .line 890
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    .line 891
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 892
    invoke-static {}, Lorg/eclipse/californium/scandium/util/ServerNames;->newInstance()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    .line 894
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    invoke-virtual {v1, p1}, Lorg/eclipse/californium/scandium/util/ServerNames;->decode(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    .line 895
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    sget-object v3, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/util/ServerNames;->getServerName(Lorg/eclipse/californium/scandium/util/ServerName$NameType;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 897
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/util/ServerName;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    :catch_0
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    :cond_0
    :goto_0
    const/16 v0, 0x10

    .line 903
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    const v3, 0xffff

    if-ge v1, v3, :cond_1

    .line 905
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->recordSizeLimit:Ljava/lang/Integer;

    .line 907
    :cond_1
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 908
    iput v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    const/16 v1, 0x8

    .line 909
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 911
    new-instance v4, Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-direct {v4, v3}, Lorg/eclipse/californium/scandium/dtls/SessionId;-><init>([B)V

    iput-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    .line 913
    :cond_2
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    .line 914
    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getTypeByCode(I)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 915
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const-string v5, "!"

    if-eqz v4, :cond_b

    .line 918
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    .line 919
    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->getMethodByCode(I)Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    .line 920
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    if-eqz v4, :cond_a

    .line 923
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    .line 924
    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->getTypeFromCode(I)Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 925
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    const-string v6, "unknown send certificate type 0x"

    if-eqz v4, :cond_9

    .line 928
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    .line 929
    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->getTypeFromCode(I)Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 930
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-eqz v4, :cond_8

    .line 933
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->extendedMasterSecret:Z

    .line 934
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->readSecretKey(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljavax/crypto/SecretKey;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    .line 935
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v3

    if-ne v3, v2, :cond_4

    .line 936
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    .line 937
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 938
    new-instance v4, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-direct {v4, v3, v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(II)V

    iput-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 940
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v1

    if-ne v1, v2, :cond_6

    .line 941
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    .line 942
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->fromId(I)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 943
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    if-eqz v1, :cond_5

    goto :goto_2

    .line 944
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown ec-group 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 947
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v0

    if-ne v0, v2, :cond_7

    .line 949
    :try_start_1
    invoke-static {p1}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;->deserialize(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljava/security/Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerIdentity:Ljava/security/Principal;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 951
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "principal failure"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    :goto_3
    const-string v0, "dtls-session"

    .line 954
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->assertFinished(Ljava/lang/String;)V

    return-void

    .line 931
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 926
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 921
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown compression method 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 916
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown cipher suite 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V
    .locals 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/SessionId;->emptySessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    .line 96
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    const/16 v0, 0x4000

    .line 113
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    .line 122
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 140
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    .line 161
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 167
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 201
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->set(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V

    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/DTLSSession;
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x10

    .line 872
    invoke-static {p0, v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readStartItem(Lorg/eclipse/californium/elements/util/DataStreamReader;II)I

    move-result v0

    if-lez v0, :cond_0

    .line 874
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 875
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addEndpointContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V
    .locals 4

    .line 408
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/californium/elements/util/Bytes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIME:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/Bytes;-><init>([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    .line 410
    :goto_0
    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 411
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 412
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->extendedMasterSecret:Z

    if-eqz v0, :cond_1

    .line 413
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_EXTENDED_MASTER_SECRET:Lorg/eclipse/californium/elements/Definition;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    .line 234
    iput-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->extendedMasterSecret:Z

    .line 235
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 236
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    .line 237
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 238
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 239
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerIdentity:Ljava/security/Principal;

    .line 240
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 241
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 752
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 755
    :cond_2
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    .line 756
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-static {v2, v3}, Lorg/eclipse/californium/scandium/util/SecretUtil;->equals(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 759
    :cond_3
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-static {v2, v3}, Lorg/eclipse/californium/elements/util/Bytes;->equals(Lorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 762
    :cond_4
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    if-eq v2, v3, :cond_5

    return v1

    .line 765
    :cond_5
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    if-eq v2, v3, :cond_6

    return v1

    .line 768
    :cond_6
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->extendedMasterSecret:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->extendedMasterSecret:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 771
    :cond_7
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerSupportsSni:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerSupportsSni:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 774
    :cond_8
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-eq v2, v3, :cond_9

    return v1

    .line 777
    :cond_9
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-eq v2, v3, :cond_a

    return v1

    .line 780
    :cond_a
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    if-eq v2, v3, :cond_b

    return v1

    .line 783
    :cond_b
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    iget-wide v4, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    return v1

    .line 786
    :cond_c
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 789
    :cond_d
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 792
    :cond_e
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->recordSizeLimit:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->recordSizeLimit:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 795
    :cond_f
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerIdentity:Ljava/security/Principal;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerIdentity:Ljava/security/Principal;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 798
    :cond_10
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    :cond_11
    return v0
.end method

.method public getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    return-object v0
.end method

.method public getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 320
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    return-wide v0
.end method

.method public getEcGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    .locals 1

    .line 705
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object v0
.end method

.method public getEffectiveFragmentLimit()I
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->recordSizeLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 654
    :cond_0
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method final getKeyExchange()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;
    .locals 2

    .line 474
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getKeyExchange()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object v0

    return-object v0

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher suite has not been set (yet)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getMasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    .line 515
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCiphertextExpansion()I
    .locals 2

    .line 566
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMaxCiphertextExpansion()I

    move-result v0

    return v0

    .line 567
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing cipher suite."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxFragmentLength()I
    .locals 1

    .line 616
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    return v0
.end method

.method public getPeerIdentity()Ljava/security/Principal;
    .locals 1

    .line 725
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerIdentity:Ljava/security/Principal;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object v0
.end method

.method public getRecordSizeLimit()Ljava/lang/Integer;
    .locals 1

    .line 638
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->recordSizeLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    return-object v0
.end method

.method public getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    return-object v0
.end method

.method public getSignatureAndHashAlgorithm()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;
    .locals 1

    .line 683
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 743
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SessionId;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/crypto/SecretKey;)Z

    move-result v0

    return v0
.end method

.method public isSniSupported()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerSupportsSni:Z

    return v0
.end method

.method receiveCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object v0
.end method

.method sendCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;
    .locals 1

    .line 659
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object v0
.end method

.method public set(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V
    .locals 2

    .line 213
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCreationTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    .line 214
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    .line 215
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 216
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    .line 217
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerIdentity:Ljava/security/Principal;

    .line 218
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 219
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    .line 220
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSignatureAndHashAlgorithm()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 221
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getEcGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 222
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->extendedMasterSecret:Z

    .line 223
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 224
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 225
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getRecordSizeLimit()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->recordSizeLimit:Ljava/lang/Integer;

    .line 226
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getMaxFragmentLength()I

    move-result v0

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    .line 227
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setServerNames(Lorg/eclipse/californium/scandium/util/ServerNames;)V

    return-void
.end method

.method setCipherSuite(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 436
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    if-eq v0, p1, :cond_0

    .line 439
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    return-void

    .line 437
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negotiated cipher suite must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setCompressionMethod(Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-void
.end method

.method setEcGroup(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-void
.end method

.method public setExtendedMasterSecret(Z)V
    .locals 0

    .line 492
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->extendedMasterSecret:Z

    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    .line 345
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->hostName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 347
    sget-object v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    sget-object v1, Lorg/eclipse/californium/scandium/util/ServerName;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/util/ServerName;->from(Lorg/eclipse/californium/scandium/util/ServerName$NameType;[B)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/ServerNames;->newInstance(Lorg/eclipse/californium/scandium/util/ServerName;)Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    :cond_0
    return-void
.end method

.method setMasterSecret(Ljavax/crypto/SecretKey;)V
    .locals 4

    .line 536
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_3

    .line 537
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 542
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 544
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    .line 545
    array-length v1, v0

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 550
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    goto :goto_0

    .line 546
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Master secret must consist of of exactly %d bytes but has %d bytes"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 539
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Master secret must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 552
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    return-void

    .line 554
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "master secret already available!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setMaxFragmentLength(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x4000

    if-gt p1, v0, :cond_0

    .line 597
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    return-void

    .line 594
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max. fragment length must be in range [0...16384]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setPeerIdentity(Ljava/security/Principal;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 738
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerIdentity:Ljava/security/Principal;

    return-void

    .line 736
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Peer identity must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setProtocolVersion(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)V
    .locals 2

    .line 307
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-void

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setReceiveCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-void
.end method

.method setRecordSizeLimit(I)V
    .locals 0

    .line 628
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;->ensureInRange(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->recordSizeLimit:Ljava/lang/Integer;

    return-void
.end method

.method setSendCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-void
.end method

.method public setServerNames(Lorg/eclipse/californium/scandium/util/ServerNames;)V
    .locals 1

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->hostName:Ljava/lang/String;

    .line 373
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    if-eqz p1, :cond_0

    .line 375
    sget-object v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/util/ServerNames;->getServerName(Lorg/eclipse/californium/scandium/util/ServerName$NameType;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/util/ServerName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->hostName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method setSessionIdentifier(Lorg/eclipse/californium/scandium/dtls/SessionId;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 274
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/SessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no new session identifier?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    .line 278
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    return-void

    .line 272
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "session identifier must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setSignatureAndHashAlgorithm(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    return-void
.end method

.method setSniSupported(Z)V
    .locals 0

    .line 399
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerSupportsSni:Z

    return-void
.end method

.method public useExtendedMasterSecret()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->extendedMasterSecret:Z

    return v0
.end method

.method public writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 6

    const/16 v0, 0x10

    const/4 v1, 0x2

    .line 819
    invoke-static {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeStartItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)I

    move-result v1

    .line 820
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->creationTime:J

    const/16 v4, 0x40

    invoke-virtual {p1, v2, v3, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 821
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-nez v2, :cond_0

    .line 822
    invoke-virtual {p1, v3, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    .line 824
    :cond_0
    invoke-virtual {p1, v4, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 825
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    invoke-virtual {v2, p1}, Lorg/eclipse/californium/scandium/util/ServerNames;->encode(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 827
    :goto_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->recordSizeLimit:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 828
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_1

    :cond_1
    const v2, 0xffff

    .line 830
    invoke-virtual {p1, v2, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 832
    :goto_1
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->maxFragmentLength:I

    invoke-virtual {p1, v2, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 833
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sessionIdentifier:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {p1, v2, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V

    .line 834
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCode()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 835
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->getCode()I

    move-result v2

    invoke-virtual {p1, v2, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 836
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->getCode()I

    move-result v2

    invoke-virtual {p1, v2, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 837
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->getCode()I

    move-result v2

    invoke-virtual {p1, v2, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 838
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->extendedMasterSecret:Z

    invoke-virtual {p1, v2, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 839
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-static {p1, v2}, Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljavax/crypto/SecretKey;)V

    .line 840
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    if-nez v2, :cond_2

    .line 841
    invoke-virtual {p1, v3, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_2

    .line 843
    :cond_2
    invoke-virtual {p1, v4, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 844
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getHash()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->getCode()I

    move-result v2

    invoke-virtual {p1, v2, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 845
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSignature()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->getCode()I

    move-result v2

    invoke-virtual {p1, v2, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 847
    :goto_2
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    if-nez v2, :cond_3

    .line 848
    invoke-virtual {p1, v3, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_3

    .line 850
    :cond_3
    invoke-virtual {p1, v4, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 851
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->ecGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->getId()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 853
    :goto_3
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerIdentity:Ljava/security/Principal;

    if-nez v2, :cond_4

    .line 854
    invoke-virtual {p1, v3, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_4

    .line 856
    :cond_4
    invoke-virtual {p1, v4, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 857
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->peerIdentity:Ljava/security/Principal;

    invoke-static {v2, p1}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;->serialize(Ljava/security/Principal;Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 859
    :goto_4
    invoke-static {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeFinishedItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)V

    return-void
.end method
