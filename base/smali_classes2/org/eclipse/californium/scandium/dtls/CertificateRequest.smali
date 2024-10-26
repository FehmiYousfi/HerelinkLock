.class public final Lorg/eclipse/californium/scandium/dtls/CertificateRequest;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "CertificateRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;
    }
.end annotation


# static fields
.field private static final CERTIFICATE_AUTHORITIES_LENGTH_BITS:I = 0x10

.field private static final CERTIFICATE_AUTHORITY_LENGTH_BITS:I = 0x10

.field private static final CERTIFICATE_TYPES_LENGTH_BITS:I = 0x8

.field private static final CERTIFICATE_TYPE_BITS:I = 0x8

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final MAX_LENGTH_CERTIFICATE_AUTHORITIES:I = 0xffff

.field private static final SUPPORTED_SIGNATURE_BITS:I = 0x8

.field private static final SUPPORTED_SIGNATURE_LENGTH_BITS:I = 0x10


# instance fields
.field private final certificateAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private certificateAuthoritiesEncodedLength:I

.field private final certificateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedSignatureAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthorities:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthoritiesEncodedLength:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthorities:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthoritiesEncodedLength:I

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 102
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 105
    invoke-virtual {p0, p3}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->addCerticiateAuthorities(Ljava/util/List;)Z

    :cond_2
    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 8

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8

    .line 188
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v2

    .line 189
    invoke-virtual {p0, v2}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v2

    .line 190
    :goto_0
    invoke-virtual {v2}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {v2, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    .line 192
    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->getTypeByCode(I)Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x10

    .line 196
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v4

    .line 197
    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v4

    .line 198
    :goto_1
    invoke-virtual {v4}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    invoke-virtual {v4, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v5

    .line 200
    invoke-virtual {v4, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v6

    .line 201
    new-instance v7, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-direct {v7, v5, v6}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(II)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v4

    .line 206
    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 207
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v4

    .line 209
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v5, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 212
    :cond_2
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public addCerticiateAuthorities(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)Z"
        }
    .end annotation

    .line 382
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/security/auth/x500/X500Principal;

    .line 383
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->addCertificateAuthority(Ljavax/security/auth/x500/X500Principal;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "could add only {} of {} certificate authorities, max length exceeded"

    invoke-interface {v0, v3, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public addCertificateAuthority(Ljavax/security/auth/x500/X500Principal;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 359
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    .line 361
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthoritiesEncodedLength:I

    add-int/2addr v1, v0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    .line 362
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthorities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthoritiesEncodedLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthoritiesEncodedLength:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 357
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "authority must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCertificateType(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V
    .locals 5

    .line 313
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->values()[Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 314
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->getCertificateKeyAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 315
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->addCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addSignatureAlgorithm(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSignatureAlgorithms(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public fragmentToByteArray()[B
    .locals 6

    .line 156
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>()V

    .line 158
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 159
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 160
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->getCode()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 164
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 165
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getHash()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->getCode()I

    move-result v5

    invoke-virtual {v0, v5, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 166
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSignature()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->getCode()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_1

    .line 169
    :cond_1
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthoritiesEncodedLength:I

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 170
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 172
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    .line 173
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCertificateAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthorities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateKeyAlgorithms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 412
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->getCertificateKeyAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCertificateTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageLength()I
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthoritiesEncodedLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 111
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method

.method public getSignatureAndHashAlgorithm(Ljava/security/PublicKey;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;)",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;"
        }
    .end annotation

    .line 485
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->isSupportedKeyType(Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-static {v0, p2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getCommonSignatureAlgorithms(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 488
    invoke-static {p2, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSupportedSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSignatureAndHashAlgorithm(Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;)",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 507
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 508
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->isSupportedKeyType(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-static {v1, p2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getCommonSignatureAlgorithms(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 512
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSupportedSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 516
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSignedWithSupportedAlgorithms(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSupportedSignatureAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isSupportedKeyType(Ljava/security/PublicKey;)Z
    .locals 2

    .line 424
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    .line 425
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 426
    invoke-virtual {v1, p1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->isCompatibleWithKeyAlgorithm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isSupportedKeyType(Ljava/security/cert/X509Certificate;)Z
    .locals 6

    .line 441
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 443
    invoke-virtual {v3, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->isCompatibleWithKeyAlgorithm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 444
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "type: {}, is not compatible with KeyAlgorithm[{}]"

    invoke-interface {v4, v5, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->requiresSigningCapability()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    .line 456
    invoke-static {p1, v5}, Lorg/eclipse/californium/elements/util/CertPathUtil;->canBeUsedForAuthentication(Ljava/security/cert/X509Certificate;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 458
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 459
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "type: {}, requires missing signing capability!"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 463
    :cond_2
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "type: {}, is compatible with KeyAlgorithm[{}] and meets signing requirements"

    invoke-interface {p1, v1, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v5

    .line 467
    :cond_3
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "certificate [{}] with public key {} is not of any supported type"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    .line 131
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x2

    .line 132
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Client certificate type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Signature and hash algorithm:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 145
    :cond_1
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthorities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Certificate authorities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->certificateAuthorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 151
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
