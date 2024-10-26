.class public Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;
.super Ljava/lang/Object;
.source "InvocationHandlerAdapter.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 389
    iput-object p3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-void
.end method

.method private getInvocationHandlerAdapter()Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
    .locals 1

    .line 417
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 6

    .line 394
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 397
    invoke-interface {v1}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    .line 399
    :cond_0
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    :goto_0
    move-object v4, v1

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 394
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;

    iget-object v1, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iget-object v1, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    .line 408
    invoke-direct {p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->getInvocationHandlerAdapter()Lnet/bytebuddy/implementation/InvocationHandlerAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->equals(Ljava/lang/Object;)Z

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

    .line 422
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
