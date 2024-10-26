.class public Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;
.super Ljava/lang/Object;
.source "CertificateConfigurationHelper.java"


# instance fields
.field private final chains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation
.end field

.field private clientUsage:Z

.field private final defaultSignatureAndHashAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultSupportedGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private serverUsage:Z

.field private final trusts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->keys:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->chains:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->trusts:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSignatureAndHashAlgorithms:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSupportedGroups:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addConfigurationDefaultsFor(Ljava/security/PublicKey;)V
    .locals 3

    .line 114
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->isEcBased(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->fromPublicKey(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSupportedGroups:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Public key\'s ec-group must be supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSignatureAndHashAlgorithms:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->ensureSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)V

    .line 126
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->keys:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    return-void

    .line 116
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Public key algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConfigurationDefaultsFor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 144
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 145
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->addConfigurationDefaultsFor(Ljava/security/PublicKey;)V

    .line 146
    invoke-static {v1, v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->canBeUsedForAuthentication(Ljava/security/cert/X509Certificate;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 147
    iput-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->serverUsage:Z

    .line 149
    :cond_0
    invoke-static {v1, v2}, Lorg/eclipse/californium/elements/util/CertPathUtil;->canBeUsedForAuthentication(Ljava/security/cert/X509Certificate;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iput-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->clientUsage:Z

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSignatureAndHashAlgorithms:Ljava/util/List;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSignatureAlgorithms(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 154
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 155
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 156
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->isEcBased(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->fromPublicKey(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSupportedGroups:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    goto :goto_1

    .line 160
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CA\'s public key ec-group must be supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->chains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addConfigurationDefaultsForTrusts(Ljava/security/PublicKey;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSignatureAndHashAlgorithms:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->ensureSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)V

    .line 197
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->isEcBased(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->fromPublicKey(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSupportedGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CA\'s public key ec-group must be supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public addConfigurationDefaultsForTrusts([Ljava/security/cert/X509Certificate;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 179
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 180
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->addConfigurationDefaultsForTrusts(Ljava/security/PublicKey;)V

    .line 181
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->trusts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canBeUsedForAuthentication(Z)Z
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->chains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->clientUsage:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->serverUsage:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getDefaultSignatureAndHashAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSignatureAndHashAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultSupportedGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSupportedGroups:Ljava/util/List;

    return-object v0
.end method

.method public verifySignatureAndHashAlgorithmsConfiguration(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    .line 235
    invoke-static {p1, v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSupportedSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "supported signature and hash algorithms doesn\'t match the public key!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->chains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 241
    invoke-static {p1, v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSignedWithSupportedAlgorithms(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 242
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "supported signature and hash algorithms doesn\'t match the certificate chain!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_3
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->trusts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 247
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 248
    invoke-static {p1, v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSupportedSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 249
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported signature and hash algorithms doesn\'t match the trust\'s public key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method public verifySupportedGroupsConfiguration(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->defaultSupportedGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 264
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->isUsable()Z

    move-result v2

    const-string v3, "!"

    if-eqz v2, :cond_1

    .line 267
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "public key used with not configured group (curve) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "public key used with unsupported group (curve) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
