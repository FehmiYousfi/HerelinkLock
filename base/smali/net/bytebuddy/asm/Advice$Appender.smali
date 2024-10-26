.class public Lnet/bytebuddy/asm/Advice$Appender;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Appender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;
    }
.end annotation


# instance fields
.field private final advice:Lnet/bytebuddy/asm/Advice;

.field private final delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V
    .locals 0

    .line 7094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7095
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    .line 7096
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 7097
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 8

    .line 7102
    new-instance v7, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-direct {v7, p1, v0}, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    .line 7103
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    move-object v3, v7

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice;->doWrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;II)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    .line 7109
    invoke-virtual {v7, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;->resolve(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 7069
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Appender;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7069
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Appender;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Appender;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Appender;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

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
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

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
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

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

    .line 7069
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

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

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

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
