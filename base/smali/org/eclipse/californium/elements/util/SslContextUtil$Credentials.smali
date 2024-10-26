.class public Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;
.super Ljava/lang/Object;
.source "SslContextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SslContextUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Credentials"
.end annotation


# instance fields
.field private final chain:[Ljava/security/cert/X509Certificate;

.field private final privateKey:Ljava/security/PrivateKey;

.field private final publicKey:Ljava/security/PublicKey;

.field private final trusts:[Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;)V
    .locals 2

    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 1309
    array-length v1, p3

    if-nez v1, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1312
    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1313
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "public key doesn\'t match certificate!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1316
    :cond_2
    aget-object p2, p3, v1

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    .line 1319
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->privateKey:Ljava/security/PrivateKey;

    .line 1320
    iput-object p3, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->chain:[Ljava/security/cert/X509Certificate;

    .line 1321
    iput-object p2, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->publicKey:Ljava/security/PublicKey;

    .line 1322
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->trusts:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>([Ljava/security/cert/Certificate;)V
    .locals 1

    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1331
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->privateKey:Ljava/security/PrivateKey;

    .line 1332
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->publicKey:Ljava/security/PublicKey;

    .line 1333
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->chain:[Ljava/security/cert/X509Certificate;

    .line 1334
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->trusts:[Ljava/security/cert/Certificate;

    return-void
.end method

.method static synthetic access$300(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PrivateKey;
    .locals 0

    .line 1278
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->privateKey:Ljava/security/PrivateKey;

    return-object p0
.end method

.method static synthetic access$400(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 1278
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->chain:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method static synthetic access$500(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)[Ljava/security/cert/Certificate;
    .locals 0

    .line 1278
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->trusts:[Ljava/security/cert/Certificate;

    return-object p0
.end method

.method static synthetic access$600(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PublicKey;
    .locals 0

    .line 1278
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->publicKey:Ljava/security/PublicKey;

    return-object p0
.end method


# virtual methods
.method public getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1361
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->chain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCertificateChainAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->chain:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 1343
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 1352
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustedCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 1380
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->trusts:[Ljava/security/cert/Certificate;

    return-object v0
.end method
