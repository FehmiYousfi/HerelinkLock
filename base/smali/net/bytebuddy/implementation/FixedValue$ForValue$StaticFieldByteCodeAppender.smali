.class Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;
.super Ljava/lang/Object;
.source "FixedValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FixedValue$ForValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaticFieldByteCodeAppender"
.end annotation


# instance fields
.field private final fieldGetAccess:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field final synthetic this$0:Lnet/bytebuddy/implementation/FixedValue$ForValue;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/implementation/FixedValue$ForValue;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object p2

    invoke-static {p1}, Lnet/bytebuddy/implementation/FixedValue$ForValue;->access$100(Lnet/bytebuddy/implementation/FixedValue$ForValue;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;->fieldGetAccess:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/implementation/FixedValue$ForValue;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/FixedValue$1;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;-><init>(Lnet/bytebuddy/implementation/FixedValue$ForValue;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 6

    .line 674
    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForValue;

    invoke-static {v0}, Lnet/bytebuddy/implementation/FixedValue$ForValue;->access$200(Lnet/bytebuddy/implementation/FixedValue$ForValue;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;->fieldGetAccess:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/implementation/FixedValue$ForValue;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 655
    instance-of p1, p1, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 655
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;->fieldGetAccess:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;->fieldGetAccess:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

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

    .line 655
    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;->fieldGetAccess:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

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
