.class public Lorg/eclipse/californium/elements/util/SslContextUtil;
.super Ljava/lang/Object;
.source "SslContextUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/SslContextUtil$X509ExtendedTrustAllManager;,
        Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;,
        Lorg/eclipse/californium/elements/util/SslContextUtil$AnonymousX509ExtendedKeyManager;,
        Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;,
        Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;,
        Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;,
        Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;,
        Lorg/eclipse/californium/elements/util/SslContextUtil$ClassLoaderInputStreamFactory;,
        Lorg/eclipse/californium/elements/util/SslContextUtil$InputStreamFactory;
    }
.end annotation


# static fields
.field private static final ANONYMOUS:Ljavax/net/ssl/KeyManager;

.field public static final BKS_ENDING:Ljava/lang/String; = ".bks"

.field public static final BKS_TYPE:Ljava/lang/String; = "BKS"

.field public static final CLASSPATH_SCHEME:Ljava/lang/String; = "classpath://"

.field public static final CRT_ENDING:Ljava/lang/String; = ".crt"

.field private static final DEFAULT_ALIAS:Ljava/lang/String; = "californium"

.field public static final DEFAULT_ENDING:Ljava/lang/String; = "*"

.field public static final DEFAULT_SSL_PROTOCOL:Ljava/lang/String; = "TLSv1.2"

.field private static final INPUT_STREAM_FACTORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/elements/util/SslContextUtil$InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final JKS_ENDING:Ljava/lang/String; = ".jks"

.field public static final JKS_TYPE:Ljava/lang/String; = "JKS"

.field private static final KEY_STORE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOGGER:Lorg/slf4j/Logger;

.field public static final PARAMETER_SEPARATOR:Ljava/lang/String; = "#"

.field public static final PEM_ENDING:Ljava/lang/String; = ".pem"

.field public static final PKCS12_ENDING:Ljava/lang/String; = ".p12"

.field public static final PKCS12_TYPE:Ljava/lang/String; = "PKCS12"

.field private static final SCHEME_DELIMITER:Ljava/lang/String; = "://"

