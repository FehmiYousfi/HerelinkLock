.class public Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;
.super Ljava/lang/Object;
.source "FieldAccess.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfGenericField"
.end annotation


# instance fields
.field private final defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

.field private final targetType:Lnet/bytebuddy/description/type/TypeDefinition;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 147
    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;
    .locals 1

    .line 158
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 126
    instance-of p1, p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 126
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 126
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

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

    iget-object v3, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    .line 163
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    invoke-interface {v2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/assign/TypeCasting;->to(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method

.method public write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 168
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    return-object v0
.end method
