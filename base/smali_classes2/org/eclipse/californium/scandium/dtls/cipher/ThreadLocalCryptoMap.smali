.class public Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;
.super Ljava/lang/Object;
.source "ThreadLocalCryptoMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "L:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final FUNCTIONS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "TT",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory<",
            "TT",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory<",
            "TT",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;->FUNCTIONS:Ljava/util/concurrent/ConcurrentMap;

    .line 53
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;->factory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT",
            "L;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;->FUNCTIONS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;->factory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;

    invoke-interface {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;

    .line 66
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;->FUNCTIONS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method
