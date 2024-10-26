.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClassLoading"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

.field public static final enum EXTENDED:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

.field public static final enum FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;


# instance fields
.field private final readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2306
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    sget-object v1, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->EXTENDED:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    const/4 v2, 0x0

    const-string v3, "EXTENDED"

    invoke-direct {v0, v3, v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;-><init>(Ljava/lang/String;ILnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;->EXTENDED:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    .line 2314
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    sget-object v1, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    const/4 v3, 0x1

    const-string v4, "FAST"

    invoke-direct {v0, v4, v3, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;-><init>(Ljava/lang/String;ILnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;->FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    .line 2298
    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;->EXTENDED:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;->FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    aput-object v1, v0, v3

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;",
            ")V"
        }
    .end annotation

    .line 2326
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2327
    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;
    .locals 1

    .line 2298
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;
    .locals 1

    .line 2298
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;

    return-object v0
.end method


# virtual methods
.method public typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;
    .locals 3

    .line 2332
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    invoke-static {}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->withObjectType()Lnet/bytebuddy/pool/TypePool$CacheProvider;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    invoke-static {p2, v0}, Lnet/bytebuddy/pool/TypePool$ClassLoading;->of(Ljava/lang/ClassLoader;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/pool/TypePool;

    move-result-object p1

    return-object p1
.end method
