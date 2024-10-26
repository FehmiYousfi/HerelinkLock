.class public Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;
.super Ljava/lang/Object;
.source "FieldAccessor.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation


# instance fields
.field private final fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

.field final synthetic this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    return-void
.end method

.method private getOuter()Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;
    .locals 1

    .line 717
    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 8

    .line 701
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    invoke-static {v1}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->access$100(Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 704
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    iget-object v5, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    .line 705
    invoke-interface {v5, p3}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v5

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    invoke-static {v7}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->access$100(Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;)I

    move-result v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-virtual {v4, v5, v6}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->setter(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    .line 706
    invoke-static {v4}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->access$200(Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;)Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    move-result-object v4

    invoke-virtual {v4, p3}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 707
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p2

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v0

    .line 702
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " does not define a parameter with index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    invoke-static {p3}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->access$100(Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 723
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 724
    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;

    .line 725
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    invoke-direct {p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->getOuter()Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->equals(Ljava/lang/Object;)Z

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

    .line 730
    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
