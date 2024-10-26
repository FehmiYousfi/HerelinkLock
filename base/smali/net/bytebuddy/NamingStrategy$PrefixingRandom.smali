.class public Lnet/bytebuddy/NamingStrategy$PrefixingRandom;
.super Lnet/bytebuddy/NamingStrategy$AbstractBase;
.source "NamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefixingRandom"
.end annotation


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final randomString:Lnet/bytebuddy/utility/RandomString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lnet/bytebuddy/NamingStrategy$AbstractBase;-><init>()V

    .line 290
    iput-object p1, p0, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;->prefix:Ljava/lang/String;

    .line 291
    new-instance p1, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {p1}, Lnet/bytebuddy/utility/RandomString;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;->randomString:Lnet/bytebuddy/utility/RandomString;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 271
    instance-of p1, p1, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 271
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;->prefix:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;->prefix:Ljava/lang/String;

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

    .line 271
    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;->prefix:Ljava/lang/String;

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

.method protected name(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 296
    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;->prefix:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lnet/bytebuddy/NamingStrategy$PrefixingRandom;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s.%s$%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
