.class Lorg/eclipse/californium/elements/util/SslContextUtil$X509ExtendedTrustAllManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SslContextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SslContextUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X509ExtendedTrustAllManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1645
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/elements/util/SslContextUtil$1;)V
    .locals 0

    .line 1640
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509ExtendedTrustAllManager;-><init>()V

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

    .line 1650
    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->access$800([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 1666
    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->access$800([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 1672
    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->access$800([Ljava/security/cert/X509Certificate;Z)V

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

    .line 1655
    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->access$800([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1678
    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->access$800([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1684
    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->access$800([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1660
    invoke-static {}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;->access$900()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
