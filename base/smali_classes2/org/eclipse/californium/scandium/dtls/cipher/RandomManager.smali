.class public Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;
.super Ljava/lang/Object;
.source "RandomManager.java"


# static fields
.field private static final START:J

.field private static final threadLocalRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalSecureRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->START:J

    .line 37
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager$1;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager$1;-><init>()V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->threadLocalSecureRandom:Ljava/lang/ThreadLocal;

    .line 54
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager$2;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager$2;-><init>()V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->threadLocalRandom:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 31
    sget-wide v0, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->START:J

    return-wide v0
.end method

.method public static currentRandom()Ljava/util/Random;
    .locals 1

    .line 68
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->threadLocalRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method

.method public static currentSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 51
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->threadLocalSecureRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    return-object v0
.end method
