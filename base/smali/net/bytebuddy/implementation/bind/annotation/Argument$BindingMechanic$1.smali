.class final enum Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic$1;
.super Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;
.source "Argument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bind/annotation/Argument$1;)V

    return-void
.end method


# virtual methods
.method protected makeBinding(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;ILnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;I)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "I",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            "I)",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
            "*>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 81
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v2

    invoke-virtual {v2, p6}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p6

    const/4 v2, 0x0

    aput-object p6, v1, v2

    .line 82
    invoke-interface {p4, p1, p2, p5}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    new-instance p1, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;

    invoke-direct {p1, p3}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;-><init>(I)V

    .line 79
    invoke-static {v0, p1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->of(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Object;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;

    move-result-object p1

    return-object p1
.end method
