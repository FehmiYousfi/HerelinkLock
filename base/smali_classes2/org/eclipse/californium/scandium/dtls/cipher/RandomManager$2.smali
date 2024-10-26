.class final Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager$2;
.super Ljava/lang/ThreadLocal;
.source "RandomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Random;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager$2;->initialValue()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Random;
    .locals 5

    .line 58
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->access$000()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    return-object v0
.end method
