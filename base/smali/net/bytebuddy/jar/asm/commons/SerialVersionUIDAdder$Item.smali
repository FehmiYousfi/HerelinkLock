.class Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final access:I

.field final desc:Ljava/lang/String;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    iput p2, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->access:I

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->compareTo(Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;)I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    iget-object v1, p1, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->compareTo(Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
