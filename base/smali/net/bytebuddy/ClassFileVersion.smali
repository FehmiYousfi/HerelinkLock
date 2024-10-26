.class public Lnet/bytebuddy/ClassFileVersion;
.super Ljava/lang/Object;
.source "ClassFileVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/ClassFileVersion$VersionExtractor;,
        Lnet/bytebuddy/ClassFileVersion$VersionLocator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/bytebuddy/ClassFileVersion;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BASE_VERSION:I = 0x2c

.field public static final JAVA_V1:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V2:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V3:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V4:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

.field public static final JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

.field private static final VERSION_LOCATOR:Lnet/bytebuddy/ClassFileVersion$VersionLocator;


# instance fields
.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const v1, 0x3002d

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V1:Lnet/bytebuddy/ClassFileVersion;

    .line 37
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V2:Lnet/bytebuddy/ClassFileVersion;

    .line 42
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V3:Lnet/bytebuddy/ClassFileVersion;

    .line 47
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V4:Lnet/bytebuddy/ClassFileVersion;

    .line 52
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    .line 57
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    .line 62
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

    .line 67
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x34

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    .line 72
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    const/16 v1, 0x35

    invoke-direct {v0, v1}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    .line 77
    sget-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;->INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator;

    sput-object v0, Lnet/bytebuddy/ClassFileVersion;->VERSION_LOCATOR:Lnet/bytebuddy/ClassFileVersion$VersionLocator;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    return-void
.end method

.method public static of(Ljava/lang/Class;)Lnet/bytebuddy/ClassFileVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/ClassFileVersion;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/ClassFileVersion;->of(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/ClassFileVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/ClassFileVersion;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, p1}, Lnet/bytebuddy/ClassFileVersion;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/ClassFileVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    new-instance v0, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    .line 200
    new-instance p0, Lnet/bytebuddy/ClassFileVersion$VersionExtractor;

    invoke-direct {p0}, Lnet/bytebuddy/ClassFileVersion$VersionExtractor;-><init>()V

    const/4 p1, 0x1

    .line 201
    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;I)V

    .line 202
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion$VersionExtractor;->getClassFileVersionNumber()I

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/ClassFileVersion;->ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object p0

    return-object p0
.end method

.method public static ofJavaVersion(I)Lnet/bytebuddy/ClassFileVersion;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Java version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_0
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    .line 131
    :pswitch_1
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    .line 129
    :pswitch_2
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    .line 127
    :pswitch_3
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    .line 125
    :pswitch_4
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    .line 123
    :pswitch_5
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V4:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    .line 121
    :pswitch_6
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V3:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    .line 119
    :pswitch_7
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V2:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    .line 117
    :pswitch_8
    sget-object p0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V1:Lnet/bytebuddy/ClassFileVersion;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;
    .locals 3

    .line 100
    new-instance v0, Lnet/bytebuddy/ClassFileVersion;

    invoke-direct {v0, p0}, Lnet/bytebuddy/ClassFileVersion;-><init>(I)V

    .line 101
    invoke-virtual {v0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()I

    move-result v1

    const/16 v2, 0x2c

    if-le v1, v2, :cond_0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not valid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofThisVm()Lnet/bytebuddy/ClassFileVersion;
    .locals 1

    .line 147
    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->VERSION_LOCATOR:Lnet/bytebuddy/ClassFileVersion$VersionLocator;

    invoke-interface {v0}, Lnet/bytebuddy/ClassFileVersion$VersionLocator;->locate()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    return-object v0
.end method

.method public static ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;
    .locals 0

    .line 161
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    instance-of p1, p1, Lnet/bytebuddy/ClassFileVersion;

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ClassFileVersion;->compareTo(Lnet/bytebuddy/ClassFileVersion;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/bytebuddy/ClassFileVersion;)I
    .locals 2

    .line 263
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getMinorVersion()I

    move-result v0

    invoke-virtual {p1}, Lnet/bytebuddy/ClassFileVersion;->getMinorVersion()I

    move-result p1

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 21
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/ClassFileVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/ClassFileVersion;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    iget p1, p1, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getJavaVersion()I
    .locals 1

    .line 238
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()I

    move-result v0

    add-int/lit8 v0, v0, -0x2c

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 220
    iget v0, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMinorMajorVersion()I
    .locals 1

    .line 211
    iget v0, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 229
    iget v0, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 21
    iget v0, p0, Lnet/bytebuddy/ClassFileVersion;->versionNumber:I

    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z
    .locals 1

    .line 248
    invoke-virtual {p0, p1}, Lnet/bytebuddy/ClassFileVersion;->compareTo(Lnet/bytebuddy/ClassFileVersion;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Lnet/bytebuddy/ClassFileVersion;->compareTo(Lnet/bytebuddy/ClassFileVersion;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
