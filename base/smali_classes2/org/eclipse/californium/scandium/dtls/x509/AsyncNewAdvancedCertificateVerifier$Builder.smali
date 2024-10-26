.class public Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$Builder;
.super Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
.source "AsyncNewAdvancedCertificateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;
    .locals 4

    .line 172
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$Builder;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$Builder;->trustedRPKs:[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$Builder;->supportedCertificateTypes:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;-><init>([Ljava/security/cert/X509Certificate;[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$Builder;->build()Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;

    move-result-object v0

    return-object v0
.end method
