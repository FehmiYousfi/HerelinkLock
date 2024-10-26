.class public Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;
.super Ljava/lang/Object;
.source "InvocationHandlerAdapter.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method private getInvocationHandlerAdapter()Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
    .locals 1

    .line 297
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 6

    .line 284
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 288
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    iget-object v2, v2, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->fieldName:Ljava/lang/String;

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-static {}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->access$000()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->genericFieldType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v1}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lnet/bytebuddy/description/field/FieldDescription;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 284
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;

    iget-object v1, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    .line 304
    invoke-direct {p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->getInvocationHandlerAdapter()Lnet/bytebuddy/implementation/InvocationHandlerAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 2

    .line 309
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