.field private static final TRUST_ALL:Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 119
    const-class v0, Lorg/eclipse/californium/elements/util/SslContextUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->LOGGER:Lorg/slf4j/Logger;

    .line 193
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->INPUT_STREAM_FACTORIES:Ljava/util/Map;

    .line 207
    new-instance v0, Lorg/eclipse/californium/elements/util/SslContextUtil$AnonymousX509ExtendedKeyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/SslContextUtil$AnonymousX509ExtendedKeyManager;-><init>(Lorg/eclipse/californium/elements/util/SslContextUtil$1;)V

    sput-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->ANONYMOUS:Ljavax/net/ssl/KeyManager;

    .line 217
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->init()V

    .line 218
    invoke-static {}, Lorg/eclipse/californium/elements/util/SslContextUtil;->configureDefaults()V

    .line 221
    :try_start_0
    new-instance v0, Lorg/eclipse/californium/elements/util/SslContextUtil$X509ExtendedTrustAllManager;

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509ExtendedTrustAllManager;-><init>(Lorg/eclipse/californium/elements/util/SslContextUtil$1;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    new-instance v0, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/SslContextUtil$X509TrustAllManager;-><init>(Lorg/eclipse/californium/elements/util/SslContextUtil$1;)V

    .line 225
    :goto_0
    sput-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->TRUST_ALL:Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asX509Certificates([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 4

    if-eqz p0, :cond_2

    .line 968
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 971
    array-length v0, p0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    .line 972
    :goto_0
    array-length v2, p0

    if-le v2, v1, :cond_1

    .line 973
    aget-object v2, p0, v1

    const-string v3, "["

    if-eqz v2, :cond_0

    .line 977
    :try_start_0
    aget-object v2, p0, v1

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 979
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is not a x509 certificate! Instead it\'s a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0

    .line 969
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "certificates missing!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static configure(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SslContextUtil$InputStreamFactory;)Lorg/eclipse/californium/elements/util/SslContextUtil$InputStreamFactory;
    .locals 1

    if-eqz p0, :cond_2

    const-string v0, "://"

    .line 713
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 719
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->INPUT_STREAM_FACTORIES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/elements/util/SslContextUtil$InputStreamFactory;

    return-object p0

    .line 717
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "stream factory must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 714
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scheme must end with \"://\"!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 711
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "scheme must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static configure(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;
    .locals 1

    if-eqz p0, :cond_3

    const-string v0, "*"

    .line 688
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ending must start with \".\"!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 694
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    return-object p0

    .line 692
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key store type must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 686
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ending must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static configureDefaults()V
    .locals 3

    .line 648
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 650
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    const-string v2, "JKS"

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;-><init>(Ljava/lang/String;)V

    const-string v2, ".jks"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    const-string v2, "BKS"

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;-><init>(Ljava/lang/String;)V

    const-string v2, ".bks"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    const-string v2, "PKCS12"

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;-><init>(Ljava/lang/String;)V

    const-string v2, ".p12"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    new-instance v0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    new-instance v1, Lorg/eclipse/californium/elements/util/SslContextUtil$1;

    invoke-direct {v1}, Lorg/eclipse/californium/elements/util/SslContextUtil$1;-><init>()V

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;-><init>(Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;)V

    .line 662
    sget-object v1, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    const-string v2, ".pem"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v1, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    const-string v2, ".crt"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->INPUT_STREAM_FACTORIES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 667
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->INPUT_STREAM_FACTORIES:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/californium/elements/util/SslContextUtil$ClassLoaderInputStreamFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/util/SslContextUtil$ClassLoaderInputStreamFactory;-><init>(Lorg/eclipse/californium/elements/util/SslContextUtil$1;)V

    const-string v2, "classpath://"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createAnonymousKeyManager()[Ljavax/net/ssl/KeyManager;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    .line 1197
    sget-object v1, Lorg/eclipse/californium/elements/util/SslContextUtil;->ANONYMOUS:Ljavax/net/ssl/KeyManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static createKeyManager(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)[Ljavax/net/ssl/KeyManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1134
    array-length v0, p2

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string p0, "californium"

    :cond_0
    :try_start_0
    const-string v0, "intern"

    .line 1142
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "*"

    .line 1143
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v1

    .line 1144
    iget-object v1, v1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->type:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 1145
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1146
    invoke-virtual {v1, p0, p1, v0, p2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1147
    invoke-static {v1, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->createKeyManager(Ljava/security/KeyStore;[C)[Ljavax/net/ssl/KeyManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1149
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1135
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "certificate chain must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1132
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "certificate chain must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1129
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "private key must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createKeyManager(Ljava/security/KeyStore;[C)[Ljavax/net/ssl/KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "ssl.KeyManagerFactory.algorithm"

    .line 1220
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 1222
    invoke-virtual {v0, p0, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1223
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p0

    return-object p0
.end method

.method public static createSSLContext(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/Certificate;)Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "TLSv1.2"

    .line 1052
    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->createSSLContext(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/Certificate;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    return-object p0
.end method

.method public static createSSLContext(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/Certificate;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "californium"

    .line 1080
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil;->createKeyManager(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    .line 1081
    invoke-static {p0, p3}, Lorg/eclipse/californium/elements/util/SslContextUtil;->createTrustManager(Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    .line 1082
    invoke-static {p4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2

    const/4 p3, 0x0

    .line 1083
    invoke-virtual {p2, p1, p0, p3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object p2
.end method

.method public static createTrustAllManager()[Ljavax/net/ssl/TrustManager;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 1208
    sget-object v1, Lorg/eclipse/californium/elements/util/SslContextUtil;->TRUST_ALL:Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static createTrustManager(Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljavax/net/ssl/TrustManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1169
    array-length v0, p1

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    const-string p0, "californium"

    :cond_0
    :try_start_0
    const-string v0, "*"

    .line 1177
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v0

    .line 1178
    iget-object v0, v0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->type:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 1179
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1180
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    .line 1181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1184
    :cond_1
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->createTrustManager(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1186
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1170
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "trusted certificates must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1167
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "trusted certificates must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createTrustManager(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "ssl.TrustManagerFactory.algorithm"

    .line 1234
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1235
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 1236
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1237
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    return-object p0
.end method

.method public static ensureUniqueCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 5

    .line 1021
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1022
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 1023
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Truststore contains certificates duplicates with subject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private static getInputStreamFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 813
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getSchemeFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 817
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, " doesn\'t exists!"

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, " is not a file!"

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, " could not be read!"

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 826
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1

    .line 828
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", file: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 831
    :cond_4
    sget-object v2, Lorg/eclipse/californium/elements/util/SslContextUtil;->INPUT_STREAM_FACTORIES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/util/SslContextUtil$InputStreamFactory;

    if-eqz v0, :cond_5

    .line 833
    invoke-interface {v0, p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$InputStreamFactory;->create(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 837
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    :cond_6
    return-object v1

    .line 810
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "keyStoreUri must be provided!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "*"

    .line 760
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2f

    .line 761
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2e

    .line 762
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 764
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 765
    sget-object v2, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 769
    sget-object v1, Lorg/eclipse/californium/elements/util/SslContextUtil;->KEY_STORE_TYPES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    .line 772
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no key store type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSchemeFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "://"

    .line 786
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x3

    .line 788
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWeakCipherSuites(Ljavax/net/ssl/SSLContext;)[Ljava/lang/String;
    .locals 5

    .line 1100
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p0

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object p0

    .line 1103
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, "AES_128"

    .line 1104
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1105
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    array-length p0, p0

    if-ge v1, p0, :cond_2

    .line 1109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4

    if-eqz p0, :cond_3

    .line 1000
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 1003
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1004
    instance-of v3, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_0

    .line 1005
    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1008
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing a X509KeyManager in key managers!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1001
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key managers must not be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 998
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Key managers must not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAvailableFromUri(Ljava/lang/String;)Z
    .locals 0

    .line 732
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getInputStreamFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 734
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadCertificateChain(Ljava/lang/String;Ljava/lang/String;[C)[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 608
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v0

    .line 609
    iget-object v1, v0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    if-eqz v1, :cond_1

    .line 610
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadSimpleKeyStore(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p0

    .line 611
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$400(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 614
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$400(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    .line 612
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No certificate chain found!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p1, :cond_3

    .line 619
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 622
    invoke-static {p0, p2, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadKeyStore(Ljava/lang/String;[CLorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Ljava/security/KeyStore;

    move-result-object p0

    .line 623
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0

    .line 624
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->asX509Certificates([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    .line 620
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alias must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 617
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadCredentials(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    const-string v1, "#"

    .line 282
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 283
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 284
    aget-object v1, p0, v3

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v1

    .line 285
    iget-object v1, v1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    if-eqz v1, :cond_0

    .line 286
    aget-object p0, p0, v3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadCredentials(Ljava/lang/String;Ljava/lang/String;[C[C)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p0

    return-object p0

    .line 289
    :cond_0
    array-length v1, p0

    if-ne v0, v1, :cond_1

    .line 293
    aget-object v0, p0, v3

    const/4 v1, 0x3

    aget-object v1, p0, v1

    aget-object v2, p0, v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->hex2CharArray(Ljava/lang/String;)[C

    move-result-object v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-static {p0}, Lorg/eclipse/californium/elements/util/StringUtil;->hex2CharArray(Ljava/lang/String;)[C

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadCredentials(Ljava/lang/String;Ljava/lang/String;[C[C)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p0

    return-object p0

    .line 290
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "credentials must comply the pattern <keystore#hexstorepwd#hexkeypwd#alias>"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "credentials must be provided!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadCredentials(Ljava/lang/String;Ljava/lang/String;[C[C)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 460
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v0

    .line 461
    iget-object v1, v0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 462
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadSimpleKeyStore(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p1

    .line 463
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->getTrustedCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    const-string p3, "credentials missing! No private key found!"

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p2, "X.509"

    .line 466
    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    .line 467
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->getTrustedCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p2

    .line 468
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p2

    .line 469
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/cert/X509Certificate;

    .line 470
    new-instance v0, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    invoke-direct {v0, v2, v2, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    :try_start_1
    new-instance p1, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;

    invoke-direct {p1, v0, p3}, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;-><init>(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception p2

    .line 473
    :goto_0
    sget-object v0, Lorg/eclipse/californium/elements/util/SslContextUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Load PEM {}:"

    invoke-interface {v0, v1, p0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    :goto_1
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$600(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PublicKey;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$300(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PrivateKey;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_2

    .line 477
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "credentials missing! No keys found!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 478
    :cond_2
    :goto_2
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$300(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PrivateKey;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 480
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$600(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PublicKey;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p1

    .line 481
    :cond_3
    new-instance p0, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;

    const-string p2, "credentials missing! Neither certificate chain nor public key found!"

    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;-><init>(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_4
    new-instance p0, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;

    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;-><init>(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eqz p1, :cond_9

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz p3, :cond_7

    .line 495
    invoke-static {p0, p2, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadKeyStore(Ljava/lang/String;[CLorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Ljava/security/KeyStore;

    move-result-object p2

    .line 496
    const-class v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p2, p1, v0}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 497
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p3}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p2, p1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p2

    .line 498
    instance-of p3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p3, :cond_6

    .line 499
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 500
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p0

    .line 501
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->asX509Certificates([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    .line 502
    new-instance p1, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-direct {p1, p2, v2, p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;)V

    return-object p1

    .line 505
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no credentials found for \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'!"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 493
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "keyPassword must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 490
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alias must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 487
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadKeyManager(Ljava/lang/String;Ljava/lang/String;[C[C)[Ljavax/net/ssl/KeyManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 339
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v0

    .line 341
    iget-object v1, v0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    if-eqz v1, :cond_2

    .line 342
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadSimpleKeyStore(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p0

    .line 343
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$300(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PrivateKey;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 346
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$400(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 349
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$300(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PrivateKey;

    move-result-object p1

    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$400(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    const-string p2, "californium"

    invoke-static {p2, p1, p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->createKeyManager(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)[Ljavax/net/ssl/KeyManager;

    move-result-object p0

    return-object p0

    .line 347
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "credentials missing! No certificate chain found!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 344
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "credentials missing! No private key found!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p3, :cond_8

    .line 354
    invoke-static {p0, p2, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadKeyStore(Ljava/lang/String;[CLorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Ljava/security/KeyStore;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 355
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 358
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 359
    invoke-virtual {p2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    .line 360
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 361
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 362
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 363
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 364
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 367
    :cond_3
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p3}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p2, v4, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 369
    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v5, p3}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {v2, v4, v0, v5}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 372
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "key stores \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' doesn\'t contain credentials for \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz v0, :cond_6

    move-object p2, v2

    goto :goto_1

    .line 377
    :cond_6
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no credentials found in \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' for \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'!"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 382
    :cond_7
    :goto_1
    invoke-static {p2, p3}, Lorg/eclipse/californium/elements/util/SslContextUtil;->createKeyManager(Ljava/security/KeyStore;[C)[Ljavax/net/ssl/KeyManager;

    move-result-object p0

    return-object p0

    .line 352
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "keyPassword must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static loadKeyStore(Ljava/lang/String;[CLorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 863
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getInputStreamFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 864
    iget-object v1, p2, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->type:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 866
    :try_start_0
    invoke-virtual {v1, v0, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 869
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", URI: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", type: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->type:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 872
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    .line 861
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "storePassword must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadPemCredentials(Ljava/io/InputStream;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    new-instance v0, Lorg/eclipse/californium/elements/util/PemReader;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/util/PemReader;-><init>(Ljava/io/InputStream;)V

    .line 912
    :try_start_0
    new-instance p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;

    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;-><init>()V

    .line 913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "X.509"

    .line 914
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 915
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/PemReader;->readNextBegin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 916
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/PemReader;->readToEnd()[B

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "CERTIFICATE"

    .line 918
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 919
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v5, "PRIVATE KEY"

    .line 920
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 921
    invoke-static {v4}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readPrivateKey([B)Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 925
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->add(Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;)V

    goto :goto_0

    .line 923
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v1, "private key type not supported!"

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v5, "PUBLIC KEY"

    .line 926
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 927
    invoke-static {v4}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readSubjectPublicKey([B)Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 931
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->setPublicKey(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 929
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v1, "public key type not supported!"

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 933
    :cond_5
    sget-object v4, Lorg/eclipse/californium/elements/util/SslContextUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "{} not supported!"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 937
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    if-nez v3, :cond_9

    .line 938
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 939
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 940
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 941
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 944
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    .line 945
    new-instance v1, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    invoke-direct {v1, p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;-><init>([Ljava/security/cert/Certificate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/PemReader;->close()V

    return-object v1

    .line 947
    :cond_9
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 948
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 949
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    .line 950
    new-instance v2, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-direct {v2, v3, p0, v1}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/PemReader;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/PemReader;->close()V

    throw p0
.end method

.method public static loadPrivateKey(Ljava/lang/String;Ljava/lang/String;[C[C)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 526
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v0

    .line 527
    iget-object v1, v0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    if-eqz v1, :cond_0

    .line 528
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadSimpleKeyStore(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p2

    .line 529
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$300(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PrivateKey;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 530
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$300(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    .line 536
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p3, :cond_2

    .line 542
    invoke-static {p0, p2, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadKeyStore(Ljava/lang/String;[CLorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Ljava/security/KeyStore;

    move-result-object p2

    .line 543
    const-class v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p2, p1, v0}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p3}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p2, p1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p2

    .line 545
    instance-of p3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p3, :cond_1

    .line 546
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 547
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 551
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no private key found for \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'!"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 540
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "keyPassword must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 537
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alias must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 534
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadPublicKey(Ljava/lang/String;Ljava/lang/String;[C)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 571
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v0

    .line 572
    iget-object v1, v0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    if-eqz v1, :cond_1

    .line 573
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadSimpleKeyStore(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p2

    .line 574
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$600(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$600(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 588
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no public key found for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p1, :cond_3

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 584
    invoke-static {p0, p2, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadKeyStore(Ljava/lang/String;[CLorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Ljava/security/KeyStore;

    move-result-object p0

    .line 585
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0

    const/4 p1, 0x0

    .line 586
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 582
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alias must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 579
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias must be provided!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static loadSimpleKeyStore(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getInputStreamFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 893
    :try_start_0
    iget-object p1, p1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    invoke-interface {p1, p0}, Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;->load(Ljava/io/InputStream;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static loadTrustManager(Ljava/lang/String;Ljava/lang/String;[C)[Ljavax/net/ssl/TrustManager;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 315
    invoke-static {p0, p1, p2}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadTrustedCertificates(Ljava/lang/String;Ljava/lang/String;[C)[Ljava/security/cert/Certificate;

    move-result-object p0

    const-string p1, "trusts"

    .line 316
    invoke-static {p1, p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->createTrustManager(Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    return-object p0
.end method

.method public static loadTrustedCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    const-string v1, "#"

    .line 247
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 248
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 249
    aget-object v1, p0, v3

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v1

    .line 250
    iget-object v1, v1, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    if-eqz v1, :cond_0

    .line 251
    aget-object p0, p0, v3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadTrustedCertificates(Ljava/lang/String;Ljava/lang/String;[C)[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    .line 254
    :cond_0
    array-length v1, p0

    if-ne v0, v1, :cond_1

    .line 258
    aget-object v0, p0, v3

    const/4 v1, 0x2

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-static {p0}, Lorg/eclipse/californium/elements/util/StringUtil;->hex2CharArray(Ljava/lang/String;)[C

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadTrustedCertificates(Ljava/lang/String;Ljava/lang/String;[C)[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    .line 255
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "trust must comply the pattern <keystore#hexstorepwd#aliaspattern>"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "trust must be provided!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadTrustedCertificates(Ljava/lang/String;Ljava/lang/String;[C)[Ljava/security/cert/Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 403
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->getKeyStoreTypeFromUri(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;

    move-result-object v0

    .line 404
    iget-object v1, v0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    const-string v2, "\'!"

    const-string v3, "no trusted x509 certificates found in \'"

    if-eqz v1, :cond_1

    .line 405
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadSimpleKeyStore(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p1

    .line 406
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$500(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)[Ljava/security/cert/Certificate;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 409
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;->access$500(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    .line 407
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :cond_1
    invoke-static {p0, p2, v0}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadKeyStore(Ljava/lang/String;[CLorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;)Ljava/security/KeyStore;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 415
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 418
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 420
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 422
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 423
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 427
    :cond_4
    invoke-virtual {p2, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 428
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 429
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 432
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 436
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/Certificate;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0

    .line 433
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' for \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
