.class public Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;
.super Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;
.source "AsyncNewAdvancedCertificateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$Builder;
    }
.end annotation


# static fields
.field private static final THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;


# instance fields
.field private volatile delayMillis:I

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;

    sget-object v1, Lorg/eclipse/californium/elements/util/NamedThreadFactory;->SCANDIUM_THREAD_GROUP:Ljava/lang/ThreadGroup;

    const-string v2, "AsyncCertVerifier#"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    return-void
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[",
            "Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;-><init>([Ljava/security/cert/X509Certificate;[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 62
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->delayMillis:I

    .line 73
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->verifyCertificateAsynchronous(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)V

    return-void
.end method

.method public static builder()Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$Builder;
    .locals 1

    .line 166
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$Builder;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$Builder;-><init>()V

    return-object v0
.end method

.method private verifyCertificateAsynchronous(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)V
    .locals 0

    .line 143
    invoke-super/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->verifyCertificate(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->getCertificatePath()Ljava/security/cert/CertPath;

    move-result-object p2

    .line 146
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 148
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Validation failed!"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 150
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "Validation {}"

    invoke-interface {p3, p4, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 152
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Validation RPK"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 154
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    invoke-interface {p2, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;->apply(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    return-void
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->delayMillis:I

    return v0
.end method

.method public setDelay(I)Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;
    .locals 2

    .line 85
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->delayMillis:I

    if-lez p1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Asynchronous delayed certificate verifier {}ms."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 89
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Synchronous delayed certificate verifier {}ms."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Synchronous certificate verifier."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handshake result handler already set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

.method public verifyCertificate(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;
    .locals 12

    move-object v9, p0

    .line 118
    iget v0, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->delayMillis:I

    if-gtz v0, :cond_1

    .line 119
    iget v0, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->delayMillis:I

    if-gez v0, :cond_0

    .line 121
    :try_start_0
    iget v0, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->delayMillis:I

    neg-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->verifyCertificate(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;

    move-result-object v0

    return-object v0

    .line 128
    :cond_1
    iget-object v10, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v11, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;-><init>(Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)V

    iget v0, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->delayMillis:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v11, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    return-object v0
.end method
