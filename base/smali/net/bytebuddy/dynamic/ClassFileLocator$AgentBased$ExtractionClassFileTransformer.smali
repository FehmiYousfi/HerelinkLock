.class public Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExtractionClassFileTransformer"
.end annotation


# static fields
.field private static final DO_NOT_TRANSFORM:[B


# instance fields
.field private volatile binaryRepresentation:[B

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1364
    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;->classLoader:Ljava/lang/ClassLoader;

    .line 1365
    iput-object p2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;->typeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBinaryRepresentation()[B
    .locals 1

    .line 1389
    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;->binaryRepresentation:[B

    return-object v0
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1375
    iget-object p3, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->isChildOf(Ljava/lang/ClassLoader;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-interface {p3, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;->typeName:Ljava/lang/String;

    const/16 p3, 0x2f

    const/16 p4, 0x2e

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1376
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;->binaryRepresentation:[B

    .line 1378
    :cond_0
    sget-object p1, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;->DO_NOT_TRANSFORM:[B

    return-object p1
.end method
