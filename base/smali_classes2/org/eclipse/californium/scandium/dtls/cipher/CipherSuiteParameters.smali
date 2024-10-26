.class public Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;
.super Ljava/lang/Object;
.source "CipherSuiteParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;,
        Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;
    }
.end annotation


# instance fields
.field private certificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private certificateMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

.field private cipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

.field private clientCertTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field private format:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

.field private generalMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

.field private publicKey:Ljava/security/PublicKey;

.field private selectedCipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field private selectedClientCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

.field private selectedServerCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

.field private selectedSignature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

.field private selectedSupportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field private serverCertTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field private signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private supportedGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/util/List;Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;",
            ")V"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->publicKey:Ljava/security/PublicKey;

    .line 166
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateChain:Ljava/util/List;

    .line 167
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    .line 168
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->cipherSuites:Ljava/util/List;

    .line 169
    iput-object p5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->serverCertTypes:Ljava/util/List;

    .line 170
    iput-object p6, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientCertTypes:Ljava/util/List;

    .line 171
    iput-object p7, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->supportedGroups:Ljava/util/List;

    .line 172
    iput-object p8, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->signatures:Ljava/util/List;

    .line 173
    iput-object p9, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->format:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/util/List;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;",
            ")V"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->publicKey:Ljava/security/PublicKey;

    .line 187
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateChain:Ljava/util/List;

    .line 188
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    .line 189
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->cipherSuites:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->cipherSuites:Ljava/util/List;

    .line 190
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->serverCertTypes:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->serverCertTypes:Ljava/util/List;

    .line 191
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientCertTypes:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientCertTypes:Ljava/util/List;

    .line 192
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->supportedGroups:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->supportedGroups:Ljava/util/List;

    .line 193
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->signatures:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->signatures:Ljava/util/List;

    .line 194
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->format:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->format:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    .line 195
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedCipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedCipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 196
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedServerCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedServerCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 197
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedClientCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedClientCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 198
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSupportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSupportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 199
    iget-object p1, p3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSignature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSignature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    return-void
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

    .line 231
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateChain:Ljava/util/List;

    return-object v0
.end method

.method public getCertificateMismatch()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    return-object v0
.end method

.method public getCipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->cipherSuites:Ljava/util/List;

    return-object v0
.end method

.method public getClientAuthenticationMode()Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    return-object v0
.end method

.method public getClientCertTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientCertTypes:Ljava/util/List;

    return-object v0
.end method

.method public getFormat()Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->format:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-object v0
.end method

.method public getGeneralMismatch()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->generalMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    return-object v0
.end method

.method public getMismatchDescription()Ljava/lang/String;
    .locals 4

    .line 434
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getMismatchSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\tcipher suites: "

    .line 438
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->cipherSuites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 440
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 443
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_EC_GROUPS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    if-ne v0, v2, :cond_2

    .line 444
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t\tec-groups: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->supportedGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 446
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 448
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 449
    :cond_2
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_PATH_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    if-ne v0, v2, :cond_5

    .line 451
    :cond_3
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t\tsignatures: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->signatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 453
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 455
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 457
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public getMismatchSummary()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->generalMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSelectedCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedCipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    return-object v0
.end method

.method public getSelectedClientCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedClientCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object v0
.end method

.method public getSelectedServerCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedServerCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object v0
.end method

.method public getSelectedSignature()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSignature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    return-object v0
.end method

.method public getSelectedSupportedGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSupportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object v0
.end method

.method public getServerCertTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->serverCertTypes:Ljava/util/List;

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->signatures:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->supportedGroups:Ljava/util/List;

    return-object v0
.end method

.method public select(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 342
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->cipherSuites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedCipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    return-void

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is no common cipher suite!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cipher suite must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selectClientCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 374
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientCertTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " client certificate type is no common certificate type."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedClientCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-void
.end method

.method public selectServerCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 358
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->serverCertTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " server certificate type is no common certificate type."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedServerCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-void
.end method

.method public selectSignatureAndHashAlgorithm(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 406
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->signatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is no common signature and hash algorithm."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSignature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    return-void
.end method

.method public selectSupportedGroup(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 390
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->supportedGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is no common group/curve."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSupportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-void
.end method

.method public setCertificateMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    return-void
.end method

.method public setGeneralMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->generalMismatch:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cipher suites: "

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->cipherSuites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "#"

    const-string v4, ","

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 467
    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedCipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    if-ne v5, v2, :cond_0

    .line 468
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 473
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateChain:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "x509-DN: ["

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->certificateChain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_2
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_5

    .line 479
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    sget-object v2, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NEEDED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    if-ne v1, v2, :cond_3

    const-string v1, "client certificate required"

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 481
    :cond_3
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    sget-object v2, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->WANTED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    if-ne v1, v2, :cond_4

    const-string v1, "client certificate wanted"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "no client certificate"

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :goto_1
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "server certificate types: "

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->serverCertTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 490
    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedServerCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-ne v5, v2, :cond_6

    .line 491
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 495
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 496
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "client certificate types: "

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->clientCertTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 499
    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedClientCertificateType:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-ne v5, v2, :cond_8

    .line 500
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_8
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 504
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 505
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ec-groups: "

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->supportedGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 508
    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSupportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    if-ne v5, v2, :cond_a

    .line 509
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_a
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 513
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 514
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signatures: "

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->signatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 517
    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectedSignature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    if-ne v5, v2, :cond_c

    .line 518
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_c
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 522
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 523
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
