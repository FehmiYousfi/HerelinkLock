.class public abstract Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;
.super Ljava/lang/Object;
.source "EnumerationDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/enumeration/EnumerationDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/enumeration/EnumerationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_1

    .line 50
    instance-of v0, p1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 51
    invoke-interface {p1}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getActualName()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 57
    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
