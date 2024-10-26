.class public final enum Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;
.super Ljava/lang/Enum;
.source "ReferenceTypeAwareAssigner.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/assign/Assigner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    .line 12
    sget-object v2, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;
    .locals 1

    .line 12
    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;
    .locals 1

    .line 12
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    return-object v0
.end method


# virtual methods
.method public assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 21
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object p1

    .line 28
    :cond_1
    invoke-virtual {p3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->isDynamic()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 29
    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/assign/TypeCasting;->to(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1

    .line 31
    :cond_2
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    return-object p1

    .line 22
    :cond_3
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_1

    :cond_4
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    :goto_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p1
.end method
