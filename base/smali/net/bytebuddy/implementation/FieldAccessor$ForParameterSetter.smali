.class public Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;
.super Lnet/bytebuddy/implementation/FieldAccessor;
.source "FieldAccessor.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Composable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForParameterSetter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;,
        Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;
    }
.end annotation


# instance fields
.field private final index:I

.field private final terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;I)V
    .locals 6

    .line 612
    sget-object v5, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;ILnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;ILnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;)V
    .locals 0

    .line 625
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/implementation/FieldAccessor;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    .line 626
    iput p4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->index:I

    .line 627
    iput-object p5, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    return-void
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;)I
    .locals 0

    .line 591
    iget p0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->index:I

    return p0
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;)Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;
    .locals 0

    .line 591
    iget-object p0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    return-object p0
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 9

    .line 637
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    new-instance v8, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget v6, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->index:I

    sget-object v7, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;ILnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    .line 632
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;->prepare(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$Appender;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;)V

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 590
    instance-of p1, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 590
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->index:I

    iget v3, v1, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->index:I

    if-eq p1, v3, :cond_4

    return v2

    :cond_4
    iget-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    iget-object v1, v1, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    if-nez p1, :cond_5

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 590
    invoke-super {p0}, Lnet/bytebuddy/implementation/FieldAccessor;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->index:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    mul-int/2addr v0, v1

    if-nez v2, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
