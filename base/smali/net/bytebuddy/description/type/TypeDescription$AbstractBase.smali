.class public abstract Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.super Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6507
    invoke-direct {p0}, Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;-><init>()V

    return-void
.end method

.method private static isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 3

    .line 6520
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 6524
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 6525
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6526
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-class p1, Ljava/lang/Object;

    .line 6527
    invoke-interface {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/type/TypeList$Generic;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    .line 6530
    :cond_4
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6531
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 6534
    :cond_5
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6535
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 6539
    :cond_6
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6540
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 6541
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_8
    return v2
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/description/TypeVariableSource$Visitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/TypeVariableSource$Visitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 6809
    invoke-interface {p1, p0}, Lnet/bytebuddy/description/TypeVariableSource$Visitor;->onType(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asBoxed()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 6841
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6842
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6843
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6844
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6845
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6846
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Short;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6847
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6848
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Character;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6849
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6850
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6851
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6852
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6853
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6854
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6855
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6856
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_7
    return-object p0
.end method

.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    return-object p0
.end method

.method public asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 6577
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForErasure;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForErasure;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public asUnboxed()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 6864
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6865
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6866
    :cond_0
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6867
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6868
    :cond_1
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6869
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6870
    :cond_2
    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6871
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6872
    :cond_3
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6873
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6874
    :cond_4
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6875
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6876
    :cond_5
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6877
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 6878
    :cond_6
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6879
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_7
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 6892
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDefinition;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/bytebuddy/description/type/TypeDefinition;

    .line 6893
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6894
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getActualModifiers(Z)I
    .locals 3

    .line 6641
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getModifiers()I

    move-result v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    const-class v2, Ljava/lang/Deprecated;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 6644
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, -0xb

    goto :goto_1

    .line 6646
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, -0xd

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_1
    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    return v0
.end method

.method public getActualName()Ljava/lang/String;
    .locals 4

    .line 6726
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v2, p0

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 6731
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .line 6732
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6734
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v0, v1, :cond_1

    const-string v2, "[]"

    .line 6736
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6738
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6740
    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingSource()Lnet/bytebuddy/description/TypeVariableSource;
    .locals 1

    .line 6801
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6803
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/TypeVariableSource;->UNDEFINED:Lnet/bytebuddy/description/TypeVariableSource;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 8

    .line 6657
    :try_start_0
    new-instance v0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;-><init>()V

    .line 6659
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 6660
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitFormalTypeParameter(Ljava/lang/String;)V

    .line 6661
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 6662
    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6663
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    goto :goto_2

    .line 6664
    :cond_0
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    :goto_2
    invoke-direct {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    .line 6662
    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_0

    .line 6668
    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    if-nez v1, :cond_3

    .line 6671
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 6673
    :cond_3
    new-instance v5, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 6674
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v2

    .line 6675
    :goto_4
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 6676
    new-instance v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    if-nez v1, :cond_7

    .line 6677
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    move v1, v3

    goto :goto_5

    :cond_7
    :goto_6
    move v1, v2

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    .line 6680
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->NON_GENERIC_SIGNATURE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    return-object v0

    .line 6683
    :catch_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->NON_GENERIC_SIGNATURE:Ljava/lang/String;

    return-object v0
.end method

.method public getInheritedAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 5

    .line 6711
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 6712
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    .line 6716
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 6717
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 6718
    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6720
    :cond_1
    new-instance v3, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInheritedAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/annotation/AnnotationList;->inherited(Ljava/util/Set;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 3

    .line 6636
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentCount()I
    .locals 2

    .line 6830
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6833
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6836
    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getSegmentCount()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method public getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    .line 6582
    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->NON_GENERIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 6796
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 6899
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 6704
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6705
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6706
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isAnnotationReturnType()Z
    .locals 1

    .line 6770
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/lang/String;

    .line 6771
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/lang/Enum;

    .line 6772
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-class v0, Ljava/lang/annotation/Annotation;

    .line 6773
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-class v0, Ljava/lang/Class;

    .line 6774
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6775
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotationReturnType()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAnnotationValue()Z
    .locals 1

    .line 6780
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/String;

    .line 6781
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 6782
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 6783
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 6784
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6785
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotationValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAnnotationValue(Ljava/lang/Object;)Z
    .locals 6

    .line 6592
    const-class v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_15

    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 6593
    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_1
    instance-of v0, p1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 6594
    invoke-interface {v0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_2
    const-class v0, Ljava/lang/String;

    .line 6595
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_15

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 6596
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_15

    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 6597
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_15

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 6598
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_15

    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 6599
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_15

    :cond_7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 6600
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_15

    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 6601
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_15

    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 6602
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_15

    :cond_a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 6603
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_15

    :cond_b
    const-class v0, [Ljava/lang/String;

    .line 6604
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, [Ljava/lang/String;

    if-nez v0, :cond_15

    :cond_c
    const-class v0, [Z

    .line 6605
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, p1, [Z

    if-nez v0, :cond_15

    :cond_d
    const-class v0, [B

    .line 6606
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    instance-of v0, p1, [B

    if-nez v0, :cond_15

    :cond_e
    const-class v0, [S

    .line 6607
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_f

    instance-of v0, p1, [S

    if-nez v0, :cond_15

    :cond_f
    const-class v0, [C

    .line 6608
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of v0, p1, [C

    if-nez v0, :cond_15

    :cond_10
    const-class v0, [I

    .line 6609
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_11

    instance-of v0, p1, [I

    if-nez v0, :cond_15

    :cond_11
    const-class v0, [J

    .line 6610
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_12

    instance-of v0, p1, [J

    if-nez v0, :cond_15

    :cond_12
    const-class v0, [F

    .line 6611
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_13

    instance-of v0, p1, [F

    if-nez v0, :cond_15

    :cond_13
    const-class v0, [D

    .line 6612
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_14

    instance-of v0, p1, [D

    if-nez v0, :cond_15

    :cond_14
    const-class v0, [Ljava/lang/Class;

    .line 6613
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p1, [Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v0, :cond_16

    :cond_15
    return v1

    .line 6615
    :cond_16
    const-class v0, [Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    instance-of v0, p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    if-eqz v0, :cond_19

    .line 6616
    check-cast p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    check-cast p1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    array-length v0, p1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_18

    aget-object v4, p1, v3

    .line 6617
    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_18
    return v1

    .line 6622
    :cond_19
    const-class v0, [Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    instance-of v0, p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v0, :cond_1c

    .line 6623
    check-cast p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    check-cast p1, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1b

    aget-object v4, p1, v3

    .line 6624
    invoke-interface {v4}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1b
    return v1

    :cond_1c
    return v2
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 6552
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 0

    .line 6557
    invoke-static {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isAssignableTo(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 6562
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 0

    .line 6567
    invoke-static {p1, p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignable(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public isConstantPool()Z
    .locals 1

    .line 6746
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 6747
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 6748
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 6749
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/String;

    .line 6750
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Class;

    .line 6751
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    .line 6752
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 6753
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGenerified()Z
    .locals 3

    .line 6819
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 6821
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isStatic()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 6824
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6825
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isGenerified()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 0

    .line 6587
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isPackageType()Z
    .locals 2

    .line 6814
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package-info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveWrapper()Z
    .locals 1

    .line 6758
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    .line 6759
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Short;

    .line 6760
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Character;

    .line 6761
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    .line 6762
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Long;

    .line 6763
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Float;

    .line 6764
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Double;

    .line 6765
    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 6689
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6692
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 6697
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6698
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6699
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isProtected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    .line 6887
    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0
.end method

.method public represents(Ljava/lang/reflect/Type;)Z
    .locals 0

    .line 6791
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 6904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "interface"

    goto :goto_0

    :cond_1
    const-string v2, "class"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
