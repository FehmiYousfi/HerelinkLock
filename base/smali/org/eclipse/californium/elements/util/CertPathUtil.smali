.class public Lorg/eclipse/californium/elements/util/CertPathUtil;
.super Ljava/lang/Object;
.source "CertPathUtil.java"


# static fields
.field private static final CLIENT_AUTHENTICATION:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final KEY_USAGE_CERTIFICATE_SIGNING:I = 0x5

.field private static final KEY_USAGE_SIGNATURE:I = 0x0

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SERVER_AUTHENTICATION:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final SUBJECT_ALTERNATIVE_NAMES_DNS:I = 0x2

.field private static final SUBJECT_ALTERNATIVE_NAMES_LITERAL_IP:I = 0x7

.field private static final TYPE_X509:Ljava/lang/String; = "X.509"

.field private static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lorg/eclipse/californium/elements/util/CertPathUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "\\s{2,}"

    .line 135
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/CertPathUtil;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBeUsedForAuthentication(Ljava/security/cert/X509Certificate;Z)Z
    .locals 8

    .line 177
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 178
    sget-object p1, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    const-string v0, "certificate: {}, not for signing!"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 182
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 183
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 184
    sget-object v3, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "certificate: {}"

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const-string v3, "1.3.6.1.5.5.7.3.2"

    goto :goto_0

    :cond_1
    const-string v3, "1.3.6.1.5.5.7.3.1"

    .line 187
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 188
    sget-object v6, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "   extkeyusage {}"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_3
    if-nez v4, :cond_6

    .line 194
    sget-object v2, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "certificate: {}, not for {}!"

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    if-eqz p1, :cond_4

    const-string p1, "client"

    goto :goto_2

    :cond_4
    const-string p1, "server"

    :goto_2
    invoke-interface {v2, v3, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 198
    :cond_5
    sget-object p1, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "certificate: {}, no extkeyusage!"

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 201
    sget-object p1, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "x509 certificate:"

    invoke-interface {p1, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return v0
.end method

.method public static canBeUsedToVerifySignature(Ljava/security/cert/X509Certificate;)Z
    .locals 3

    .line 147
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 148
    sget-object v0, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    const-string v2, "certificate: {}, not for CA!"

    invoke-interface {v0, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v2, 0x5

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    .line 152
    sget-object v0, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    const-string v2, "certificate: {}, not for certificate signing!"

    invoke-interface {v0, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static contains(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 735
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 736
    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 218
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->generateCertPath(Ljava/util/List;I)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Certificate chain must not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateCertPath(Ljava/util/List;I)Ljava/security/cert/CertPath;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;I)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 236
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_7

    .line 240
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 241
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    :goto_0
    if-gt v1, v0, :cond_4

    .line 244
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 245
    sget-object v5, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Current Subject DN: {}"

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 247
    :cond_0
    sget-object p0, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string p1, "Actual Issuer DN: {}"

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given certificates do not form a chain"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 251
    sget-object v5, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Expected Issuer DN: {}"

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v1, v0, :cond_2

    goto :goto_2

    .line 254
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given certificates do not form a chain, root is not the last!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ge v2, p1, :cond_5

    .line 261
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-object p0, v0

    :cond_6
    const-string p1, "X.509"

    .line 266
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 267
    invoke-virtual {p1, p0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 271
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "could not create X.509 certificate factory"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 237
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must not be larger then certificate chain!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Certificate chain must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateValidatableCertPath(Ljava/util/List;Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 293
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 296
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 299
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 300
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p1, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-le v0, v2, :cond_3

    if-ne p1, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 308
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 309
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, p1

    .line 317
    :cond_4
    :goto_2
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->generateCertPath(Ljava/util/List;I)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    .line 291
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Certificate chain must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSubjectsCn(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 0

    .line 525
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    .line 526
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readCNFromDN([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static matchDestination(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "match"

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    .line 631
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 633
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 634
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 637
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 638
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :cond_3
    if-nez v4, :cond_4

    .line 645
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->getSubjectsCn(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 655
    sget-object v2, Lorg/eclipse/californium/elements/util/CertPathUtil;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 656
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    return v3

    :catch_0
    move-exception p0

    .line 666
    sget-object p1, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 664
    sget-object p1, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 662
    sget-object p1, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return v1

    .line 627
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Destination must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 624
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Certificate must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static matchLiteralIP(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 594
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 598
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0

    .line 592
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Destination must nit be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 589
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Subject must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static matchLiteralIP(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 553
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->isLiteralIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 557
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 559
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 560
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 562
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 563
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->isLiteralIpAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    invoke-static {v1, p1}, Lorg/eclipse/californium/elements/util/CertPathUtil;->matchLiteralIP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v2

    :catch_0
    :cond_1
    return v0

    .line 554
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destination "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is no literal IP!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 551
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Destination must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 548
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Certificate must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static searchIssuer(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 5

    .line 689
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 691
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 692
    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 693
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    .line 694
    invoke-static {p0, v1}, Lorg/eclipse/californium/elements/util/CertPathUtil;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    move-object v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static toSubjects(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 503
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 506
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 507
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 508
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 513
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toX509CertificatesList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 484
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 485
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_0

    .line 488
    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given certificate is not X.509!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0

    .line 481
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Certificates list must not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateCertificatePathWithIssuer(ZLjava/security/cert/CertPath;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p2

    if-eqz v0, :cond_15

    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 349
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    .line 353
    :cond_0
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/CertPathUtil;->toX509CertificatesList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 354
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 357
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 362
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_3

    if-nez v4, :cond_2

    .line 365
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 367
    sget-object v0, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    const-string v2, "   trust all- single certificate {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    const-string v5, "last"

    move v9, v7

    move v11, v9

    goto/16 :goto_4

    :cond_3
    if-eqz p0, :cond_a

    const-string v5, "anchor"

    move v9, v8

    :goto_0
    if-ge v9, v3, :cond_5

    .line 379
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 380
    invoke-static {v10, v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->contains(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-le v4, v9, :cond_6

    move v11, v8

    move v4, v9

    move v9, v11

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move-object v10, v6

    :cond_6
    move v9, v7

    move v11, v9

    :goto_1
    if-nez v10, :cond_8

    .line 394
    invoke-static {v1, v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->searchIssuer(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 396
    invoke-virtual {v1, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v8

    move v9, v1

    :cond_7
    move-object v1, v4

    move v4, v3

    goto :goto_2

    :cond_8
    move-object v1, v10

    :goto_2
    if-nez v1, :cond_c

    .line 401
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 402
    invoke-static {v10, v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->contains(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result v12

    if-eqz v12, :cond_c

    if-le v3, v8, :cond_9

    .line 408
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    const-string v4, "node\'s issuer"

    move-object v5, v4

    move v4, v8

    move v11, v4

    goto :goto_4

    .line 412
    :cond_9
    sget-object v0, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    const-string v2, "   trust node - single certificate {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    .line 418
    :cond_a
    invoke-static {v1, v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->searchIssuer(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-nez v4, :cond_b

    .line 419
    invoke-static {v1, v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->contains(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v4, "last\'s subject"

    move-object v5, v4

    move v4, v7

    goto :goto_3

    .line 424
    :cond_b
    invoke-virtual {v1, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v8

    const-string v5, "last\'s issuer"

    move-object/from16 v16, v4

    move v4, v1

    move-object/from16 v1, v16

    :goto_3
    move v9, v4

    move v11, v7

    move v4, v3

    .line 428
    :cond_c
    :goto_4
    invoke-static {v2, v4}, Lorg/eclipse/californium/elements/util/CertPathUtil;->generateCertPath(Ljava/util/List;I)Ljava/security/cert/CertPath;

    move-result-object v10

    .line 429
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    if-nez v1, :cond_d

    .line 432
    aget-object v1, v0, v7

    .line 434
    :cond_d
    new-instance v0, Ljava/security/cert/TrustAnchor;

    invoke-direct {v0, v1, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 436
    invoke-virtual {v10}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->toX509CertificatesList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 437
    sget-object v13, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "verify: certificate path {} (orig. {})"

    invoke-interface {v13, v15, v14, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 439
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 440
    sget-object v3, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    const-string v14, "   cert : {}"

    invoke-interface {v3, v14, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    if-eqz v6, :cond_f

    .line 444
    sget-object v0, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    const-string v6, "   sign : {}"

    invoke-interface {v0, v6, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    :cond_f
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 447
    sget-object v6, Lorg/eclipse/californium/elements/util/CertPathUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    const-string v13, "   trust: {}, {}"

    invoke-interface {v6, v13, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 450
    :cond_10
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    .line 452
    new-instance v3, Ljava/security/cert/PKIXParameters;

    invoke-direct {v3, v12}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 454
    invoke-virtual {v3, v7}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 455
    invoke-virtual {v0, v10, v3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    if-nez v11, :cond_12

    if-eqz v9, :cond_11

    goto :goto_7

    :cond_11
    return-object p1

    :cond_12
    :goto_7
    if-eqz v9, :cond_14

    if-nez v11, :cond_13

    .line 459
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/2addr v4, v8

    .line 461
    invoke-static {v2, v4}, Lorg/eclipse/californium/elements/util/CertPathUtil;->generateCertPath(Ljava/util/List;I)Ljava/security/cert/CertPath;

    move-result-object v10

    :cond_14
    return-object v10

    .line 346
    :cond_15
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "certificates are not trusted!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 0

    .line 715
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 716
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
