.class public Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;
.super Ljava/lang/Object;
.source "MethodDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureToken"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->name:Ljava/lang/String;

    .line 1688
    iput-object p2, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1689
    iput-object p3, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->parameterTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public asTypeToken()Lnet/bytebuddy/description/method/MethodDescription$TypeToken;
    .locals 3

    .line 1725
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->parameterTypes:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1731
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1732
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    .line 1733
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1734
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->parameterTypes:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->parameterTypes:Ljava/util/List;

    .line 1735
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1698
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation

    .line 1716
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->parameterTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 1707
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1740
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1741
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1742
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->parameterTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1750
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->parameterTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ","

    .line 1754
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    .line 1758
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
