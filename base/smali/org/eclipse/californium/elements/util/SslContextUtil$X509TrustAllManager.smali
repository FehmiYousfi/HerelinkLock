.class Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;
.super Ljava/lang/Object;
.source "SslContextUtil.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SslContextUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X509TrustAllManager"
.end annotation


# static fields
.field private static final EMPTY:[Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 1571
    sput-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->EMPTY:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/elements/util/SslContextUtil$1;)V
    .locals 0

    .line 1569
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;-><init>()V

    return-void
.end method

.method static synthetic access$800([Ljava/security/cert/X509Certificate;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1569
    invoke-static {p0, p1}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->validateChain([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method

.method static synthetic access$900()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1569
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->EMPTY:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method private static validateChain([Ljava/security/cert/X509Certificate;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 1588
    array-length v0, p0

    if-lez v0, :cond_8

    .line 1589
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    const-string v3, "client"

    const-string v4, "server"

    if-eqz p1, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    const-string v6, "check certificate {} for {}"

    invoke-interface {v0, v6, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1591
    aget-object v0, p0, v1

    invoke-static {v0, p1}, Lorg/eclipse/californium/elements/util/CertPathUtil;->canBeUsedForAuthentication(Ljava/security/cert/X509Certificate;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1592
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->LOGGER:Lorg/slf4j/Logger;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    if-eqz p1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    const-string v2, "check certificate {} for {} failed on key-usage!"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1594
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key usage not proper for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1596
    :cond_3
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->LOGGER:Lorg/slf4j/Logger;

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    if-eqz p1, :cond_4

    move-object v5, v3

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    const-string v6, "check certificate {} for {} succeeded on key-usage!"

    invoke-interface {v0, v6, v2, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1599
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/eclipse/californium/elements/util/CertPathUtil;->generateValidatableCertPath(Ljava/util/List;Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 1601
    :try_start_0
    sget-object v7, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->EMPTY:[Ljava/security/cert/X509Certificate;

    invoke-static {v6, v0, v7}, Lorg/eclipse/californium/elements/util/CertPathUtil;->validateCertificatePathWithIssuer(ZLjava/security/cert/CertPath;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    .line 1602
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "check certificate {} [chain.length={}] for {} validated!"

    new-array v8, v5, [Ljava/lang/Object;

    aget-object v9, p0, v1

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    aput-object v9, v8, v1

    array-length v9, p0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    if-eqz p1, :cond_5

    move-object v9, v3

    goto :goto_4

    :cond_5
    move-object v9, v4

    :goto_4
    aput-object v9, v8, v2

    invoke-interface {v0, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1605
    sget-object v7, Lorg/eclipse/californium/elements/util/SslContextUtil;->LOGGER:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    aput-object p0, v5, v1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, v4

    :goto_5
    aput-object v3, v5, v6

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v2

    const-string p0, "check certificate {} for {} failed on {}!"

    invoke-interface {v7, p0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1607
    instance-of p0, v0, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_7

    .line 1608
    check-cast v0, Ljava/security/cert/CertificateException;

    throw v0

    .line 1610
    :cond_7
    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 1618
    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->validateChain([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1623
    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->validateChain([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1628
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->EMPTY:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
