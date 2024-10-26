.class public Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;
.super Ljava/lang/Object;
.source "FixedValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FixedValue$ForOriginType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation


# instance fields
.field private final originType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FixedValue$ForOriginType;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p2, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method private getOuter()Lnet/bytebuddy/implementation/FixedValue$ForOriginType;
    .locals 1

    .line 342
    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 6

    .line 329
    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    .line 332
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 333
    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 329
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 349
    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;

    .line 350
    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    invoke-direct {p0}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->getOuter()Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    move-result-object v2

    invoke-direct {p1}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->getOuter()Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 356
    invoke-direct {p0}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->getOuter()Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
