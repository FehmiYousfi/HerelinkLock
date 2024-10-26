.class public Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;


# static fields
.field static synthetic class$org$objectweb$asm$commons$SerialVersionUIDAdder:Ljava/lang/Class;


# instance fields
.field private access:I

.field private computeSVUID:Z

.field private hasSVUID:Z

.field private hasStaticInitializer:Z

.field private interfaces:[Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private svuidConstructors:Ljava/util/Collection;

.field private svuidFields:Ljava/util/Collection;

.field private svuidMethods:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "net.bytebuddy.jar.asm.commons.SerialVersionUIDAdder"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->class$org$objectweb$asm$commons$SerialVersionUIDAdder:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidFields:Ljava/util/Collection;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidConstructors:Ljava/util/Collection;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->class$org$objectweb$asm$commons$SerialVersionUIDAdder:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static writeItems(Ljava/util/Collection;Ljava/io/DataOutput;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v1, v0, [Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    aget-object v2, p0, v1

    iget v2, v2, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->access:I

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    if-eqz p2, :cond_0

    aget-object v2, p0, v1

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    :goto_1
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected addSVUID(J)V
    .locals 6

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/16 v1, 0x18

    const-string v2, "serialVersionUID"

    const-string v3, "J"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method protected computeSHAdigest([B)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected computeSVUID()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->access:I

    and-int/lit16 v5, v0, 0x200

    if-eqz v5, :cond_1

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_0

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, -0x401

    :cond_1
    :goto_0
    and-int/lit16 v0, v0, 0x611

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidFields:Ljava/util/Collection;

    invoke-static {v3, v2, v0}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->writeItems(Ljava/util/Collection;Ljava/io/DataOutput;Z)V

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->hasStaticInitializer:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    const-string v0, "<clinit>"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v0, "()V"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidConstructors:Ljava/util/Collection;

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->writeItems(Ljava/util/Collection;Ljava/io/DataOutput;Z)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    invoke-static {v0, v2, v4}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->writeItems(Ljava/util/Collection;Ljava/io/DataOutput;Z)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->computeSHAdigest([B)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v4

    const-wide/16 v4, 0x0

    :goto_2
    if-ltz v1, :cond_4

    shl-long/2addr v4, v3

    aget-byte v6, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    return-wide v4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_5
    throw v0
.end method

.method public hasSVUID()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->hasSVUID:Z

    return v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    iput p2, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->access:I

    array-length v0, p6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    array-length v2, p6

    invoke-static {p6, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-super/range {p0 .. p6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitEnd()V
    .locals 4

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->hasSVUID:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->computeSVUID()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->addSVUID(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while computing SVUID for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 3

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_2

    const-string v0, "serialVersionUID"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->hasSVUID:Z

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    and-int/lit16 v0, p1, 0x88

    if-nez v0, :cond_2

    :cond_1
    and-int/lit16 v0, p1, 0xdf

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidFields:Ljava/util/Collection;

    new-instance v2, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;

    invoke-direct {v2, p2, v0, p3}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p4, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->access:I

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 3

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_2

    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->hasStaticInitializer:Z

    :cond_0
    and-int/lit16 v1, p1, 0xd3f

    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_2

    const-string v2, "<init>"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidConstructors:Ljava/util/Collection;

    new-instance v2, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;

    invoke-direct {v2, p2, v1, p3}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    new-instance v2, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;

    invoke-direct {v2, p2, v1, p3}, Lnet/bytebuddy/jar/asm/commons/SerialVersionUIDAdder$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    return-object p1
.end method
