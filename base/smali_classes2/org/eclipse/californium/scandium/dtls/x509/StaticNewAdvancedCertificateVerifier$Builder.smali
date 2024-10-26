.class public Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
.super Ljava/lang/Object;
.source "StaticNewAdvancedCertificateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected supportedCertificateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field protected trustedCertificates:[Ljava/security/cert/X509Certificate;

.field protected trustedRPKs:[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

.field protected useEmptyAcceptedIssuers:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;
    .locals 5

    .line 459
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedRPKs:[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->supportedCertificateTypes:Ljava/util/List;

    iget-boolean v4, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->useEmptyAcceptedIssuers:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;-><init>([Ljava/security/cert/X509Certificate;[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;Ljava/util/List;Z)V

    return-object v0
.end method

.method public hasTrusts()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedRPKs:[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setSupportedCertificateTypes(Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)",
            "Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;"
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->supportedCertificateTypes:Ljava/util/List;

    return-object p0
.end method

.method public setTrustAllCertificates()Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
    .locals 1

    .line 373
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->access$000()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public setTrustAllRPKs()Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
    .locals 1

    .line 407
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->access$100()[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedRPKs:[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    return-object p0
.end method

.method public varargs setTrustedCertificates([Ljava/security/cert/Certificate;)Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 356
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 357
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 358
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->access$000()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 360
    :cond_1
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil;->asX509Certificates([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 361
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil;->ensureUniqueCertificates([Ljava/security/cert/X509Certificate;)V

    .line 362
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    :goto_0
    return-object p0
.end method

.method public varargs setTrustedRPKs([Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;)Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
    .locals 5

    .line 390
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 391
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 392
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Truststore contains raw public key certificates duplicates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_1
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->trustedRPKs:[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    return-object p0
.end method

.method public setUseEmptyAcceptedIssuers(Z)Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
    .locals 0

    .line 440
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;->useEmptyAcceptedIssuers:Z

    return-object p0
.end method
