.class public Lnet/bytebuddy/NamingStrategy$SuffixingRandom;
.super Lnet/bytebuddy/NamingStrategy$AbstractBase;
.source "NamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuffixingRandom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;
    }
.end annotation


# static fields
.field public static final BYTE_BUDDY_RENAME_PACKAGE:Ljava/lang/String; = "net.bytebuddy.renamed"

.field private static final JAVA_PACKAGE:Ljava/lang/String; = "java."

.field public static final NO_PREFIX:Ljava/lang/String; = ""


# instance fields
.field private final baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

.field private final javaLangPackagePrefix:Ljava/lang/String;

.field private final randomString:Lnet/bytebuddy/utility/RandomString;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 131
    sget-object v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 144
    sget-object v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;)V
    .locals 1

    const-string v0, "net.bytebuddy.renamed"

    .line 155
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lnet/bytebuddy/NamingStrategy$AbstractBase;-><init>()V

    .line 169
    iput-object p1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    .line 171
    iput-object p3, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    .line 172
    new-instance p1, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {p1}, Lnet/bytebuddy/utility/RandomString;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->randomString:Lnet/bytebuddy/utility/RandomString;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 83
    instance-of p1, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    iget-object p1, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 83
    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method protected name(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 2

    .line 177
    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    invoke-interface {v0, p1}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java."

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 181
    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "%s$%s$%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
