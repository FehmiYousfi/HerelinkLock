.class public abstract Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField$ReadWrite;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField$ReadOnly;
    }
.end annotation


# instance fields
.field protected final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

.field protected final readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    .line 2051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 2053
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 2032
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2032
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

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
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

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

    .line 2032
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

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

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

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

.method public resolveRead()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    .line 2058
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    .line 2060
    :cond_0
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;->readAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
