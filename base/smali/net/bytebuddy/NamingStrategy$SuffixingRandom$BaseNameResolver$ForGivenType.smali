.class public Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;
.super Ljava/lang/Object;
.source "NamingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForGivenType"
.end annotation


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 216
    instance-of p1, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 216
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 216
    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
