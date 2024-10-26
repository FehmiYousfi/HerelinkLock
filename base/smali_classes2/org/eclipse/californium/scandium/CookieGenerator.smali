.class public Lorg/eclipse/californium/scandium/CookieGenerator;
.super Ljava/lang/Object;
.source "CookieGenerator.java"


# static fields
.field public static final COOKIE_LIFETIME_NANOS:J


# instance fields
.field private currentSecretKey:Ljavax/crypto/SecretKey;

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private nextKeyGenerationNanos:J

.field private pastSecretKey:Ljavax/crypto/SecretKey;

.field private final randomBytes:[B

.field private final randomGenerator:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lorg/eclipse/californium/scandium/CookieGenerator;->COOKIE_LIFETIME_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 89
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->randomGenerator:Ljava/security/SecureRandom;

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 90
    iput-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->randomBytes:[B

    return-void
.end method

.method private generateCookie(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ClientHello;Ljavax/crypto/SecretKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 167
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalMac()Ljavax/crypto/Mac;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 170
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 171
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    ushr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    .line 172
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update(B)V

    int-to-byte p1, p1

    .line 173
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    .line 175
    invoke-virtual {p2, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->updateForCookie(Ljavax/crypto/Mac;)V

    .line 176
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method

.method private getPastSecretKey()Ljavax/crypto/SecretKey;
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->pastSecretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v1, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private getSecretKey()Ljavax/crypto/SecretKey;
    .locals 7

    .line 102
    iget-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 103
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    .line 106
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->currentSecretKey:Ljavax/crypto/SecretKey;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iget-wide v5, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->nextKeyGenerationNanos:J

    sub-long v5, v0, v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->currentSecretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    iget-object v1, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 114
    iget-object v2, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 117
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->currentSecretKey:Ljavax/crypto/SecretKey;

    if-eqz v2, :cond_1

    iget-wide v5, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->nextKeyGenerationNanos:J

    sub-long v5, v0, v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_1

    .line 118
    iget-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->currentSecretKey:Ljavax/crypto/SecretKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    iget-object v1, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    .line 120
    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->randomGenerator:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->randomBytes:[B

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 121
    sget-wide v2, Lorg/eclipse/californium/scandium/CookieGenerator;->COOKIE_LIFETIME_NANOS:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->nextKeyGenerationNanos:J

    .line 123
    iget-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->currentSecretKey:Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->pastSecretKey:Ljavax/crypto/SecretKey;

    .line 124
    iget-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->randomBytes:[B

    const-string v1, "MAC"

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->currentSecretKey:Ljavax/crypto/SecretKey;

    .line 125
    iget-object v0, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->currentSecretKey:Ljavax/crypto/SecretKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    iget-object v1, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    .line 110
    iget-object v1, p0, Lorg/eclipse/californium/scandium/CookieGenerator;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public generateCookie(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ClientHello;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/CookieGenerator;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/scandium/CookieGenerator;->generateCookie(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ClientHello;Ljavax/crypto/SecretKey;)[B

    move-result-object p1

    return-object p1
.end method

.method public generatePastCookie(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ClientHello;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/CookieGenerator;->getPastSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/scandium/CookieGenerator;->generateCookie(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ClientHello;Ljavax/crypto/SecretKey;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
