.class public Lorg/eclipse/californium/elements/auth/X509CertPath;
.super Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;
.source "X509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal<",
        "Lorg/eclipse/californium/elements/auth/X509CertPath;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENCODING:Ljava/lang/String; = "PkiPath"

.field private static final TYPE_X509:Ljava/lang/String; = "X.509"


# instance fields
.field private final path:Ljava/security/cert/CertPath;

.field private final target:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/auth/X509CertPath;-><init>(Ljava/security/cert/CertPath;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-void
.end method

.method private constructor <init>(Ljava/security/cert/CertPath;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V
    .locals 1

    .line 66
    invoke-direct {p0, p2}, Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;-><init>(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    .line 67
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X.509"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 72
    iput-object p1, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->path:Ljava/security/cert/CertPath;

    .line 73
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->target:Ljava/security/cert/X509Certificate;

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cert path must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cert path must contain X.509 certificates only"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromBytes([B)Lorg/eclipse/californium/elements/auth/X509CertPath;
    .locals 2

    :try_start_0
    const-string v0, "X.509"

    .line 96
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "PkiPath"

    invoke-virtual {v0, v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p0

    .line 98
    new-instance v0, Lorg/eclipse/californium/elements/auth/X509CertPath;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/auth/X509CertPath;-><init>(Ljava/security/cert/CertPath;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 100
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte array does not contain X.509 certificate path"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromCertificatesChain(Ljava/util/List;)Lorg/eclipse/californium/elements/auth/X509CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lorg/eclipse/californium/elements/auth/X509CertPath;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 137
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p0

    .line 141
    new-instance v0, Lorg/eclipse/californium/elements/auth/X509CertPath;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/auth/X509CertPath;-><init>(Ljava/security/cert/CertPath;)V

    return-object v0

    .line 138
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Certificate chain must not be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Certificate chain must not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs fromCertificatesChain([Ljava/security/cert/Certificate;)Lorg/eclipse/californium/elements/auth/X509CertPath;
    .locals 1

    if-eqz p0, :cond_1

    .line 117
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->toX509CertificatesList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 121
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p0

    .line 122
    new-instance v0, Lorg/eclipse/californium/elements/auth/X509CertPath;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/auth/X509CertPath;-><init>(Ljava/security/cert/CertPath;)V

    return-object v0

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Certificate chain must not be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Certificate chain must not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Ljava/security/Principal;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/auth/X509CertPath;->amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Lorg/eclipse/californium/elements/auth/X509CertPath;

    move-result-object p1

    return-object p1
.end method

.method public amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Lorg/eclipse/californium/elements/auth/X509CertPath;
    .locals 2

    .line 82
    new-instance v0, Lorg/eclipse/californium/elements/auth/X509CertPath;

    iget-object v1, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->path:Ljava/security/cert/CertPath;

    invoke-direct {v0, v1, p1}, Lorg/eclipse/californium/elements/auth/X509CertPath;-><init>(Ljava/security/cert/CertPath;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 203
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 206
    :cond_2
    check-cast p1, Lorg/eclipse/californium/elements/auth/X509CertPath;

    .line 207
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->target:Ljava/security/cert/X509Certificate;

    iget-object p1, p1, Lorg/eclipse/californium/elements/auth/X509CertPath;->target:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCN()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->target:Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->getSubjectsCn(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->target:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/security/cert/CertPath;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->path:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getTarget()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->target:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->target:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;->path:Ljava/security/cert/CertPath;

    const-string v1, "PkiPath"

    invoke-virtual {v0, v1}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 156
    :catch_0
    sget-object v0, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "x509 ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/auth/X509CertPath;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
