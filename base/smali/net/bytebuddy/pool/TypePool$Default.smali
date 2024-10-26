.class public Lnet/bytebuddy/pool/TypePool$Default;
.super Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;,
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;,
        Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;,
        Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;,
        Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;,
        Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;
    }
.end annotation


# static fields
.field private static final IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;


# instance fields
.field protected final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

.field protected final readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V
    .locals 1

    .line 966
    sget-object v0, Lnet/bytebuddy/pool/TypePool$Empty;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Empty;

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/pool/TypePool$Default;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Lnet/bytebuddy/pool/TypePool;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Lnet/bytebuddy/pool/TypePool;)V
    .locals 0

    .line 978
    invoke-direct {p0, p1, p4}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool;)V

    .line 979
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 980
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    return-void
.end method

.method static synthetic access$3300()Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 1

    .line 941
    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default;->IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-object v0
.end method

.method public static of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;
    .locals 0

    .line 1000
    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/pool/TypePool$Default;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;
    .locals 3

    .line 1011
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    sget-object v2, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {v0, v1, p0, v2}, Lnet/bytebuddy/pool/TypePool$Default;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    return-object v0
.end method

.method public static ofClassPath()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    .line 990
    invoke-static {}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->ofClassPath()Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method private parse([B)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 1033
    new-instance v0, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    .line 1034
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    invoke-direct {p1, p0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default;)V

    .line 1035
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v1}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->getFlags()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;I)V

    .line 1036
    invoke-virtual {p1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->toTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 940
    instance-of p1, p1, Lnet/bytebuddy/pool/TypePool$Default;

    return p1
.end method

.method protected doDescribe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 2

    .line 1017
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v0

    .line 1018
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;

    .line 1019
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/pool/TypePool$Default;->parse([B)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1022
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error while reading class file"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 940
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/pool/TypePool$Default;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/pool/TypePool$Default;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/pool/TypePool$Default;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v3, v1, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    iget-object v1, v1, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 940
    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method
